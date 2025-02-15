#!/usr/bin/env python3
import argparse
import datetime
import os
import re
import sys
import time
import matplotlib.pyplot as plt
from typing import Optional, Dict, List
from pathlib import Path
os.environ.setdefault("KERAS_BACKEND", "torch")  # Use PyTorch backend unless specified otherwise

import keras
import numpy as np
import torch
import torchvision.transforms.v2 as v2

from skyrmion_dataset import SKYRMION

parser = argparse.ArgumentParser()
parser.add_argument("--activation", default="relu", type=str, help="Activation type (see keras.activations.__dict__ to see all options)")
parser.add_argument("--augment", default=None, type=str, choices=["cutmix", "mixup"], nargs="+", help="Augmentation type")
parser.add_argument("--batch_size", default=16, type=int, help="Batch size.")
parser.add_argument("--bias_regularizer", default=1e-5, type=float, help="Parameter for L2 regularization of bias in convolutional kernel")
parser.add_argument("--conv_type", default="standard", type=str, choices=["standard", "ds"], help="Convolution type ('ds' stands for depthwise-separable)")
parser.add_argument("--dataloader_workers", default=0, type=int, help="Dataloader workers")
parser.add_argument("--decay", default=None, type=str, choices=["linear", "exponential", "cosine", "piecewise"], help="Decay type")
parser.add_argument("--depth", default=3, type=int, help="Model depth (use default=56 for ResNet)")
parser.add_argument("--dropout", default=0.1, type=float, help="Dropout")
parser.add_argument("--epochs", default=1, type=int, help="Number of epochs.")
parser.add_argument("--filters", default=8, type=int, help="Number of filters in the first convolutional layer")
parser.add_argument("--ffm", default=False, type=bool, help="If True, filters and feature maps will be saved. Check 'log_filters_and_features' function")
parser.add_argument("--kernel_regularizer", default=1e-4, type=float, help="Parameter for L2 regularization of convolutional kernel")
parser.add_argument("--kernel_size", default=3, type=int, help="Kernel size")
parser.add_argument("--label_smoothing", default=0., type=float, help="Label smoothing")
parser.add_argument("--learning_rate", default=0.1, type=float, help="Learning rate")
parser.add_argument("--learning_rate_final", default=0.001, type=float, help="Final learning rate")
parser.add_argument("--logdir_suffix", default="", type=str, help="Creates subdirectory 'logs_{logdir_suffix}/' in the 'logs/' directory")
parser.add_argument("--model", default="cbam", type=str, choices=["model5", "resnet", "cbam"], help="Model of choice")
parser.add_argument("--optimizer", default="SGD", type=str, choices=["SGD", "Adam"], help="Optimizer type")
parser.add_argument("--padding", default="same", type=str, choices=["same", "valid"], help="Padding in convolutional layers")
parser.add_argument("--pooling", default="max", type=str, choices=["max", "average"], help="Pooling type")
parser.add_argument("--seed", default=42, type=int, help="Random seed.")
parser.add_argument("--save_model", default=False, type=bool, help="If True, trained model will be saved in'saved_models/' directory")
parser.add_argument("--stochastic_depth", default=0., type=float, help="Stochastic depth")
parser.add_argument("--stride", default=1, type=int, help="Stride in convolutional layers")
parser.add_argument("--threads", default=1, type=int, help="Maximum number of threads to use")
parser.add_argument("--weight_decay", default=0.004, type=float, help="Weight decay")
parser.add_argument("--width", default=1, type=int, help="Model width")

class TorchTensorBoardCallback(keras.callbacks.Callback):
    def __init__(self, args:argparse.Namespace, transition_datasets: Optional[Dict[str, SKYRMION]]=None, 
                 fm_dataset: Optional[SKYRMION.Dataset]=None, device: str="cuda"):
        self.args = args
        self._writers = {}
        self._transition_datasets = transition_datasets
        self.fm_dataset = fm_dataset
        self.device = device
        self._logged_epochs = set()  # To track logged epochs

    def writer(self, writer):
        if writer not in self._writers:
            import torch.utils.tensorboard
            self._writers[writer] = torch.utils.tensorboard.SummaryWriter(Path(self.args.logdir) / writer)
        return self._writers[writer]

    def add_logs(self, writer, logs, step):
        if logs:
            for key, value in logs.items():
                self.writer(writer).add_scalar(key, value, step)
            self.writer(writer).flush()

    def evaluate_phase_transition(self, group_size: int = 5) -> Dict[str, Dict[str, float]]:
        """Evaluate how smoothly the model's predictions transition across ranks."""
        if self._transition_datasets is None:
            return None
        
        performance_metrics = {} # Storing the overall the performance results
        metric_types = ["out-of-order", "in-group-variance", "transition-smoothness"]

        model = self.model
        model.eval()
        
        for trans_type, skyrmion_trans_dataset in self._transition_datasets.items():
            performance_metrics[trans_type] = { 
                metric_type: 0.0 for metric_type in metric_types # Initialize metrics to zero
                }
            
            transition_attributes = [attr for attr in skyrmion_trans_dataset.__dict__ if "transition" in attr]
            
            for attr in transition_attributes:
                ordered_dataset = getattr(skyrmion_trans_dataset, attr)[:]
            
                images = torch.tensor(ordered_dataset["image"]).float().to(self.device)
                
                # labels are now ranks ordering images through phase transitions
                labels = np.array(ordered_dataset["label"])
                
                with torch.no_grad():
                    preds = model(images).cpu().numpy()

                ## Evaluate out-of-order metric

                if trans_type == "fe_sk":
                    ord_idx = 0 # Ascending order with increasing ferromagnet probability
                elif trans_type == "sk_sp":
                    ord_idx = 1 # Ascending order with increasing skyrmion probability
                else:
                    raise ValueError(f"Unknown phase transition type: '{trans_type}'. Transition dataset name must start with either 'fe_sk' or 'sk_sp'.")                
                
                preds_ordering = np.argsort(preds[:, ord_idx])

                # Transform preds_ordering to the target ordering format: 
                # [0, 1, 2, ..., n-1, n] -> [0, ..., 0, 1, ..., 1, m, ..., m]

                # Note that group_size = 5 corresponds to the fact that there are always 5 
                # different (but for our purpose equivalent) pictures for the 
                # simulated with same set of parameters B and D.

                preds_ordering = np.ceil((preds_ordering + 1) / group_size).astype(int) - 1

                # Using Euclidean distance as out-of-order metric for given B-value (TODO: consider some other metric??)
                ordering_metric = np.linalg.norm(preds_ordering - labels)

                # Adding out of order metrics (TODO: add it in a different manner??)
                performance_metrics[trans_type]["out-of-order"] += ordering_metric

                ## Evaluate in-group-variace metric
                # TODO: ?? the .sum() in the end is summing across 3 categories and all ranks in the same way, which might not be optimal
                preds_var = np.array([np.var(preds[preds_ordering == r], axis=0) 
                                     for r in np.unique(preds_ordering)]).sum()
                
                performance_metrics[trans_type]["in-group-variance"] += preds_var

                ## Evaluate transition-smoothness metric
                # Compute mean prediction per rank
                mean_preds = np.array([preds[preds_ordering == r].mean(axis=0) for r in np.unique(labels)])

                # Compute transition smoothness across ranks
                diffs = np.diff(mean_preds, axis=0)  # Difference between consecutive ranks
                transition_smoothness = np.mean(np.abs(diffs))  # Average absolute change

                performance_metrics[trans_type]["transition-smoothness"] += transition_smoothness

        return performance_metrics
    
    def log_filters_and_features(self, epoch):
        """Logs convolutional filters and feature maps to TensorBoard at given milestones of training."""
        if not self.model:
            return

        total_epochs = self.args.epochs
        log_milestones = {int(0.6 * total_epochs), total_epochs}
        
        if epoch not in log_milestones or epoch in self._logged_epochs:
            return  # Skip if it's not a logging epoch or already logged

        self._logged_epochs.add(epoch)

        writer = self.writer("filters_features")

        images = torch.tensor(self.fm_dataset.dataset[:]["image"]).float().unsqueeze(1).unsqueeze(-1).to(self.device)
        labels = np.array(self.fm_dataset.dataset[:]["label"])

        # Retrieve the first convolutional layer and filters
        filters = []
        conv_layers = []
        for layer in self.model.layers:
            if isinstance(layer, keras.layers.Conv2D) or isinstance(layer, keras.layers.SeparableConv2D):
                filters.append(layer.get_weights()[0])
                conv_layers.append(layer)

        num_rows = len(filters) # Same for plotting feature maps
        num_cols = min(8, filters[0].shape[-1])

        fig, axes = plt.subplots(num_rows, num_cols, figsize=(20, 5 * num_rows))
        axes = np.array(axes).ravel()
        fig.subplots_adjust(hspace=0.01, wspace=0.1)

        for i, (row, col) in enumerate(np.ndindex(num_rows, num_cols)):
            ax = axes[i]
            ax.imshow(np.mean(filters[row][..., col], axis=-1), cmap="gray")  # Averaging across channels
            ax.axis("off")

        writer.add_figure("conv_filters", fig, epoch)

        # Log feature maps
        num_cols += 1 # +1 for the original input image

        if len(filters) != len(conv_layers):
            raise ValueError(f"Unexpected mismatch: {len(filters)} filter levels vs {len(conv_layers)} layers")

        for image, label in zip(images, labels):
            fig, axes = plt.subplots(num_rows, num_cols, figsize=(20, 5 * num_rows))
            axes = np.array(axes).ravel()
            fig.subplots_adjust(hspace=0.1, wspace=0.1)
            for row, conv_layer in enumerate(conv_layers): 
                feature_extractor = keras.Model(inputs=self.model.input, outputs=conv_layer.output)
                feature_maps = feature_extractor(image).cpu().detach().numpy()[0] # Shape: (H, W, num_filters), and num filter increases
                for col in range(num_cols):
                    ax = axes[row * num_cols + col]
                    if col == 0:
                        if row == 0:
                            ax.imshow(image.squeeze(0).squeeze(-1).cpu().detach().numpy(), cmap="RdBu")
                    else:
                        ax.imshow(feature_maps[..., col - 1], cmap="RdBu") # Plotting just first 'num_col' fearure maps
                    ax.axis("off")
            writer.add_figure(f"feature_map_image_{label}", fig, epoch)

        writer.flush()

    def on_epoch_end(self, epoch, logs=None):
        if logs:
            if isinstance(getattr(self.model, "optimizer", None), keras.optimizers.Optimizer):
                logs = logs | {"learning_rate": keras.ops.convert_to_numpy(self.model.optimizer.learning_rate)}
            self.add_logs("train", {k: v for k, v in logs.items() if not k.startswith("val_")}, epoch + 1)
            self.add_logs("val", {k[4:]: v for k, v in logs.items() if k.startswith("val_")}, epoch + 1)

            # Log phase transition evaluation if applicable
            phase_transition_scores = self.evaluate_phase_transition()
            if phase_transition_scores is not None:
                for trans_type, metrics in phase_transition_scores.items():
                    for metric, score in metrics.items():
                        metric_category = Path(trans_type) / metric
                        self.writer(metric_category).add_scalar(metric, score, epoch + 1)
                        self.writer(metric_category).flush()

            if self.fm_dataset is not None and self.args.ffm:
                self.log_filters_and_features(epoch + 1)


def main(args: argparse.Namespace) -> None:
    # Get path to the project base directory ()
    try:
        base_path = Path(os.environ["SKYRMION_BASE_PATH"])
    except KeyError as e:
        raise RuntimeError(
            "Environment variable SKYRMION_BASE_PATH is not set.\n"
            "Please set it using: export SKYRMION_BASE_PATH='/path/to/data' in your .bashrc"
        ) from e

    # Check if a GPU is available
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    # device = torch.device("cpu")
    print(f"Using device: {device}")
    
    # Set the random seed and the number of threads.
    keras.utils.set_random_seed(args.seed)
    if args.threads:
        torch.set_num_threads(args.threads)
        torch.set_num_interop_threads(args.threads)

    # Create logdir name

    # Generate timestamp
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d_%H%M%S")

    # Format arguments
    # Unnecessary args to have in the args_str 
    no_log_args = ("epochs", "model", "save_model", "ffm", "logdir_suffix", "logdir")
    # Taking only the descriptive subset of non-default arguments for args string
    log_args = {arg: value for arg, value in vars(args).items() 
                        if parser.get_default(arg) != vars(args)[arg] and arg not in no_log_args}
    args_str = ",".join(
        f"{k[:3]}={'+'.join(v) if isinstance(v, list) else v}"
        for k, v in sorted(log_args.items())
    )

    # Construct the log directory path
    base_log_dir = base_path / "logs" / f"{args.model}-{args.logdir_suffix}"
    args.logdir = str(base_log_dir / f"{timestamp}-{args_str}") # Must be converted to string in order to be serializable

    # Load tran/dev/test data
    skyrmion = SKYRMION(path=(base_path / "data" / "train" / "skyrmion_dataset").with_suffix(".npz"))

    # Load data for evaluating performance in phase transition
    skyrmion_transitions = {
        trans[:5]: SKYRMION(path=(base_path / "data" / "test" / trans).with_suffix(".npz"))
        for trans in ["fe_sk_transition", "sk_sp_transition"]
    }

    # Dataset to extract feature maps in tensorboard callback
    skyrmion_fm = SKYRMION(path=(base_path / "data" / "test" / "fm_dataset").with_suffix(".npz"))

    # train/dev/test dataset creation
    def process_element(example):
        image, label = torch.from_numpy(example["image"]), torch.tensor(example["label"], dtype=torch.int64)
        return image, torch.nn.functional.one_hot(label, len(SKYRMION.LABELS))

    train = skyrmion.train.transform(process_element)
    dev = skyrmion.dev.transform(process_element)
    test = skyrmion.test.transform(process_element)

    # # Rotating an image by 90 degrees with the chance 1/2
    # def rotate90(image):
    #     if np.random.rand() < 0.5:
    #         return v2.functional.rotate(image, angle=90)
    #     else:
    #         return image

    # # Augmentations
    # augmentations = []
    # if args.augment:
    #     augmentations.append(v2.RandomHorizontalFlip())
    #     augmentations.append(rotate90)
            
    #     # augmentations.append(v2.RandomCrop((SKYRMION.H, SKYRMION.W), padding=4, fill=127))
    # # if "autoaugment" in args.augment:
    # #     augmentations.append(v2.AutoAugment(v2.AutoAugmentPolicy.SKYRMION, fill=127))
    # # if randaugment := re.search(r"randaugment-(\d+)-(\d+)", args.augment):
    # #     n, m = map(int, randaugment.groups())
    # #     augmentations.append(v2.RandAugment(n, m, fill=127))
    # # if "cutout" in args.augment:
    # #     def cutout(image):
    # #         y, x = np.random.randint(SKYRMION.H), np.random.randint(SKYRMION.W)
    # #         image = image.clone()
    # #         image[:, max(0, y - 8):y + 8, max(0, x - 8):x + 8] = 127
    # #         return image
    # #     augmentations.append(v2.Lambda(cutout))
    #     augmentations = v2.Compose(augmentations)
    #     train = train.transform(lambda image, label: (augmentations(image.permute(2, 0, 1)).permute(1, 2, 0), label))
    if args.augment:
        batch_augmentations = []
        if "cutmix" in args.augment:
            batch_augmentations.append(v2.CutMix(num_classes=len(SKYRMION.LABELS)))
        if "mixup" in args.augment:
            batch_augmentations.append(v2.Compose([v2.ToDtype(torch.float32), v2.MixUp(num_classes=len(SKYRMION.LABELS))]))
        if batch_augmentations:
            # We are creating augmented images during training instead of creating larger dataset that already contains
            # augmented images. In this way, we can artifically increase the size of our dataset by increasing number
            # of epochs, because in each epoch new data are generated. I choose to increase the dataset (or rather number
            # of epochs) by factor of 10 * number_of_different_augmentations 
            args.epochs *= 2 * len(batch_augmentations) # Changed epoch-scalling factor to 2
            batch_augmentations = v2.RandomChoice(batch_augmentations) # Randomly picks one of the augemntations
            def augmented_collate_fn(examples):
                images, labels = torch.utils.data.default_collate(examples)
                if np.random.rand() < 0.1: # Do batch augmentation in 90% of the time
                    # #########
                    # SKYRMION.visualize_images(images.squeeze(), labels, row_size=4)
                    # #########
                    return images, labels
                images, labels = batch_augmentations(images.permute(0, 3, 1, 2), torch.argmax(labels, dim=1))
                # #########
                # SKYRMION.visualize_images(images.squeeze(), labels, row_size=4)
                # #########                           
                return images.permute(0, 2, 3, 1), labels

    train = torch.utils.data.DataLoader(
        train, batch_size=args.batch_size, shuffle=True, collate_fn=augmented_collate_fn if args.augment else None,
        num_workers=args.dataloader_workers, persistent_workers=args.dataloader_workers > 0)
    dev = torch.utils.data.DataLoader(dev, batch_size=args.batch_size)
    test = torch.utils.data.DataLoader(test, batch_size=args.batch_size)

    # Decay schedule
    def get_schedule(args):
        total_steps = args.epochs * len(train) // args.batch_size
        training_batches = args.epochs * len(train)

        if args.decay is None:
            return args.learning_rate

        elif args.decay == "linear":
            return keras.optimizers.schedules.PolynomialDecay(
                initial_learning_rate=args.learning_rate,
                decay_steps=total_steps,
                end_learning_rate=args.learning_rate_final,
                power=1.0
            )

        elif args.decay == "exponential":
            rate_calculated = np.exp(np.log(args.learning_rate_final / args.learning_rate) / args.epochs)
            return keras.optimizers.schedules.ExponentialDecay(
                initial_learning_rate=args.learning_rate,
                decay_steps=len(train) / args.batch_size,
                decay_rate=rate_calculated,
                staircase=False
            )

        elif args.decay == "cosine":
            return keras.optimizers.schedules.CosineDecay(args.learning_rate, training_batches)
            # return keras.optimizers.schedules.CosineDecay(
            #     initial_learning_rate=args.learning_rate,
            #     decay_steps=total_steps,
            #     alpha=args.learning_rate_final / args.learning_rate
            # )

        elif args.decay == "piecewise":
            return keras.optimizers.schedules.PiecewiseConstantDecay(
                [int(0.5 * training_batches), int(0.75 * training_batches)],
                [args.learning_rate, args.learning_rate / 10, args.learning_rate / 100])

        else:
            raise ValueError("Uknown decay '{}'".format(args.decay))
        
    # Optimizer
    if args.optimizer == "SGD":
        optimizer = keras.optimizers.SGD(learning_rate=get_schedule(args), weight_decay=args.weight_decay, momentum=0.9, nesterov=True)
    elif args.optimizer.startswith("Adam"):
        # beta2, epsilon = map(float, args.optimizer.split(":")[1:]) # Let's use default values
        optimizer = keras.optimizers.AdamW(learning_rate=get_schedule(args), weight_decay=args.weight_decay, clipnorm=1.0)#, beta_2=beta2, epsilon=epsilon)
    else:
        raise ValueError("Uknown optimizer '{}'".format(args.optimizer))
    optimizer.exclude_from_weight_decay(var_names=["bias"])

    # Model
    if args.model == "model5":
        from models import Model5
        model = Model5(args)
    elif args.model == "resnet":
        from models import ResNet
        model = ResNet(args)
    elif args.model == "cbam":
        from models import ModelCBAM
        model = ModelCBAM(args)
    else:
        raise ValueError("Uknown model '{}'".format(args.model))
    
    model.summary()
    model = model.to(device)
    model.compile(
        optimizer=optimizer,
        loss=keras.losses.CategoricalCrossentropy(label_smoothing=args.label_smoothing),
        metrics=[keras.metrics.CategoricalAccuracy("accuracy")],
    )

    tb_callback = TorchTensorBoardCallback(args, transition_datasets=skyrmion_transitions, fm_dataset=skyrmion_fm)

    model.fit(train, epochs=args.epochs, validation_data=dev, callbacks=[tb_callback])

    if args.save_model:
        model.save((base_path / "saved_models" / f"{args.model}-{timestamp}-{args_str}").with_suffix(".keras"))

    if skyrmion.test.__len__() > 0:
        with open(args.logdir / "skyrmion_test.txt", "w", encoding="utf-8") as predictions_file:
            for probs in model.predict(skyrmion.test.data["images"], batch_size=args.batch_size):
                print(np.argmax(probs), file=predictions_file)
    else:
        print(f"No test data provided. File 'skyrmion_test.txt' won't be created.") 

if __name__ == "__main__":
    args = parser.parse_args([] if "__file__" not in globals() else None)
    main(args)