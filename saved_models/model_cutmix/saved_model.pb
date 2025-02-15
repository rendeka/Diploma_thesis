��'
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
;
Elu
features"T
activations"T"
Ttype:
2
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8�� 
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/v/dense_5/kernel
�
)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/m/dense_5/kernel
�
)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes
:	�*
dtype0
�
"Adam/v/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_17/beta
�
6Adam/v/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_17/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_17/beta
�
6Adam/m/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_17/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_17/gamma
�
7Adam/v/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_17/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_17/gamma
�
7Adam/m/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_17/gamma*
_output_shapes	
:�*
dtype0

Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/v/dense_4/bias
x
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes	
:�*
dtype0

Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/m/dense_4/bias
x
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*�*&
shared_nameAdam/v/dense_4/kernel
�
)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel* 
_output_shapes
:
�*�*
dtype0
�
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*�*&
shared_nameAdam/m/dense_4/kernel
�
)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel* 
_output_shapes
:
�*�*
dtype0
�
"Adam/v/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_16/beta
�
6Adam/v/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_16/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_16/beta
�
6Adam/m/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_16/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_16/gamma
�
7Adam/v/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_16/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_16/gamma
�
7Adam/m/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_16/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_14/bias
{
)Adam/v/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_14/bias
{
)Adam/m/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/v/conv2d_14/kernel
�
+Adam/v/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/kernel*&
_output_shapes
:@ *
dtype0
�
Adam/m/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/m/conv2d_14/kernel
�
+Adam/m/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/kernel*&
_output_shapes
:@ *
dtype0
�
"Adam/v/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_15/beta
�
6Adam/v/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_15/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_15/beta
�
6Adam/m/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_15/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_15/gamma
�
7Adam/v/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_15/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_15/gamma
�
7Adam/m/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_15/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_13/bias
{
)Adam/v/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_13/bias
{
)Adam/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_13/kernel
�
+Adam/v/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_13/kernel
�
+Adam/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
�
"Adam/v/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_14/beta
�
6Adam/v/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_14/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_14/beta
�
6Adam/m/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_14/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_14/gamma
�
7Adam/v/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_14/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_14/gamma
�
7Adam/m/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_14/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/conv2d_12/kernel
�
+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/conv2d_12/kernel
�
+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
: *
dtype0
�
"Adam/v/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_13/beta
�
6Adam/v/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_13/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_13/beta
�
6Adam/m/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_13/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_13/gamma
�
7Adam/v/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_13/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_13/gamma
�
7Adam/m/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_13/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_11/kernel
�
+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_11/kernel
�
+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_12/beta
�
6Adam/v/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_12/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_12/beta
�
6Adam/m/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_12/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_12/gamma
�
7Adam/v/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_12/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_12/gamma
�
7Adam/m/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_12/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_10/kernel
�
+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_10/kernel
�
+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	�*
dtype0
�
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_17/moving_variance
�
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_17/moving_mean
�
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_17/beta
�
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_17/gamma
�
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:�*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:�*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*�*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
�*�*
dtype0
�
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_16/moving_variance
�
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_16/moving_mean
�
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_16/beta
�
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
: *
dtype0
�
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_16/gamma
�
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
: *
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
: *
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@ *
dtype0
�
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_15/moving_variance
�
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_15/moving_mean
�
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_15/beta
�
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_15/gamma
�
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:@*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
�
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: @*
dtype0
�
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_14/moving_variance
�
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_14/moving_mean
�
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_14/beta
�
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
: *
dtype0
�
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_14/gamma
�
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
: *
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: *
dtype0
�
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_13/moving_variance
�
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_13/moving_mean
�
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_13/beta
�
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:*
dtype0
�
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_13/gamma
�
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:*
dtype0
�
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_12/moving_variance
�
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_12/moving_mean
�
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_12/beta
�
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:*
dtype0
�
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_12/gamma
�
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0
�
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
�
serving_default_configPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_configconv2d_10/kernelconv2d_10/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_4/kerneldense_4/bias&batch_normalization_17/moving_variancebatch_normalization_17/gamma"batch_normalization_17/moving_meanbatch_normalization_17/betadense_5/kerneldense_5/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_559657

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer-24
layer_with_weights-10
layer-25
layer_with_weights-11
layer-26
layer-27
layer-28
layer_with_weights-12
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures*
* 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance*
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_random_generator* 
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
.0
/1
82
93
:4
;5
U6
V7
_8
`9
a10
b11
|12
}13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37*
�
.0
/1
82
93
U4
V5
_6
`7
|8
}9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25*
v
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

.0
/1*

.0
/1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
80
91
:2
;3*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

U0
V1*

U0
V1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
_0
`1
a2
b3*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

|0
}1*

|0
}1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_17/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_17/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_17/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_17/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
b
:0
;1
a2
b3
�4
�5
�6
�7
�8
�9
�10
�11*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

:0
;1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

a0
b1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_10/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_10/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_10/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_10/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_12/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_12/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_12/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_12/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_11/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_11/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_11/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_11/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_13/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_13/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_13/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_13/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_12/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_12/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_12/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_12/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_14/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_14/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_14/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_14/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_13/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_13/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_13/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_13/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_15/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_15/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_15/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_15/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_14/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_14/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_14/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_14/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_16/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_16/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_16/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_16/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_4/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_17/gamma2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_17/gamma2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_17/beta2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_17/beta2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_5/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_5/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_5/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_4/kerneldense_4/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancedense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountConst*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_561373
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_12/kernelconv2d_12/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_4/kerneldense_4/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancedense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcount*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_561670��
�
k
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_559952

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558385

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�

g
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_560635

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_4_560703U
;conv2d_12_kernel_regularizer_l2loss_readvariableop_resource: 
identity��2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp�
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;conv2d_12_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0�
#conv2d_12/kernel/Regularizer/L2LossL2Loss:conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0,conv2d_12/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_12/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_558907

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
#conv2d_14/kernel/Regularizer/L2LossL2Loss:conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0,conv2d_14/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_14/bias/Regularizer/L2LossL2Loss8conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_14/bias/Regularizer/mulMul)conv2d_14/bias/Regularizer/mul/x:output:0*conv2d_14/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_9_560743G
9conv2d_14_bias_regularizer_l2loss_readvariableop_resource: 
identity��0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp�
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp9conv2d_14_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_14/bias/Regularizer/L2LossL2Loss8conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_14/bias/Regularizer/mulMul)conv2d_14/bias/Regularizer/mul/x:output:0*conv2d_14/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"conv2d_14/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560480

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_560663

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense_5/bias/Regularizer/L2Loss/ReadVariableOp�0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_5/kernel/Regularizer/L2LossL2Loss8dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0*dense_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/bias/Regularizer/L2LossL2Loss6dense_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0(dense_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_5/bias/Regularizer/L2Loss/ReadVariableOp1^dense_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/L2Loss/ReadVariableOp.dense_5/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_15_layer_call_fn_560307

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558457�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560303:&"
 
_user_specified_name560301:&"
 
_user_specified_name560299:&"
 
_user_specified_name560297:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_558488

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_560226

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
q
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_560117

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������22`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������22i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������22"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560608

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
k
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_560089

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�&
!__inference__wrapped_model_558205

configJ
0model_2_conv2d_10_conv2d_readvariableop_resource:?
1model_2_conv2d_10_biasadd_readvariableop_resource:D
6model_2_batch_normalization_12_readvariableop_resource:F
8model_2_batch_normalization_12_readvariableop_1_resource:U
Gmodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:W
Imodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:J
0model_2_conv2d_11_conv2d_readvariableop_resource:?
1model_2_conv2d_11_biasadd_readvariableop_resource:D
6model_2_batch_normalization_13_readvariableop_resource:F
8model_2_batch_normalization_13_readvariableop_1_resource:U
Gmodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:W
Imodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:J
0model_2_conv2d_12_conv2d_readvariableop_resource: ?
1model_2_conv2d_12_biasadd_readvariableop_resource: D
6model_2_batch_normalization_14_readvariableop_resource: F
8model_2_batch_normalization_14_readvariableop_1_resource: U
Gmodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource: W
Imodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource: J
0model_2_conv2d_13_conv2d_readvariableop_resource: @?
1model_2_conv2d_13_biasadd_readvariableop_resource:@D
6model_2_batch_normalization_15_readvariableop_resource:@F
8model_2_batch_normalization_15_readvariableop_1_resource:@U
Gmodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@W
Imodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@J
0model_2_conv2d_14_conv2d_readvariableop_resource:@ ?
1model_2_conv2d_14_biasadd_readvariableop_resource: D
6model_2_batch_normalization_16_readvariableop_resource: F
8model_2_batch_normalization_16_readvariableop_1_resource: U
Gmodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource: W
Imodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource: B
.model_2_dense_4_matmul_readvariableop_resource:
�*�>
/model_2_dense_4_biasadd_readvariableop_resource:	�O
@model_2_batch_normalization_17_batchnorm_readvariableop_resource:	�S
Dmodel_2_batch_normalization_17_batchnorm_mul_readvariableop_resource:	�Q
Bmodel_2_batch_normalization_17_batchnorm_readvariableop_1_resource:	�Q
Bmodel_2_batch_normalization_17_batchnorm_readvariableop_2_resource:	�A
.model_2_dense_5_matmul_readvariableop_resource:	�=
/model_2_dense_5_biasadd_readvariableop_resource:
identity��>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�-model_2/batch_normalization_12/ReadVariableOp�/model_2/batch_normalization_12/ReadVariableOp_1�>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�-model_2/batch_normalization_13/ReadVariableOp�/model_2/batch_normalization_13/ReadVariableOp_1�>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp�@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�-model_2/batch_normalization_14/ReadVariableOp�/model_2/batch_normalization_14/ReadVariableOp_1�>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp�@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�-model_2/batch_normalization_15/ReadVariableOp�/model_2/batch_normalization_15/ReadVariableOp_1�>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp�@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�-model_2/batch_normalization_16/ReadVariableOp�/model_2/batch_normalization_16/ReadVariableOp_1�7model_2/batch_normalization_17/batchnorm/ReadVariableOp�9model_2/batch_normalization_17/batchnorm/ReadVariableOp_1�9model_2/batch_normalization_17/batchnorm/ReadVariableOp_2�;model_2/batch_normalization_17/batchnorm/mul/ReadVariableOp�(model_2/conv2d_10/BiasAdd/ReadVariableOp�'model_2/conv2d_10/Conv2D/ReadVariableOp�(model_2/conv2d_11/BiasAdd/ReadVariableOp�'model_2/conv2d_11/Conv2D/ReadVariableOp�(model_2/conv2d_12/BiasAdd/ReadVariableOp�'model_2/conv2d_12/Conv2D/ReadVariableOp�(model_2/conv2d_13/BiasAdd/ReadVariableOp�'model_2/conv2d_13/Conv2D/ReadVariableOp�(model_2/conv2d_14/BiasAdd/ReadVariableOp�'model_2/conv2d_14/Conv2D/ReadVariableOp�&model_2/dense_4/BiasAdd/ReadVariableOp�%model_2/dense_4/MatMul/ReadVariableOp�&model_2/dense_5/BiasAdd/ReadVariableOp�%model_2/dense_5/MatMul/ReadVariableOp�
'model_2/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/conv2d_10/Conv2DConv2Dconfig/model_2/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_2/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv2d_10/BiasAddBiasAdd!model_2/conv2d_10/Conv2D:output:00model_2/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
-model_2/batch_normalization_12/ReadVariableOpReadVariableOp6model_2_batch_normalization_12_readvariableop_resource*
_output_shapes
:*
dtype0�
/model_2/batch_normalization_12/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:*
dtype0�
>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_2/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_10/BiasAdd:output:05model_2/batch_normalization_12/ReadVariableOp:value:07model_2/batch_normalization_12/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
model_2/activation_12/SeluSelu3model_2/batch_normalization_12/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
#model_2/average_pooling2d_8/AvgPoolAvgPool(model_2/activation_12/Selu:activations:0*
T0*/
_output_shapes
:���������dd*
ksize
*
paddingSAME*
strides
�
$model_2/mc_spatial_dropout2d_8/ShapeShape,model_2/average_pooling2d_8/AvgPool:output:0*
T0*
_output_shapes
::��|
2model_2/mc_spatial_dropout2d_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_2/mc_spatial_dropout2d_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_2/mc_spatial_dropout2d_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,model_2/mc_spatial_dropout2d_8/strided_sliceStridedSlice-model_2/mc_spatial_dropout2d_8/Shape:output:0;model_2/mc_spatial_dropout2d_8/strided_slice/stack:output:0=model_2/mc_spatial_dropout2d_8/strided_slice/stack_1:output:0=model_2/mc_spatial_dropout2d_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model_2/mc_spatial_dropout2d_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6model_2/mc_spatial_dropout2d_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/mc_spatial_dropout2d_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.model_2/mc_spatial_dropout2d_8/strided_slice_1StridedSlice-model_2/mc_spatial_dropout2d_8/Shape:output:0=model_2/mc_spatial_dropout2d_8/strided_slice_1/stack:output:0?model_2/mc_spatial_dropout2d_8/strided_slice_1/stack_1:output:0?model_2/mc_spatial_dropout2d_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
,model_2/mc_spatial_dropout2d_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
*model_2/mc_spatial_dropout2d_8/dropout/MulMul,model_2/average_pooling2d_8/AvgPool:output:05model_2/mc_spatial_dropout2d_8/dropout/Const:output:0*
T0*/
_output_shapes
:���������dd
=model_2/mc_spatial_dropout2d_8/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
=model_2/mc_spatial_dropout2d_8/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
;model_2/mc_spatial_dropout2d_8/dropout/random_uniform/shapePack5model_2/mc_spatial_dropout2d_8/strided_slice:output:0Fmodel_2/mc_spatial_dropout2d_8/dropout/random_uniform/shape/1:output:0Fmodel_2/mc_spatial_dropout2d_8/dropout/random_uniform/shape/2:output:07model_2/mc_spatial_dropout2d_8/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
Cmodel_2/mc_spatial_dropout2d_8/dropout/random_uniform/RandomUniformRandomUniformDmodel_2/mc_spatial_dropout2d_8/dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0z
5model_2/mc_spatial_dropout2d_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
3model_2/mc_spatial_dropout2d_8/dropout/GreaterEqualGreaterEqualLmodel_2/mc_spatial_dropout2d_8/dropout/random_uniform/RandomUniform:output:0>model_2/mc_spatial_dropout2d_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������s
.model_2/mc_spatial_dropout2d_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
/model_2/mc_spatial_dropout2d_8/dropout/SelectV2SelectV27model_2/mc_spatial_dropout2d_8/dropout/GreaterEqual:z:0.model_2/mc_spatial_dropout2d_8/dropout/Mul:z:07model_2/mc_spatial_dropout2d_8/dropout/Const_1:output:0*
T0*/
_output_shapes
:���������dd�
'model_2/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/conv2d_11/Conv2DConv2D8model_2/mc_spatial_dropout2d_8/dropout/SelectV2:output:0/model_2/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd*
paddingSAME*
strides
�
(model_2/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv2d_11/BiasAddBiasAdd!model_2/conv2d_11/Conv2D:output:00model_2/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd�
-model_2/batch_normalization_13/ReadVariableOpReadVariableOp6model_2_batch_normalization_13_readvariableop_resource*
_output_shapes
:*
dtype0�
/model_2/batch_normalization_13/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_13_readvariableop_1_resource*
_output_shapes
:*
dtype0�
>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_2/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_11/BiasAdd:output:05model_2/batch_normalization_13/ReadVariableOp:value:07model_2/batch_normalization_13/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������dd:::::*
epsilon%o�:*
is_training( �
model_2/activation_13/SeluSelu3model_2/batch_normalization_13/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������dd�
#model_2/average_pooling2d_9/AvgPoolAvgPool(model_2/activation_13/Selu:activations:0*
T0*/
_output_shapes
:���������22*
ksize
*
paddingSAME*
strides
�
$model_2/mc_spatial_dropout2d_9/ShapeShape,model_2/average_pooling2d_9/AvgPool:output:0*
T0*
_output_shapes
::��|
2model_2/mc_spatial_dropout2d_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_2/mc_spatial_dropout2d_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_2/mc_spatial_dropout2d_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,model_2/mc_spatial_dropout2d_9/strided_sliceStridedSlice-model_2/mc_spatial_dropout2d_9/Shape:output:0;model_2/mc_spatial_dropout2d_9/strided_slice/stack:output:0=model_2/mc_spatial_dropout2d_9/strided_slice/stack_1:output:0=model_2/mc_spatial_dropout2d_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model_2/mc_spatial_dropout2d_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6model_2/mc_spatial_dropout2d_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/mc_spatial_dropout2d_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.model_2/mc_spatial_dropout2d_9/strided_slice_1StridedSlice-model_2/mc_spatial_dropout2d_9/Shape:output:0=model_2/mc_spatial_dropout2d_9/strided_slice_1/stack:output:0?model_2/mc_spatial_dropout2d_9/strided_slice_1/stack_1:output:0?model_2/mc_spatial_dropout2d_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
,model_2/mc_spatial_dropout2d_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*model_2/mc_spatial_dropout2d_9/dropout/MulMul,model_2/average_pooling2d_9/AvgPool:output:05model_2/mc_spatial_dropout2d_9/dropout/Const:output:0*
T0*/
_output_shapes
:���������22
=model_2/mc_spatial_dropout2d_9/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
=model_2/mc_spatial_dropout2d_9/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
;model_2/mc_spatial_dropout2d_9/dropout/random_uniform/shapePack5model_2/mc_spatial_dropout2d_9/strided_slice:output:0Fmodel_2/mc_spatial_dropout2d_9/dropout/random_uniform/shape/1:output:0Fmodel_2/mc_spatial_dropout2d_9/dropout/random_uniform/shape/2:output:07model_2/mc_spatial_dropout2d_9/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
Cmodel_2/mc_spatial_dropout2d_9/dropout/random_uniform/RandomUniformRandomUniformDmodel_2/mc_spatial_dropout2d_9/dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0z
5model_2/mc_spatial_dropout2d_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
3model_2/mc_spatial_dropout2d_9/dropout/GreaterEqualGreaterEqualLmodel_2/mc_spatial_dropout2d_9/dropout/random_uniform/RandomUniform:output:0>model_2/mc_spatial_dropout2d_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������s
.model_2/mc_spatial_dropout2d_9/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
/model_2/mc_spatial_dropout2d_9/dropout/SelectV2SelectV27model_2/mc_spatial_dropout2d_9/dropout/GreaterEqual:z:0.model_2/mc_spatial_dropout2d_9/dropout/Mul:z:07model_2/mc_spatial_dropout2d_9/dropout/Const_1:output:0*
T0*/
_output_shapes
:���������22�
'model_2/conv2d_12/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_2/conv2d_12/Conv2DConv2D8model_2/mc_spatial_dropout2d_9/dropout/SelectV2:output:0/model_2/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 *
paddingSAME*
strides
�
(model_2/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_2/conv2d_12/BiasAddBiasAdd!model_2/conv2d_12/Conv2D:output:00model_2/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 �
-model_2/batch_normalization_14/ReadVariableOpReadVariableOp6model_2_batch_normalization_14_readvariableop_resource*
_output_shapes
: *
dtype0�
/model_2/batch_normalization_14/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_14_readvariableop_1_resource*
_output_shapes
: *
dtype0�
>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
/model_2/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_12/BiasAdd:output:05model_2/batch_normalization_14/ReadVariableOp:value:07model_2/batch_normalization_14/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������22 : : : : :*
epsilon%o�:*
is_training( �
model_2/activation_14/SeluSelu3model_2/batch_normalization_14/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������22 �
$model_2/average_pooling2d_10/AvgPoolAvgPool(model_2/activation_14/Selu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingSAME*
strides
�
%model_2/mc_spatial_dropout2d_10/ShapeShape-model_2/average_pooling2d_10/AvgPool:output:0*
T0*
_output_shapes
::��}
3model_2/mc_spatial_dropout2d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5model_2/mc_spatial_dropout2d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_2/mc_spatial_dropout2d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-model_2/mc_spatial_dropout2d_10/strided_sliceStridedSlice.model_2/mc_spatial_dropout2d_10/Shape:output:0<model_2/mc_spatial_dropout2d_10/strided_slice/stack:output:0>model_2/mc_spatial_dropout2d_10/strided_slice/stack_1:output:0>model_2/mc_spatial_dropout2d_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5model_2/mc_spatial_dropout2d_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7model_2/mc_spatial_dropout2d_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7model_2/mc_spatial_dropout2d_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/model_2/mc_spatial_dropout2d_10/strided_slice_1StridedSlice.model_2/mc_spatial_dropout2d_10/Shape:output:0>model_2/mc_spatial_dropout2d_10/strided_slice_1/stack:output:0@model_2/mc_spatial_dropout2d_10/strided_slice_1/stack_1:output:0@model_2/mc_spatial_dropout2d_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-model_2/mc_spatial_dropout2d_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
+model_2/mc_spatial_dropout2d_10/dropout/MulMul-model_2/average_pooling2d_10/AvgPool:output:06model_2/mc_spatial_dropout2d_10/dropout/Const:output:0*
T0*/
_output_shapes
:��������� �
>model_2/mc_spatial_dropout2d_10/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
>model_2/mc_spatial_dropout2d_10/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
<model_2/mc_spatial_dropout2d_10/dropout/random_uniform/shapePack6model_2/mc_spatial_dropout2d_10/strided_slice:output:0Gmodel_2/mc_spatial_dropout2d_10/dropout/random_uniform/shape/1:output:0Gmodel_2/mc_spatial_dropout2d_10/dropout/random_uniform/shape/2:output:08model_2/mc_spatial_dropout2d_10/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
Dmodel_2/mc_spatial_dropout2d_10/dropout/random_uniform/RandomUniformRandomUniformEmodel_2/mc_spatial_dropout2d_10/dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0{
6model_2/mc_spatial_dropout2d_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
4model_2/mc_spatial_dropout2d_10/dropout/GreaterEqualGreaterEqualMmodel_2/mc_spatial_dropout2d_10/dropout/random_uniform/RandomUniform:output:0?model_2/mc_spatial_dropout2d_10/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� t
/model_2/mc_spatial_dropout2d_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
0model_2/mc_spatial_dropout2d_10/dropout/SelectV2SelectV28model_2/mc_spatial_dropout2d_10/dropout/GreaterEqual:z:0/model_2/mc_spatial_dropout2d_10/dropout/Mul:z:08model_2/mc_spatial_dropout2d_10/dropout/Const_1:output:0*
T0*/
_output_shapes
:��������� �
'model_2/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_2/conv2d_13/Conv2DConv2D9model_2/mc_spatial_dropout2d_10/dropout/SelectV2:output:0/model_2/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
(model_2/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_13/BiasAddBiasAdd!model_2/conv2d_13/Conv2D:output:00model_2/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
-model_2/batch_normalization_15/ReadVariableOpReadVariableOp6model_2_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model_2/batch_normalization_15/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
/model_2/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_13/BiasAdd:output:05model_2/batch_normalization_15/ReadVariableOp:value:07model_2/batch_normalization_15/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_2/activation_15/SeluSelu3model_2/batch_normalization_15/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
$model_2/average_pooling2d_11/AvgPoolAvgPool(model_2/activation_15/Selu:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingSAME*
strides
�
%model_2/mc_spatial_dropout2d_11/ShapeShape-model_2/average_pooling2d_11/AvgPool:output:0*
T0*
_output_shapes
::��}
3model_2/mc_spatial_dropout2d_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5model_2/mc_spatial_dropout2d_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_2/mc_spatial_dropout2d_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-model_2/mc_spatial_dropout2d_11/strided_sliceStridedSlice.model_2/mc_spatial_dropout2d_11/Shape:output:0<model_2/mc_spatial_dropout2d_11/strided_slice/stack:output:0>model_2/mc_spatial_dropout2d_11/strided_slice/stack_1:output:0>model_2/mc_spatial_dropout2d_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5model_2/mc_spatial_dropout2d_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
7model_2/mc_spatial_dropout2d_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7model_2/mc_spatial_dropout2d_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/model_2/mc_spatial_dropout2d_11/strided_slice_1StridedSlice.model_2/mc_spatial_dropout2d_11/Shape:output:0>model_2/mc_spatial_dropout2d_11/strided_slice_1/stack:output:0@model_2/mc_spatial_dropout2d_11/strided_slice_1/stack_1:output:0@model_2/mc_spatial_dropout2d_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-model_2/mc_spatial_dropout2d_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
+model_2/mc_spatial_dropout2d_11/dropout/MulMul-model_2/average_pooling2d_11/AvgPool:output:06model_2/mc_spatial_dropout2d_11/dropout/Const:output:0*
T0*/
_output_shapes
:���������@�
>model_2/mc_spatial_dropout2d_11/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
>model_2/mc_spatial_dropout2d_11/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
<model_2/mc_spatial_dropout2d_11/dropout/random_uniform/shapePack6model_2/mc_spatial_dropout2d_11/strided_slice:output:0Gmodel_2/mc_spatial_dropout2d_11/dropout/random_uniform/shape/1:output:0Gmodel_2/mc_spatial_dropout2d_11/dropout/random_uniform/shape/2:output:08model_2/mc_spatial_dropout2d_11/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
Dmodel_2/mc_spatial_dropout2d_11/dropout/random_uniform/RandomUniformRandomUniformEmodel_2/mc_spatial_dropout2d_11/dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0{
6model_2/mc_spatial_dropout2d_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
4model_2/mc_spatial_dropout2d_11/dropout/GreaterEqualGreaterEqualMmodel_2/mc_spatial_dropout2d_11/dropout/random_uniform/RandomUniform:output:0?model_2/mc_spatial_dropout2d_11/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@t
/model_2/mc_spatial_dropout2d_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
0model_2/mc_spatial_dropout2d_11/dropout/SelectV2SelectV28model_2/mc_spatial_dropout2d_11/dropout/GreaterEqual:z:0/model_2/mc_spatial_dropout2d_11/dropout/Mul:z:08model_2/mc_spatial_dropout2d_11/dropout/Const_1:output:0*
T0*/
_output_shapes
:���������@�
'model_2/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
model_2/conv2d_14/Conv2DConv2D9model_2/mc_spatial_dropout2d_11/dropout/SelectV2:output:0/model_2/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
(model_2/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_2/conv2d_14/BiasAddBiasAdd!model_2/conv2d_14/Conv2D:output:00model_2/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
-model_2/batch_normalization_16/ReadVariableOpReadVariableOp6model_2_batch_normalization_16_readvariableop_resource*
_output_shapes
: *
dtype0�
/model_2/batch_normalization_16/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_16_readvariableop_1_resource*
_output_shapes
: *
dtype0�
>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
/model_2/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_14/BiasAdd:output:05model_2/batch_normalization_16/ReadVariableOp:value:07model_2/batch_normalization_16/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
model_2/activation_16/SeluSelu3model_2/batch_normalization_16/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� h
model_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/flatten_2/ReshapeReshape(model_2/activation_16/Selu:activations:0 model_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:����������*�
%model_2/dense_4/MatMul/ReadVariableOpReadVariableOp.model_2_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0�
model_2/dense_4/MatMulMatMul"model_2/flatten_2/Reshape:output:0-model_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_2/dense_4/BiasAddBiasAdd model_2/dense_4/MatMul:product:0.model_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7model_2/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp@model_2_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0s
.model_2/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
,model_2/batch_normalization_17/batchnorm/addAddV2?model_2/batch_normalization_17/batchnorm/ReadVariableOp:value:07model_2/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
.model_2/batch_normalization_17/batchnorm/RsqrtRsqrt0model_2/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:��
;model_2/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model_2/batch_normalization_17/batchnorm/mulMul2model_2/batch_normalization_17/batchnorm/Rsqrt:y:0Cmodel_2/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
.model_2/batch_normalization_17/batchnorm/mul_1Mul model_2/dense_4/BiasAdd:output:00model_2/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
9model_2/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_2_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
.model_2/batch_normalization_17/batchnorm/mul_2MulAmodel_2/batch_normalization_17/batchnorm/ReadVariableOp_1:value:00model_2/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
9model_2/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_2_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
,model_2/batch_normalization_17/batchnorm/subSubAmodel_2/batch_normalization_17/batchnorm/ReadVariableOp_2:value:02model_2/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
.model_2/batch_normalization_17/batchnorm/add_1AddV22model_2/batch_normalization_17/batchnorm/mul_1:z:00model_2/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
model_2/activation_17/EluElu2model_2/batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:����������g
"model_2/mc_dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 model_2/mc_dropout_2/dropout/MulMul'model_2/activation_17/Elu:activations:0+model_2/mc_dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:�����������
"model_2/mc_dropout_2/dropout/ShapeShape'model_2/activation_17/Elu:activations:0*
T0*
_output_shapes
::���
9model_2/mc_dropout_2/dropout/random_uniform/RandomUniformRandomUniform+model_2/mc_dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0p
+model_2/mc_dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
)model_2/mc_dropout_2/dropout/GreaterEqualGreaterEqualBmodel_2/mc_dropout_2/dropout/random_uniform/RandomUniform:output:04model_2/mc_dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������i
$model_2/mc_dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
%model_2/mc_dropout_2/dropout/SelectV2SelectV2-model_2/mc_dropout_2/dropout/GreaterEqual:z:0$model_2/mc_dropout_2/dropout/Mul:z:0-model_2/mc_dropout_2/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
%model_2/dense_5/MatMul/ReadVariableOpReadVariableOp.model_2_dense_5_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_2/dense_5/MatMulMatMul.model_2/mc_dropout_2/dropout/SelectV2:output:0-model_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/dense_5/BiasAddBiasAdd model_2/dense_5/MatMul:product:0.model_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_2/dense_5/SoftmaxSoftmax model_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!model_2/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp?^model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_12/ReadVariableOp0^model_2/batch_normalization_12/ReadVariableOp_1?^model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_13/ReadVariableOp0^model_2/batch_normalization_13/ReadVariableOp_1?^model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_14/ReadVariableOp0^model_2/batch_normalization_14/ReadVariableOp_1?^model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_15/ReadVariableOp0^model_2/batch_normalization_15/ReadVariableOp_1?^model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_16/ReadVariableOp0^model_2/batch_normalization_16/ReadVariableOp_18^model_2/batch_normalization_17/batchnorm/ReadVariableOp:^model_2/batch_normalization_17/batchnorm/ReadVariableOp_1:^model_2/batch_normalization_17/batchnorm/ReadVariableOp_2<^model_2/batch_normalization_17/batchnorm/mul/ReadVariableOp)^model_2/conv2d_10/BiasAdd/ReadVariableOp(^model_2/conv2d_10/Conv2D/ReadVariableOp)^model_2/conv2d_11/BiasAdd/ReadVariableOp(^model_2/conv2d_11/Conv2D/ReadVariableOp)^model_2/conv2d_12/BiasAdd/ReadVariableOp(^model_2/conv2d_12/Conv2D/ReadVariableOp)^model_2/conv2d_13/BiasAdd/ReadVariableOp(^model_2/conv2d_13/Conv2D/ReadVariableOp)^model_2/conv2d_14/BiasAdd/ReadVariableOp(^model_2/conv2d_14/Conv2D/ReadVariableOp'^model_2/dense_4/BiasAdd/ReadVariableOp&^model_2/dense_4/MatMul/ReadVariableOp'^model_2/dense_5/BiasAdd/ReadVariableOp&^model_2/dense_5/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12�
>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2b
/model_2/batch_normalization_12/ReadVariableOp_1/model_2/batch_normalization_12/ReadVariableOp_12^
-model_2/batch_normalization_12/ReadVariableOp-model_2/batch_normalization_12/ReadVariableOp2�
@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2b
/model_2/batch_normalization_13/ReadVariableOp_1/model_2/batch_normalization_13/ReadVariableOp_12^
-model_2/batch_normalization_13/ReadVariableOp-model_2/batch_normalization_13/ReadVariableOp2�
@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12�
>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2b
/model_2/batch_normalization_14/ReadVariableOp_1/model_2/batch_normalization_14/ReadVariableOp_12^
-model_2/batch_normalization_14/ReadVariableOp-model_2/batch_normalization_14/ReadVariableOp2�
@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12�
>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2b
/model_2/batch_normalization_15/ReadVariableOp_1/model_2/batch_normalization_15/ReadVariableOp_12^
-model_2/batch_normalization_15/ReadVariableOp-model_2/batch_normalization_15/ReadVariableOp2�
@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12�
>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2b
/model_2/batch_normalization_16/ReadVariableOp_1/model_2/batch_normalization_16/ReadVariableOp_12^
-model_2/batch_normalization_16/ReadVariableOp-model_2/batch_normalization_16/ReadVariableOp2v
9model_2/batch_normalization_17/batchnorm/ReadVariableOp_19model_2/batch_normalization_17/batchnorm/ReadVariableOp_12v
9model_2/batch_normalization_17/batchnorm/ReadVariableOp_29model_2/batch_normalization_17/batchnorm/ReadVariableOp_22r
7model_2/batch_normalization_17/batchnorm/ReadVariableOp7model_2/batch_normalization_17/batchnorm/ReadVariableOp2z
;model_2/batch_normalization_17/batchnorm/mul/ReadVariableOp;model_2/batch_normalization_17/batchnorm/mul/ReadVariableOp2T
(model_2/conv2d_10/BiasAdd/ReadVariableOp(model_2/conv2d_10/BiasAdd/ReadVariableOp2R
'model_2/conv2d_10/Conv2D/ReadVariableOp'model_2/conv2d_10/Conv2D/ReadVariableOp2T
(model_2/conv2d_11/BiasAdd/ReadVariableOp(model_2/conv2d_11/BiasAdd/ReadVariableOp2R
'model_2/conv2d_11/Conv2D/ReadVariableOp'model_2/conv2d_11/Conv2D/ReadVariableOp2T
(model_2/conv2d_12/BiasAdd/ReadVariableOp(model_2/conv2d_12/BiasAdd/ReadVariableOp2R
'model_2/conv2d_12/Conv2D/ReadVariableOp'model_2/conv2d_12/Conv2D/ReadVariableOp2T
(model_2/conv2d_13/BiasAdd/ReadVariableOp(model_2/conv2d_13/BiasAdd/ReadVariableOp2R
'model_2/conv2d_13/Conv2D/ReadVariableOp'model_2/conv2d_13/Conv2D/ReadVariableOp2T
(model_2/conv2d_14/BiasAdd/ReadVariableOp(model_2/conv2d_14/BiasAdd/ReadVariableOp2R
'model_2/conv2d_14/Conv2D/ReadVariableOp'model_2/conv2d_14/Conv2D/ReadVariableOp2P
&model_2/dense_4/BiasAdd/ReadVariableOp&model_2/dense_4/BiasAdd/ReadVariableOp2N
%model_2/dense_4/MatMul/ReadVariableOp%model_2/dense_4/MatMul/ReadVariableOp2P
&model_2/dense_5/BiasAdd/ReadVariableOp&model_2/dense_5/BiasAdd/ReadVariableOp2N
%model_2/dense_5/MatMul/ReadVariableOp%model_2/dense_5/MatMul/ReadVariableOp:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
�
e
I__inference_activation_12_layer_call_and_return_conditional_losses_558674

inputs
identityP
SeluSeluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentitySelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559793
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
F
*__inference_flatten_2_layer_call_fn_560495

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_558933a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_560144

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 �
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
#conv2d_12/kernel/Regularizer/L2LossL2Loss:conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0,conv2d_12/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_12/bias/Regularizer/L2LossL2Loss8conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_12/bias/Regularizer/mulMul)conv2d_12/bias/Regularizer/mul/x:output:0*conv2d_12/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������22 �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559813
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
k
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_558344

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
r
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_558825

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:��������� `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

g
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_558984

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_15_layer_call_fn_560294

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558439�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560290:&"
 
_user_specified_name560288:&"
 
_user_specified_name560286:&"
 
_user_specified_name560284:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
.__inference_activation_14_layer_call_fn_560211

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_558800h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������22 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
e
I__inference_activation_14_layer_call_and_return_conditional_losses_560216

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������22 b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������22 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560051

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558439

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
.__inference_activation_15_layer_call_fn_560348

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_15_layer_call_and_return_conditional_losses_558863h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_11_layer_call_fn_559989

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_558718w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������dd<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name559985:&"
 
_user_specified_name559983:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_560007

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd�
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_11/kernel/Regularizer/L2LossL2Loss:conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_11/kernel/Regularizer/mulMul+conv2d_11/kernel/Regularizer/mul/x:output:0,conv2d_11/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_11/bias/Regularizer/L2LossL2Loss8conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_11/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_11/bias/Regularizer/mulMul)conv2d_11/bias/Regularizer/mul/x:output:0*conv2d_11/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������dd�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
q
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_559980

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������dd`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������ddi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������dd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
e
I__inference_activation_15_layer_call_and_return_conditional_losses_558863

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
r
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_560391

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_16_layer_call_fn_560431

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558511�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560427:&"
 
_user_specified_name560425:&"
 
_user_specified_name560423:&"
 
_user_specified_name560421:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
��
�
C__inference_model_2_layer_call_and_return_conditional_losses_559232

config*
conv2d_10_559070:
conv2d_10_559072:+
batch_normalization_12_559075:+
batch_normalization_12_559077:+
batch_normalization_12_559079:+
batch_normalization_12_559081:*
conv2d_11_559087:
conv2d_11_559089:+
batch_normalization_13_559092:+
batch_normalization_13_559094:+
batch_normalization_13_559096:+
batch_normalization_13_559098:*
conv2d_12_559104: 
conv2d_12_559106: +
batch_normalization_14_559109: +
batch_normalization_14_559111: +
batch_normalization_14_559113: +
batch_normalization_14_559115: *
conv2d_13_559121: @
conv2d_13_559123:@+
batch_normalization_15_559126:@+
batch_normalization_15_559128:@+
batch_normalization_15_559130:@+
batch_normalization_15_559132:@*
conv2d_14_559138:@ 
conv2d_14_559140: +
batch_normalization_16_559143: +
batch_normalization_16_559145: +
batch_normalization_16_559147: +
batch_normalization_16_559149: "
dense_4_559154:
�*�
dense_4_559156:	�,
batch_normalization_17_559159:	�,
batch_normalization_17_559161:	�,
batch_normalization_17_559163:	�,
batch_normalization_17_559165:	�!
dense_5_559170:	�
dense_5_559172:
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_11/StatefulPartitionedCall�0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_12/StatefulPartitionedCall�0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp�dense_4/StatefulPartitionedCall�.dense_4/bias/Regularizer/L2Loss/ReadVariableOp�0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp�dense_5/StatefulPartitionedCall�.dense_5/bias/Regularizer/L2Loss/ReadVariableOp�0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp�$mc_dropout_2/StatefulPartitionedCall�/mc_spatial_dropout2d_10/StatefulPartitionedCall�/mc_spatial_dropout2d_11/StatefulPartitionedCall�.mc_spatial_dropout2d_8/StatefulPartitionedCall�.mc_spatial_dropout2d_9/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconfigconv2d_10_559070conv2d_10_559072*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_558655�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_12_559075batch_normalization_12_559077batch_normalization_12_559079batch_normalization_12_559081*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558241�
activation_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_558674�
#average_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_558272�
.mc_spatial_dropout2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_558699�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7mc_spatial_dropout2d_8/StatefulPartitionedCall:output:0conv2d_11_559087conv2d_11_559089*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_558718�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_13_559092batch_normalization_13_559094batch_normalization_13_559096batch_normalization_13_559098*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558313�
activation_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_558737�
#average_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_558344�
.mc_spatial_dropout2d_9/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0/^mc_spatial_dropout2d_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_558762�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall7mc_spatial_dropout2d_9/StatefulPartitionedCall:output:0conv2d_12_559104conv2d_12_559106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_558781�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_14_559109batch_normalization_14_559111batch_normalization_14_559113batch_normalization_14_559115*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558385�
activation_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_558800�
$average_pooling2d_10/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_558416�
/mc_spatial_dropout2d_10/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0/^mc_spatial_dropout2d_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_558825�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall8mc_spatial_dropout2d_10/StatefulPartitionedCall:output:0conv2d_13_559121conv2d_13_559123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_558844�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_15_559126batch_normalization_15_559128batch_normalization_15_559130batch_normalization_15_559132*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558457�
activation_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_15_layer_call_and_return_conditional_losses_558863�
$average_pooling2d_11/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_558488�
/mc_spatial_dropout2d_11/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:00^mc_spatial_dropout2d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_558888�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall8mc_spatial_dropout2d_11/StatefulPartitionedCall:output:0conv2d_14_559138conv2d_14_559140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_558907�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_16_559143batch_normalization_16_559145batch_normalization_16_559147batch_normalization_16_559149*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558529�
activation_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_16_layer_call_and_return_conditional_losses_558926�
flatten_2/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_558933�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_559154dense_4_559156*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_558952�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_17_559159batch_normalization_17_559161batch_normalization_17_559163batch_normalization_17_559165*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558609�
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_558971�
$mc_dropout_2/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:00^mc_spatial_dropout2d_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_558984�
dense_5/StatefulPartitionedCallStatefulPartitionedCall-mc_dropout_2/StatefulPartitionedCall:output:0dense_5_559170dense_5_559172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_559004�
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_10_559070*&
_output_shapes
:*
dtype0�
#conv2d_10/kernel/Regularizer/L2LossL2Loss:conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_10/kernel/Regularizer/mulMul+conv2d_10/kernel/Regularizer/mul/x:output:0,conv2d_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_10_559072*
_output_shapes
:*
dtype0�
!conv2d_10/bias/Regularizer/L2LossL2Loss8conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_10/bias/Regularizer/mulMul)conv2d_10/bias/Regularizer/mul/x:output:0*conv2d_10/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_11_559087*&
_output_shapes
:*
dtype0�
#conv2d_11/kernel/Regularizer/L2LossL2Loss:conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_11/kernel/Regularizer/mulMul+conv2d_11/kernel/Regularizer/mul/x:output:0,conv2d_11/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_11_559089*
_output_shapes
:*
dtype0�
!conv2d_11/bias/Regularizer/L2LossL2Loss8conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_11/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_11/bias/Regularizer/mulMul)conv2d_11/bias/Regularizer/mul/x:output:0*conv2d_11/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_12_559104*&
_output_shapes
: *
dtype0�
#conv2d_12/kernel/Regularizer/L2LossL2Loss:conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0,conv2d_12/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_12_559106*
_output_shapes
: *
dtype0�
!conv2d_12/bias/Regularizer/L2LossL2Loss8conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_12/bias/Regularizer/mulMul)conv2d_12/bias/Regularizer/mul/x:output:0*conv2d_12/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_13_559121*&
_output_shapes
: @*
dtype0�
#conv2d_13/kernel/Regularizer/L2LossL2Loss:conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0,conv2d_13/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_13_559123*
_output_shapes
:@*
dtype0�
!conv2d_13/bias/Regularizer/L2LossL2Loss8conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_13/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_13/bias/Regularizer/mulMul)conv2d_13/bias/Regularizer/mul/x:output:0*conv2d_13/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_14_559138*&
_output_shapes
:@ *
dtype0�
#conv2d_14/kernel/Regularizer/L2LossL2Loss:conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0,conv2d_14/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_14_559140*
_output_shapes
: *
dtype0�
!conv2d_14/bias/Regularizer/L2LossL2Loss8conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_14/bias/Regularizer/mulMul)conv2d_14/bias/Regularizer/mul/x:output:0*conv2d_14/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_4_559154* 
_output_shapes
:
�*�*
dtype0�
!dense_4/kernel/Regularizer/L2LossL2Loss8dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0*dense_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
.dense_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_4_559156*
_output_shapes	
:�*
dtype0�
dense_4/bias/Regularizer/L2LossL2Loss6dense_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0(dense_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_5_559170*
_output_shapes
:	�*
dtype0�
!dense_5/kernel/Regularizer/L2LossL2Loss8dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0*dense_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_5_559172*
_output_shapes
:*
dtype0�
dense_5/bias/Regularizer/L2LossL2Loss6dense_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0(dense_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall1^conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_11/StatefulPartitionedCall1^conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_12/StatefulPartitionedCall1^conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_13/StatefulPartitionedCall1^conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_14/StatefulPartitionedCall1^conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/L2Loss/ReadVariableOp1^dense_4/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/L2Loss/ReadVariableOp1^dense_5/kernel/Regularizer/L2Loss/ReadVariableOp%^mc_dropout_2/StatefulPartitionedCall0^mc_spatial_dropout2d_10/StatefulPartitionedCall0^mc_spatial_dropout2d_11/StatefulPartitionedCall/^mc_spatial_dropout2d_8/StatefulPartitionedCall/^mc_spatial_dropout2d_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2d
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2d
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2d
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2d
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2d
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/L2Loss/ReadVariableOp.dense_4/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/L2Loss/ReadVariableOp.dense_5/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp2L
$mc_dropout_2/StatefulPartitionedCall$mc_dropout_2/StatefulPartitionedCall2b
/mc_spatial_dropout2d_10/StatefulPartitionedCall/mc_spatial_dropout2d_10/StatefulPartitionedCall2b
/mc_spatial_dropout2d_11/StatefulPartitionedCall/mc_spatial_dropout2d_11/StatefulPartitionedCall2`
.mc_spatial_dropout2d_8/StatefulPartitionedCall.mc_spatial_dropout2d_8/StatefulPartitionedCall2`
.mc_spatial_dropout2d_9/StatefulPartitionedCall.mc_spatial_dropout2d_9/StatefulPartitionedCall:&&"
 
_user_specified_name559172:&%"
 
_user_specified_name559170:&$"
 
_user_specified_name559165:&#"
 
_user_specified_name559163:&""
 
_user_specified_name559161:&!"
 
_user_specified_name559159:& "
 
_user_specified_name559156:&"
 
_user_specified_name559154:&"
 
_user_specified_name559149:&"
 
_user_specified_name559147:&"
 
_user_specified_name559145:&"
 
_user_specified_name559143:&"
 
_user_specified_name559140:&"
 
_user_specified_name559138:&"
 
_user_specified_name559132:&"
 
_user_specified_name559130:&"
 
_user_specified_name559128:&"
 
_user_specified_name559126:&"
 
_user_specified_name559123:&"
 
_user_specified_name559121:&"
 
_user_specified_name559115:&"
 
_user_specified_name559113:&"
 
_user_specified_name559111:&"
 
_user_specified_name559109:&"
 
_user_specified_name559106:&"
 
_user_specified_name559104:&"
 
_user_specified_name559098:&"
 
_user_specified_name559096:&
"
 
_user_specified_name559094:&	"
 
_user_specified_name559092:&"
 
_user_specified_name559089:&"
 
_user_specified_name559087:&"
 
_user_specified_name559081:&"
 
_user_specified_name559079:&"
 
_user_specified_name559077:&"
 
_user_specified_name559075:&"
 
_user_specified_name559072:&"
 
_user_specified_name559070:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
��
�\
__inference__traced_save_561373
file_prefixA
'read_disablecopyonread_conv2d_10_kernel:5
'read_1_disablecopyonread_conv2d_10_bias:C
5read_2_disablecopyonread_batch_normalization_12_gamma:B
4read_3_disablecopyonread_batch_normalization_12_beta:I
;read_4_disablecopyonread_batch_normalization_12_moving_mean:M
?read_5_disablecopyonread_batch_normalization_12_moving_variance:C
)read_6_disablecopyonread_conv2d_11_kernel:5
'read_7_disablecopyonread_conv2d_11_bias:C
5read_8_disablecopyonread_batch_normalization_13_gamma:B
4read_9_disablecopyonread_batch_normalization_13_beta:J
<read_10_disablecopyonread_batch_normalization_13_moving_mean:N
@read_11_disablecopyonread_batch_normalization_13_moving_variance:D
*read_12_disablecopyonread_conv2d_12_kernel: 6
(read_13_disablecopyonread_conv2d_12_bias: D
6read_14_disablecopyonread_batch_normalization_14_gamma: C
5read_15_disablecopyonread_batch_normalization_14_beta: J
<read_16_disablecopyonread_batch_normalization_14_moving_mean: N
@read_17_disablecopyonread_batch_normalization_14_moving_variance: D
*read_18_disablecopyonread_conv2d_13_kernel: @6
(read_19_disablecopyonread_conv2d_13_bias:@D
6read_20_disablecopyonread_batch_normalization_15_gamma:@C
5read_21_disablecopyonread_batch_normalization_15_beta:@J
<read_22_disablecopyonread_batch_normalization_15_moving_mean:@N
@read_23_disablecopyonread_batch_normalization_15_moving_variance:@D
*read_24_disablecopyonread_conv2d_14_kernel:@ 6
(read_25_disablecopyonread_conv2d_14_bias: D
6read_26_disablecopyonread_batch_normalization_16_gamma: C
5read_27_disablecopyonread_batch_normalization_16_beta: J
<read_28_disablecopyonread_batch_normalization_16_moving_mean: N
@read_29_disablecopyonread_batch_normalization_16_moving_variance: <
(read_30_disablecopyonread_dense_4_kernel:
�*�5
&read_31_disablecopyonread_dense_4_bias:	�E
6read_32_disablecopyonread_batch_normalization_17_gamma:	�D
5read_33_disablecopyonread_batch_normalization_17_beta:	�K
<read_34_disablecopyonread_batch_normalization_17_moving_mean:	�O
@read_35_disablecopyonread_batch_normalization_17_moving_variance:	�;
(read_36_disablecopyonread_dense_5_kernel:	�4
&read_37_disablecopyonread_dense_5_bias:-
#read_38_disablecopyonread_iteration:	 1
'read_39_disablecopyonread_learning_rate: K
1read_40_disablecopyonread_adam_m_conv2d_10_kernel:K
1read_41_disablecopyonread_adam_v_conv2d_10_kernel:=
/read_42_disablecopyonread_adam_m_conv2d_10_bias:=
/read_43_disablecopyonread_adam_v_conv2d_10_bias:K
=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma:K
=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma:J
<read_46_disablecopyonread_adam_m_batch_normalization_12_beta:J
<read_47_disablecopyonread_adam_v_batch_normalization_12_beta:K
1read_48_disablecopyonread_adam_m_conv2d_11_kernel:K
1read_49_disablecopyonread_adam_v_conv2d_11_kernel:=
/read_50_disablecopyonread_adam_m_conv2d_11_bias:=
/read_51_disablecopyonread_adam_v_conv2d_11_bias:K
=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma:K
=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma:J
<read_54_disablecopyonread_adam_m_batch_normalization_13_beta:J
<read_55_disablecopyonread_adam_v_batch_normalization_13_beta:K
1read_56_disablecopyonread_adam_m_conv2d_12_kernel: K
1read_57_disablecopyonread_adam_v_conv2d_12_kernel: =
/read_58_disablecopyonread_adam_m_conv2d_12_bias: =
/read_59_disablecopyonread_adam_v_conv2d_12_bias: K
=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma: K
=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma: J
<read_62_disablecopyonread_adam_m_batch_normalization_14_beta: J
<read_63_disablecopyonread_adam_v_batch_normalization_14_beta: K
1read_64_disablecopyonread_adam_m_conv2d_13_kernel: @K
1read_65_disablecopyonread_adam_v_conv2d_13_kernel: @=
/read_66_disablecopyonread_adam_m_conv2d_13_bias:@=
/read_67_disablecopyonread_adam_v_conv2d_13_bias:@K
=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma:@K
=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma:@J
<read_70_disablecopyonread_adam_m_batch_normalization_15_beta:@J
<read_71_disablecopyonread_adam_v_batch_normalization_15_beta:@K
1read_72_disablecopyonread_adam_m_conv2d_14_kernel:@ K
1read_73_disablecopyonread_adam_v_conv2d_14_kernel:@ =
/read_74_disablecopyonread_adam_m_conv2d_14_bias: =
/read_75_disablecopyonread_adam_v_conv2d_14_bias: K
=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma: K
=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma: J
<read_78_disablecopyonread_adam_m_batch_normalization_16_beta: J
<read_79_disablecopyonread_adam_v_batch_normalization_16_beta: C
/read_80_disablecopyonread_adam_m_dense_4_kernel:
�*�C
/read_81_disablecopyonread_adam_v_dense_4_kernel:
�*�<
-read_82_disablecopyonread_adam_m_dense_4_bias:	�<
-read_83_disablecopyonread_adam_v_dense_4_bias:	�L
=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma:	�L
=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma:	�K
<read_86_disablecopyonread_adam_m_batch_normalization_17_beta:	�K
<read_87_disablecopyonread_adam_v_batch_normalization_17_beta:	�B
/read_88_disablecopyonread_adam_m_dense_5_kernel:	�B
/read_89_disablecopyonread_adam_v_dense_5_kernel:	�;
-read_90_disablecopyonread_adam_m_dense_5_bias:;
-read_91_disablecopyonread_adam_v_dense_5_bias:+
!read_92_disablecopyonread_total_1: +
!read_93_disablecopyonread_count_1: )
read_94_disablecopyonread_total: )
read_95_disablecopyonread_count: 
savev2_const
identity_193��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_10_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_10_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_12_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_12_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_12_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_12_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_12_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_12_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_11_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_11_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_13_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_13_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_13_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_13_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_13_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_13_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv2d_12_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: }
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv2d_12_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_14_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_14_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_14_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_14_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_14_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_14_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv2d_13_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: @}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv2d_13_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_15_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_15_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_15_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_15_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_15_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_15_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_conv2d_14_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ }
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_conv2d_14_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_batch_normalization_16_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_batch_normalization_16_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_28/DisableCopyOnReadDisableCopyOnRead<read_28_disablecopyonread_batch_normalization_16_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp<read_28_disablecopyonread_batch_normalization_16_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_29/DisableCopyOnReadDisableCopyOnRead@read_29_disablecopyonread_batch_normalization_16_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp@read_29_disablecopyonread_batch_normalization_16_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_30/DisableCopyOnReadDisableCopyOnRead(read_30_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp(read_30_disablecopyonread_dense_4_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�*�*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�*�g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�*�{
Read_31/DisableCopyOnReadDisableCopyOnRead&read_31_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp&read_31_disablecopyonread_dense_4_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_32/DisableCopyOnReadDisableCopyOnRead6read_32_disablecopyonread_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp6read_32_disablecopyonread_batch_normalization_17_gamma^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead5read_33_disablecopyonread_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp5read_33_disablecopyonread_batch_normalization_17_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_batch_normalization_17_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_batch_normalization_17_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_35/DisableCopyOnReadDisableCopyOnRead@read_35_disablecopyonread_batch_normalization_17_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp@read_35_disablecopyonread_batch_normalization_17_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_36/DisableCopyOnReadDisableCopyOnRead(read_36_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp(read_36_disablecopyonread_dense_5_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	�{
Read_37/DisableCopyOnReadDisableCopyOnRead&read_37_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp&read_37_disablecopyonread_dense_5_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_38/DisableCopyOnReadDisableCopyOnRead#read_38_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp#read_38_disablecopyonread_iteration^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_learning_rate^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_40/DisableCopyOnReadDisableCopyOnRead1read_40_disablecopyonread_adam_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp1read_40_disablecopyonread_adam_m_conv2d_10_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead1read_41_disablecopyonread_adam_v_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp1read_41_disablecopyonread_adam_v_conv2d_10_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead/read_42_disablecopyonread_adam_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp/read_42_disablecopyonread_adam_m_conv2d_10_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_43/DisableCopyOnReadDisableCopyOnRead/read_43_disablecopyonread_adam_v_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp/read_43_disablecopyonread_adam_v_conv2d_10_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_44/DisableCopyOnReadDisableCopyOnRead=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_45/DisableCopyOnReadDisableCopyOnRead=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_12_beta^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_12_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead1read_48_disablecopyonread_adam_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp1read_48_disablecopyonread_adam_m_conv2d_11_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead1read_49_disablecopyonread_adam_v_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp1read_49_disablecopyonread_adam_v_conv2d_11_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead/read_50_disablecopyonread_adam_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp/read_50_disablecopyonread_adam_m_conv2d_11_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead/read_51_disablecopyonread_adam_v_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp/read_51_disablecopyonread_adam_v_conv2d_11_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_52/DisableCopyOnReadDisableCopyOnRead=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead<read_54_disablecopyonread_adam_m_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp<read_54_disablecopyonread_adam_m_batch_normalization_13_beta^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_adam_v_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_adam_v_batch_normalization_13_beta^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead1read_56_disablecopyonread_adam_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp1read_56_disablecopyonread_adam_m_conv2d_12_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_57/DisableCopyOnReadDisableCopyOnRead1read_57_disablecopyonread_adam_v_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp1read_57_disablecopyonread_adam_v_conv2d_12_kernel^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_58/DisableCopyOnReadDisableCopyOnRead/read_58_disablecopyonread_adam_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp/read_58_disablecopyonread_adam_m_conv2d_12_bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_59/DisableCopyOnReadDisableCopyOnRead/read_59_disablecopyonread_adam_v_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp/read_59_disablecopyonread_adam_v_conv2d_12_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_61/DisableCopyOnReadDisableCopyOnRead=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_14_beta^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_14_beta^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_64/DisableCopyOnReadDisableCopyOnRead1read_64_disablecopyonread_adam_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp1read_64_disablecopyonread_adam_m_conv2d_13_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_65/DisableCopyOnReadDisableCopyOnRead1read_65_disablecopyonread_adam_v_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp1read_65_disablecopyonread_adam_v_conv2d_13_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_66/DisableCopyOnReadDisableCopyOnRead/read_66_disablecopyonread_adam_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp/read_66_disablecopyonread_adam_m_conv2d_13_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_67/DisableCopyOnReadDisableCopyOnRead/read_67_disablecopyonread_adam_v_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp/read_67_disablecopyonread_adam_v_conv2d_13_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_68/DisableCopyOnReadDisableCopyOnRead=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_69/DisableCopyOnReadDisableCopyOnRead=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_70/DisableCopyOnReadDisableCopyOnRead<read_70_disablecopyonread_adam_m_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp<read_70_disablecopyonread_adam_m_batch_normalization_15_beta^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_71/DisableCopyOnReadDisableCopyOnRead<read_71_disablecopyonread_adam_v_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp<read_71_disablecopyonread_adam_v_batch_normalization_15_beta^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_72/DisableCopyOnReadDisableCopyOnRead1read_72_disablecopyonread_adam_m_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp1read_72_disablecopyonread_adam_m_conv2d_14_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ �
Read_73/DisableCopyOnReadDisableCopyOnRead1read_73_disablecopyonread_adam_v_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp1read_73_disablecopyonread_adam_v_conv2d_14_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ �
Read_74/DisableCopyOnReadDisableCopyOnRead/read_74_disablecopyonread_adam_m_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp/read_74_disablecopyonread_adam_m_conv2d_14_bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_75/DisableCopyOnReadDisableCopyOnRead/read_75_disablecopyonread_adam_v_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp/read_75_disablecopyonread_adam_v_conv2d_14_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_76/DisableCopyOnReadDisableCopyOnRead=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_77/DisableCopyOnReadDisableCopyOnRead=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_78/DisableCopyOnReadDisableCopyOnRead<read_78_disablecopyonread_adam_m_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp<read_78_disablecopyonread_adam_m_batch_normalization_16_beta^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_79/DisableCopyOnReadDisableCopyOnRead<read_79_disablecopyonread_adam_v_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp<read_79_disablecopyonread_adam_v_batch_normalization_16_beta^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_80/DisableCopyOnReadDisableCopyOnRead/read_80_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp/read_80_disablecopyonread_adam_m_dense_4_kernel^Read_80/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�*�*
dtype0r
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�*�i
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�*��
Read_81/DisableCopyOnReadDisableCopyOnRead/read_81_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp/read_81_disablecopyonread_adam_v_dense_4_kernel^Read_81/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�*�*
dtype0r
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�*�i
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�*��
Read_82/DisableCopyOnReadDisableCopyOnRead-read_82_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp-read_82_disablecopyonread_adam_m_dense_4_bias^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_83/DisableCopyOnReadDisableCopyOnRead-read_83_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp-read_83_disablecopyonread_adam_v_dense_4_bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_84/DisableCopyOnReadDisableCopyOnRead=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_85/DisableCopyOnReadDisableCopyOnRead=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_86/DisableCopyOnReadDisableCopyOnRead<read_86_disablecopyonread_adam_m_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp<read_86_disablecopyonread_adam_m_batch_normalization_17_beta^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_87/DisableCopyOnReadDisableCopyOnRead<read_87_disablecopyonread_adam_v_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp<read_87_disablecopyonread_adam_v_batch_normalization_17_beta^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_88/DisableCopyOnReadDisableCopyOnRead/read_88_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp/read_88_disablecopyonread_adam_m_dense_5_kernel^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_89/DisableCopyOnReadDisableCopyOnRead/read_89_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp/read_89_disablecopyonread_adam_v_dense_5_kernel^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_90/DisableCopyOnReadDisableCopyOnRead-read_90_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp-read_90_disablecopyonread_adam_m_dense_5_bias^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_91/DisableCopyOnReadDisableCopyOnRead-read_91_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp-read_91_disablecopyonread_adam_v_dense_5_bias^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_92/DisableCopyOnReadDisableCopyOnRead!read_92_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp!read_92_disablecopyonread_total_1^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_93/DisableCopyOnReadDisableCopyOnRead!read_93_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp!read_93_disablecopyonread_count_1^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_94/DisableCopyOnReadDisableCopyOnReadread_94_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOpread_94_disablecopyonread_total^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_95/DisableCopyOnReadDisableCopyOnReadread_95_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOpread_95_disablecopyonread_count^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes
: �)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*�)
value�(B�(aB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*�
value�B�aB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *o
dtypese
c2a	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_192Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_193IdentityIdentity_192:output:0^NoOp*
T0*
_output_shapes
: �'
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp*
_output_shapes
 "%
identity_193Identity_193:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp:=a9

_output_shapes
: 

_user_specified_nameConst:%`!

_user_specified_namecount:%_!

_user_specified_nametotal:'^#
!
_user_specified_name	count_1:']#
!
_user_specified_name	total_1:3\/
-
_user_specified_nameAdam/v/dense_5/bias:3[/
-
_user_specified_nameAdam/m/dense_5/bias:5Z1
/
_user_specified_nameAdam/v/dense_5/kernel:5Y1
/
_user_specified_nameAdam/m/dense_5/kernel:BX>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:BW>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:CV?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:CU?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:3T/
-
_user_specified_nameAdam/v/dense_4/bias:3S/
-
_user_specified_nameAdam/m/dense_4/bias:5R1
/
_user_specified_nameAdam/v/dense_4/kernel:5Q1
/
_user_specified_nameAdam/m/dense_4/kernel:BP>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:BO>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:CN?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:CM?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:5L1
/
_user_specified_nameAdam/v/conv2d_14/bias:5K1
/
_user_specified_nameAdam/m/conv2d_14/bias:7J3
1
_user_specified_nameAdam/v/conv2d_14/kernel:7I3
1
_user_specified_nameAdam/m/conv2d_14/kernel:BH>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:BG>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:CF?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:CE?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:5D1
/
_user_specified_nameAdam/v/conv2d_13/bias:5C1
/
_user_specified_nameAdam/m/conv2d_13/bias:7B3
1
_user_specified_nameAdam/v/conv2d_13/kernel:7A3
1
_user_specified_nameAdam/m/conv2d_13/kernel:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:5<1
/
_user_specified_nameAdam/v/conv2d_12/bias:5;1
/
_user_specified_nameAdam/m/conv2d_12/bias:7:3
1
_user_specified_nameAdam/v/conv2d_12/kernel:793
1
_user_specified_nameAdam/m/conv2d_12/kernel:B8>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:B7>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:C6?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:C5?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:541
/
_user_specified_nameAdam/v/conv2d_11/bias:531
/
_user_specified_nameAdam/m/conv2d_11/bias:723
1
_user_specified_nameAdam/v/conv2d_11/kernel:713
1
_user_specified_nameAdam/m/conv2d_11/kernel:B0>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:B/>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:C.?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:C-?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:5,1
/
_user_specified_nameAdam/v/conv2d_10/bias:5+1
/
_user_specified_nameAdam/m/conv2d_10/bias:7*3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7)3
1
_user_specified_nameAdam/m/conv2d_10/kernel:-()
'
_user_specified_namelearning_rate:)'%
#
_user_specified_name	iteration:,&(
&
_user_specified_namedense_5/bias:.%*
(
_user_specified_namedense_5/kernel:F$B
@
_user_specified_name(&batch_normalization_17/moving_variance:B#>
<
_user_specified_name$"batch_normalization_17/moving_mean:;"7
5
_user_specified_namebatch_normalization_17/beta:<!8
6
_user_specified_namebatch_normalization_17/gamma:, (
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;7
5
_user_specified_namebatch_normalization_16/beta:<8
6
_user_specified_namebatch_normalization_16/gamma:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_14/kernel:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_13/kernel:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:;7
5
_user_specified_namebatch_normalization_14/beta:<8
6
_user_specified_namebatch_normalization_14/gamma:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_12/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;
7
5
_user_specified_namebatch_normalization_13/beta:<	8
6
_user_specified_namebatch_normalization_13/gamma:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
W
#__inference__update_step_xla_559718
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
K
#__inference__update_step_xla_559753
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
K
#__inference__update_step_xla_559743
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
K
#__inference__update_step_xla_559728
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_559004

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense_5/bias/Regularizer/L2Loss/ReadVariableOp�0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:����������
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_5/kernel/Regularizer/L2LossL2Loss8dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0*dense_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/bias/Regularizer/L2LossL2Loss6dense_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0(dense_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_5/bias/Regularizer/L2Loss/ReadVariableOp1^dense_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/L2Loss/ReadVariableOp.dense_5/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_559657

config!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
�*�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconfigunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_558205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&&"
 
_user_specified_name559653:&%"
 
_user_specified_name559651:&$"
 
_user_specified_name559649:&#"
 
_user_specified_name559647:&""
 
_user_specified_name559645:&!"
 
_user_specified_name559643:& "
 
_user_specified_name559641:&"
 
_user_specified_name559639:&"
 
_user_specified_name559637:&"
 
_user_specified_name559635:&"
 
_user_specified_name559633:&"
 
_user_specified_name559631:&"
 
_user_specified_name559629:&"
 
_user_specified_name559627:&"
 
_user_specified_name559625:&"
 
_user_specified_name559623:&"
 
_user_specified_name559621:&"
 
_user_specified_name559619:&"
 
_user_specified_name559617:&"
 
_user_specified_name559615:&"
 
_user_specified_name559613:&"
 
_user_specified_name559611:&"
 
_user_specified_name559609:&"
 
_user_specified_name559607:&"
 
_user_specified_name559605:&"
 
_user_specified_name559603:&"
 
_user_specified_name559601:&"
 
_user_specified_name559599:&
"
 
_user_specified_name559597:&	"
 
_user_specified_name559595:&"
 
_user_specified_name559593:&"
 
_user_specified_name559591:&"
 
_user_specified_name559589:&"
 
_user_specified_name559587:&"
 
_user_specified_name559585:&"
 
_user_specified_name559583:&"
 
_user_specified_name559581:&"
 
_user_specified_name559579:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
�
�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_560418

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
#conv2d_14/kernel/Regularizer/L2LossL2Loss:conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0,conv2d_14/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_14/bias/Regularizer/L2LossL2Loss8conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_14/bias/Regularizer/mulMul)conv2d_14/bias/Regularizer/mul/x:output:0*conv2d_14/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_560281

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#conv2d_13/kernel/Regularizer/L2LossL2Loss:conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0,conv2d_13/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!conv2d_13/bias/Regularizer/L2LossL2Loss8conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_13/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_13/bias/Regularizer/mulMul)conv2d_13/bias/Regularizer/mul/x:output:0*conv2d_13/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560462

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558223

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
C__inference_dense_4_layer_call_and_return_conditional_losses_558952

inputs2
matmul_readvariableop_resource:
�*�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense_4/bias/Regularizer/L2Loss/ReadVariableOp�0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0�
!dense_4/kernel/Regularizer/L2LossL2Loss8dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0*dense_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/bias/Regularizer/L2LossL2Loss6dense_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0(dense_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_4/bias/Regularizer/L2Loss/ReadVariableOp1^dense_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/L2Loss/ReadVariableOp.dense_4/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_2_560687U
;conv2d_11_kernel_regularizer_l2loss_readvariableop_resource:
identity��2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp�
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;conv2d_11_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_11/kernel/Regularizer/L2LossL2Loss:conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_11/kernel/Regularizer/mulMul+conv2d_11/kernel/Regularizer/mul/x:output:0,conv2d_11/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_11/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
l
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_560363

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_3_560695G
9conv2d_11_bias_regularizer_l2loss_readvariableop_resource:
identity��0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp�
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp9conv2d_11_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_11/bias/Regularizer/L2LossL2Loss8conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_11/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_11/bias/Regularizer/mulMul)conv2d_11/bias/Regularizer/mul/x:output:0*conv2d_11/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"conv2d_11/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_558781

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22 �
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
#conv2d_12/kernel/Regularizer/L2LossL2Loss:conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0,conv2d_12/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_12/bias/Regularizer/L2LossL2Loss8conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_12/bias/Regularizer/mulMul)conv2d_12/bias/Regularizer/mul/x:output:0*conv2d_12/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������22 �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
*__inference_conv2d_12_layer_call_fn_560126

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_558781w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������22 <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560122:&"
 
_user_specified_name560120:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
e
I__inference_activation_15_layer_call_and_return_conditional_losses_560353

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_559313

config!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
�*�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconfigunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
 #$%&*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_559067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&&"
 
_user_specified_name559309:&%"
 
_user_specified_name559307:&$"
 
_user_specified_name559305:&#"
 
_user_specified_name559303:&""
 
_user_specified_name559301:&!"
 
_user_specified_name559299:& "
 
_user_specified_name559297:&"
 
_user_specified_name559295:&"
 
_user_specified_name559293:&"
 
_user_specified_name559291:&"
 
_user_specified_name559289:&"
 
_user_specified_name559287:&"
 
_user_specified_name559285:&"
 
_user_specified_name559283:&"
 
_user_specified_name559281:&"
 
_user_specified_name559279:&"
 
_user_specified_name559277:&"
 
_user_specified_name559275:&"
 
_user_specified_name559273:&"
 
_user_specified_name559271:&"
 
_user_specified_name559269:&"
 
_user_specified_name559267:&"
 
_user_specified_name559265:&"
 
_user_specified_name559263:&"
 
_user_specified_name559261:&"
 
_user_specified_name559259:&"
 
_user_specified_name559257:&"
 
_user_specified_name559255:&
"
 
_user_specified_name559253:&	"
 
_user_specified_name559251:&"
 
_user_specified_name559249:&"
 
_user_specified_name559247:&"
 
_user_specified_name559245:&"
 
_user_specified_name559243:&"
 
_user_specified_name559241:&"
 
_user_specified_name559239:&"
 
_user_specified_name559237:&"
 
_user_specified_name559235:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
�
�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_558844

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#conv2d_13/kernel/Regularizer/L2LossL2Loss:conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0,conv2d_13/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!conv2d_13/bias/Regularizer/L2LossL2Loss8conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_13/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_13/bias/Regularizer/mulMul)conv2d_13/bias/Regularizer/mul/x:output:0*conv2d_13/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
p
7__inference_mc_spatial_dropout2d_8_layer_call_fn_559957

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_558699w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������dd<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
k
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_558272

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�&
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558589

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_558416

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559763
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
L
#__inference__update_step_xla_559828
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560325

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_activation_13_layer_call_and_return_conditional_losses_560079

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������ddb
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������dd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
r
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_560254

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:��������� `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
e
I__inference_activation_16_layer_call_and_return_conditional_losses_560490

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
W
#__inference__update_step_xla_559798
gradient"
variable:@ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@ : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:@ 
"
_user_specified_name
gradient
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_559870

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_10/kernel/Regularizer/L2LossL2Loss:conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_10/kernel/Regularizer/mulMul+conv2d_10/kernel/Regularizer/mul/x:output:0,conv2d_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_10/bias/Regularizer/L2LossL2Loss8conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_10/bias/Regularizer/mulMul)conv2d_10/bias/Regularizer/mul/x:output:0*conv2d_10/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
#__inference__update_step_xla_559778
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: @
"
_user_specified_name
gradient
�	
�
7__inference_batch_normalization_17_layer_call_fn_560541

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558589p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560537:&"
 
_user_specified_name560535:&"
 
_user_specified_name560533:&"
 
_user_specified_name560531:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
J
.__inference_activation_13_layer_call_fn_560074

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_558737h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������dd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_560679G
9conv2d_10_bias_regularizer_l2loss_readvariableop_resource:
identity��0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp�
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp9conv2d_10_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_10/bias/Regularizer/L2LossL2Loss8conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_10/bias/Regularizer/mulMul)conv2d_10/bias/Regularizer/mul/x:output:0*conv2d_10/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"conv2d_10/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_13_layer_call_fn_560033

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558313�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560029:&"
 
_user_specified_name560027:&"
 
_user_specified_name560025:&"
 
_user_specified_name560023:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
e
I__inference_activation_14_layer_call_and_return_conditional_losses_558800

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������22 b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������22 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558529

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_8_560735U
;conv2d_14_kernel_regularizer_l2loss_readvariableop_resource:@ 
identity��2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp�
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;conv2d_14_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
#conv2d_14/kernel/Regularizer/L2LossL2Loss:conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0,conv2d_14/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_14/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558367

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_dense_4_layer_call_and_return_conditional_losses_560528

inputs2
matmul_readvariableop_resource:
�*�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense_4/bias/Regularizer/L2Loss/ReadVariableOp�0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0�
!dense_4/kernel/Regularizer/L2LossL2Loss8dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0*dense_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/bias/Regularizer/L2LossL2Loss6dense_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0(dense_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_4/bias/Regularizer/L2Loss/ReadVariableOp1^dense_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/L2Loss/ReadVariableOp.dense_4/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
q
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_558699

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������dd`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������ddi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������dd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
��
�@
"__inference__traced_restore_561670
file_prefix;
!assignvariableop_conv2d_10_kernel:/
!assignvariableop_1_conv2d_10_bias:=
/assignvariableop_2_batch_normalization_12_gamma:<
.assignvariableop_3_batch_normalization_12_beta:C
5assignvariableop_4_batch_normalization_12_moving_mean:G
9assignvariableop_5_batch_normalization_12_moving_variance:=
#assignvariableop_6_conv2d_11_kernel:/
!assignvariableop_7_conv2d_11_bias:=
/assignvariableop_8_batch_normalization_13_gamma:<
.assignvariableop_9_batch_normalization_13_beta:D
6assignvariableop_10_batch_normalization_13_moving_mean:H
:assignvariableop_11_batch_normalization_13_moving_variance:>
$assignvariableop_12_conv2d_12_kernel: 0
"assignvariableop_13_conv2d_12_bias: >
0assignvariableop_14_batch_normalization_14_gamma: =
/assignvariableop_15_batch_normalization_14_beta: D
6assignvariableop_16_batch_normalization_14_moving_mean: H
:assignvariableop_17_batch_normalization_14_moving_variance: >
$assignvariableop_18_conv2d_13_kernel: @0
"assignvariableop_19_conv2d_13_bias:@>
0assignvariableop_20_batch_normalization_15_gamma:@=
/assignvariableop_21_batch_normalization_15_beta:@D
6assignvariableop_22_batch_normalization_15_moving_mean:@H
:assignvariableop_23_batch_normalization_15_moving_variance:@>
$assignvariableop_24_conv2d_14_kernel:@ 0
"assignvariableop_25_conv2d_14_bias: >
0assignvariableop_26_batch_normalization_16_gamma: =
/assignvariableop_27_batch_normalization_16_beta: D
6assignvariableop_28_batch_normalization_16_moving_mean: H
:assignvariableop_29_batch_normalization_16_moving_variance: 6
"assignvariableop_30_dense_4_kernel:
�*�/
 assignvariableop_31_dense_4_bias:	�?
0assignvariableop_32_batch_normalization_17_gamma:	�>
/assignvariableop_33_batch_normalization_17_beta:	�E
6assignvariableop_34_batch_normalization_17_moving_mean:	�I
:assignvariableop_35_batch_normalization_17_moving_variance:	�5
"assignvariableop_36_dense_5_kernel:	�.
 assignvariableop_37_dense_5_bias:'
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: E
+assignvariableop_40_adam_m_conv2d_10_kernel:E
+assignvariableop_41_adam_v_conv2d_10_kernel:7
)assignvariableop_42_adam_m_conv2d_10_bias:7
)assignvariableop_43_adam_v_conv2d_10_bias:E
7assignvariableop_44_adam_m_batch_normalization_12_gamma:E
7assignvariableop_45_adam_v_batch_normalization_12_gamma:D
6assignvariableop_46_adam_m_batch_normalization_12_beta:D
6assignvariableop_47_adam_v_batch_normalization_12_beta:E
+assignvariableop_48_adam_m_conv2d_11_kernel:E
+assignvariableop_49_adam_v_conv2d_11_kernel:7
)assignvariableop_50_adam_m_conv2d_11_bias:7
)assignvariableop_51_adam_v_conv2d_11_bias:E
7assignvariableop_52_adam_m_batch_normalization_13_gamma:E
7assignvariableop_53_adam_v_batch_normalization_13_gamma:D
6assignvariableop_54_adam_m_batch_normalization_13_beta:D
6assignvariableop_55_adam_v_batch_normalization_13_beta:E
+assignvariableop_56_adam_m_conv2d_12_kernel: E
+assignvariableop_57_adam_v_conv2d_12_kernel: 7
)assignvariableop_58_adam_m_conv2d_12_bias: 7
)assignvariableop_59_adam_v_conv2d_12_bias: E
7assignvariableop_60_adam_m_batch_normalization_14_gamma: E
7assignvariableop_61_adam_v_batch_normalization_14_gamma: D
6assignvariableop_62_adam_m_batch_normalization_14_beta: D
6assignvariableop_63_adam_v_batch_normalization_14_beta: E
+assignvariableop_64_adam_m_conv2d_13_kernel: @E
+assignvariableop_65_adam_v_conv2d_13_kernel: @7
)assignvariableop_66_adam_m_conv2d_13_bias:@7
)assignvariableop_67_adam_v_conv2d_13_bias:@E
7assignvariableop_68_adam_m_batch_normalization_15_gamma:@E
7assignvariableop_69_adam_v_batch_normalization_15_gamma:@D
6assignvariableop_70_adam_m_batch_normalization_15_beta:@D
6assignvariableop_71_adam_v_batch_normalization_15_beta:@E
+assignvariableop_72_adam_m_conv2d_14_kernel:@ E
+assignvariableop_73_adam_v_conv2d_14_kernel:@ 7
)assignvariableop_74_adam_m_conv2d_14_bias: 7
)assignvariableop_75_adam_v_conv2d_14_bias: E
7assignvariableop_76_adam_m_batch_normalization_16_gamma: E
7assignvariableop_77_adam_v_batch_normalization_16_gamma: D
6assignvariableop_78_adam_m_batch_normalization_16_beta: D
6assignvariableop_79_adam_v_batch_normalization_16_beta: =
)assignvariableop_80_adam_m_dense_4_kernel:
�*�=
)assignvariableop_81_adam_v_dense_4_kernel:
�*�6
'assignvariableop_82_adam_m_dense_4_bias:	�6
'assignvariableop_83_adam_v_dense_4_bias:	�F
7assignvariableop_84_adam_m_batch_normalization_17_gamma:	�F
7assignvariableop_85_adam_v_batch_normalization_17_gamma:	�E
6assignvariableop_86_adam_m_batch_normalization_17_beta:	�E
6assignvariableop_87_adam_v_batch_normalization_17_beta:	�<
)assignvariableop_88_adam_m_dense_5_kernel:	�<
)assignvariableop_89_adam_v_dense_5_kernel:	�5
'assignvariableop_90_adam_m_dense_5_bias:5
'assignvariableop_91_adam_v_dense_5_bias:%
assignvariableop_92_total_1: %
assignvariableop_93_count_1: #
assignvariableop_94_total: #
assignvariableop_95_count: 
identity_97��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*�)
value�(B�(aB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:a*
dtype0*�
value�B�aB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*o
dtypese
c2a	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_12_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_12_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_12_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_12_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_11_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_11_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_13_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_13_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_13_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_13_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_12_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_12_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_14_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_14_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_14_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_14_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_13_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_13_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_15_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_15_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_15_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_15_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_14_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_14_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_16_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_16_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_16_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_16_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_4_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_4_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_17_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_17_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_17_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_17_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_5_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_5_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_iterationIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_learning_rateIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_m_conv2d_10_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_v_conv2d_10_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_conv2d_10_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_conv2d_10_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adam_m_batch_normalization_12_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_v_batch_normalization_12_gammaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_12_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_12_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_m_conv2d_11_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_v_conv2d_11_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_m_conv2d_11_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_v_conv2d_11_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp7assignvariableop_52_adam_m_batch_normalization_13_gammaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_v_batch_normalization_13_gammaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_m_batch_normalization_13_betaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_v_batch_normalization_13_betaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_m_conv2d_12_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_v_conv2d_12_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_m_conv2d_12_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_v_conv2d_12_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_m_batch_normalization_14_gammaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_v_batch_normalization_14_gammaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_14_betaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_14_betaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_m_conv2d_13_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_v_conv2d_13_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_m_conv2d_13_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_v_conv2d_13_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_m_batch_normalization_15_gammaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_v_batch_normalization_15_gammaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_m_batch_normalization_15_betaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_v_batch_normalization_15_betaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_m_conv2d_14_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_v_conv2d_14_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_m_conv2d_14_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_v_conv2d_14_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp7assignvariableop_76_adam_m_batch_normalization_16_gammaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_v_batch_normalization_16_gammaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_m_batch_normalization_16_betaIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_v_batch_normalization_16_betaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_m_dense_4_kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_v_dense_4_kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp'assignvariableop_82_adam_m_dense_4_biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_v_dense_4_biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp7assignvariableop_84_adam_m_batch_normalization_17_gammaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_v_batch_normalization_17_gammaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_m_batch_normalization_17_betaIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_v_batch_normalization_17_betaIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_m_dense_5_kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_v_dense_5_kernelIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp'assignvariableop_90_adam_m_dense_5_biasIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp'assignvariableop_91_adam_v_dense_5_biasIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOpassignvariableop_92_total_1Identity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOpassignvariableop_93_count_1Identity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOpassignvariableop_94_totalIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOpassignvariableop_95_countIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_96Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_97IdentityIdentity_96:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95*
_output_shapes
 "#
identity_97Identity_97:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%`!

_user_specified_namecount:%_!

_user_specified_nametotal:'^#
!
_user_specified_name	count_1:']#
!
_user_specified_name	total_1:3\/
-
_user_specified_nameAdam/v/dense_5/bias:3[/
-
_user_specified_nameAdam/m/dense_5/bias:5Z1
/
_user_specified_nameAdam/v/dense_5/kernel:5Y1
/
_user_specified_nameAdam/m/dense_5/kernel:BX>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:BW>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:CV?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:CU?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:3T/
-
_user_specified_nameAdam/v/dense_4/bias:3S/
-
_user_specified_nameAdam/m/dense_4/bias:5R1
/
_user_specified_nameAdam/v/dense_4/kernel:5Q1
/
_user_specified_nameAdam/m/dense_4/kernel:BP>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:BO>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:CN?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:CM?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:5L1
/
_user_specified_nameAdam/v/conv2d_14/bias:5K1
/
_user_specified_nameAdam/m/conv2d_14/bias:7J3
1
_user_specified_nameAdam/v/conv2d_14/kernel:7I3
1
_user_specified_nameAdam/m/conv2d_14/kernel:BH>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:BG>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:CF?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:CE?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:5D1
/
_user_specified_nameAdam/v/conv2d_13/bias:5C1
/
_user_specified_nameAdam/m/conv2d_13/bias:7B3
1
_user_specified_nameAdam/v/conv2d_13/kernel:7A3
1
_user_specified_nameAdam/m/conv2d_13/kernel:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:5<1
/
_user_specified_nameAdam/v/conv2d_12/bias:5;1
/
_user_specified_nameAdam/m/conv2d_12/bias:7:3
1
_user_specified_nameAdam/v/conv2d_12/kernel:793
1
_user_specified_nameAdam/m/conv2d_12/kernel:B8>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:B7>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:C6?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:C5?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:541
/
_user_specified_nameAdam/v/conv2d_11/bias:531
/
_user_specified_nameAdam/m/conv2d_11/bias:723
1
_user_specified_nameAdam/v/conv2d_11/kernel:713
1
_user_specified_nameAdam/m/conv2d_11/kernel:B0>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:B/>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:C.?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:C-?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:5,1
/
_user_specified_nameAdam/v/conv2d_10/bias:5+1
/
_user_specified_nameAdam/m/conv2d_10/bias:7*3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7)3
1
_user_specified_nameAdam/m/conv2d_10/kernel:-()
'
_user_specified_namelearning_rate:)'%
#
_user_specified_name	iteration:,&(
&
_user_specified_namedense_5/bias:.%*
(
_user_specified_namedense_5/kernel:F$B
@
_user_specified_name(&batch_normalization_17/moving_variance:B#>
<
_user_specified_name$"batch_normalization_17/moving_mean:;"7
5
_user_specified_namebatch_normalization_17/beta:<!8
6
_user_specified_namebatch_normalization_17/gamma:, (
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:;7
5
_user_specified_namebatch_normalization_16/beta:<8
6
_user_specified_namebatch_normalization_16/gamma:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_14/kernel:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:;7
5
_user_specified_namebatch_normalization_15/beta:<8
6
_user_specified_namebatch_normalization_15/gamma:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_13/kernel:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:;7
5
_user_specified_namebatch_normalization_14/beta:<8
6
_user_specified_namebatch_normalization_14/gamma:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_12/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;
7
5
_user_specified_namebatch_normalization_13/beta:<	8
6
_user_specified_namebatch_normalization_13/gamma:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
W
#__inference__update_step_xla_559758
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: 
"
_user_specified_name
gradient
�
q
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_558762

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������22`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������22i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������22"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_558718

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd�
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_11/kernel/Regularizer/L2LossL2Loss:conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_11/kernel/Regularizer/mulMul+conv2d_11/kernel/Regularizer/mul/x:output:0,conv2d_11/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_11/bias/Regularizer/L2LossL2Loss8conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_11/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_11/bias/Regularizer/mulMul)conv2d_11/bias/Regularizer/mul/x:output:0*conv2d_11/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������dd�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
e
I__inference_activation_17_layer_call_and_return_conditional_losses_558971

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:����������Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558295

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_17_layer_call_fn_560554

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558609p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560550:&"
 
_user_specified_name560548:&"
 
_user_specified_name560546:&"
 
_user_specified_name560544:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560069

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559748
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
*__inference_conv2d_14_layer_call_fn_560400

inputs!
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_558907w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560396:&"
 
_user_specified_name560394:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559808
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
��
�
C__inference_model_2_layer_call_and_return_conditional_losses_559067

config*
conv2d_10_558656:
conv2d_10_558658:+
batch_normalization_12_558661:+
batch_normalization_12_558663:+
batch_normalization_12_558665:+
batch_normalization_12_558667:*
conv2d_11_558719:
conv2d_11_558721:+
batch_normalization_13_558724:+
batch_normalization_13_558726:+
batch_normalization_13_558728:+
batch_normalization_13_558730:*
conv2d_12_558782: 
conv2d_12_558784: +
batch_normalization_14_558787: +
batch_normalization_14_558789: +
batch_normalization_14_558791: +
batch_normalization_14_558793: *
conv2d_13_558845: @
conv2d_13_558847:@+
batch_normalization_15_558850:@+
batch_normalization_15_558852:@+
batch_normalization_15_558854:@+
batch_normalization_15_558856:@*
conv2d_14_558908:@ 
conv2d_14_558910: +
batch_normalization_16_558913: +
batch_normalization_16_558915: +
batch_normalization_16_558917: +
batch_normalization_16_558919: "
dense_4_558953:
�*�
dense_4_558955:	�,
batch_normalization_17_558958:	�,
batch_normalization_17_558960:	�,
batch_normalization_17_558962:	�,
batch_normalization_17_558964:	�!
dense_5_559005:	�
dense_5_559007:
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_11/StatefulPartitionedCall�0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_12/StatefulPartitionedCall�0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp�dense_4/StatefulPartitionedCall�.dense_4/bias/Regularizer/L2Loss/ReadVariableOp�0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp�dense_5/StatefulPartitionedCall�.dense_5/bias/Regularizer/L2Loss/ReadVariableOp�0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp�$mc_dropout_2/StatefulPartitionedCall�/mc_spatial_dropout2d_10/StatefulPartitionedCall�/mc_spatial_dropout2d_11/StatefulPartitionedCall�.mc_spatial_dropout2d_8/StatefulPartitionedCall�.mc_spatial_dropout2d_9/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconfigconv2d_10_558656conv2d_10_558658*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_558655�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_12_558661batch_normalization_12_558663batch_normalization_12_558665batch_normalization_12_558667*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558223�
activation_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_558674�
#average_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_558272�
.mc_spatial_dropout2d_8/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_558699�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall7mc_spatial_dropout2d_8/StatefulPartitionedCall:output:0conv2d_11_558719conv2d_11_558721*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_558718�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_13_558724batch_normalization_13_558726batch_normalization_13_558728batch_normalization_13_558730*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558295�
activation_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_558737�
#average_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_558344�
.mc_spatial_dropout2d_9/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0/^mc_spatial_dropout2d_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_558762�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall7mc_spatial_dropout2d_9/StatefulPartitionedCall:output:0conv2d_12_558782conv2d_12_558784*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_558781�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_14_558787batch_normalization_14_558789batch_normalization_14_558791batch_normalization_14_558793*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558367�
activation_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_558800�
$average_pooling2d_10/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_558416�
/mc_spatial_dropout2d_10/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0/^mc_spatial_dropout2d_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_558825�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall8mc_spatial_dropout2d_10/StatefulPartitionedCall:output:0conv2d_13_558845conv2d_13_558847*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_558844�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_15_558850batch_normalization_15_558852batch_normalization_15_558854batch_normalization_15_558856*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558439�
activation_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_15_layer_call_and_return_conditional_losses_558863�
$average_pooling2d_11/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_558488�
/mc_spatial_dropout2d_11/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:00^mc_spatial_dropout2d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_558888�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall8mc_spatial_dropout2d_11/StatefulPartitionedCall:output:0conv2d_14_558908conv2d_14_558910*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_558907�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_16_558913batch_normalization_16_558915batch_normalization_16_558917batch_normalization_16_558919*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558511�
activation_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_16_layer_call_and_return_conditional_losses_558926�
flatten_2/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_558933�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_558953dense_4_558955*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_558952�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_17_558958batch_normalization_17_558960batch_normalization_17_558962batch_normalization_17_558964*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558589�
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_558971�
$mc_dropout_2/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:00^mc_spatial_dropout2d_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_558984�
dense_5/StatefulPartitionedCallStatefulPartitionedCall-mc_dropout_2/StatefulPartitionedCall:output:0dense_5_559005dense_5_559007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_559004�
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_10_558656*&
_output_shapes
:*
dtype0�
#conv2d_10/kernel/Regularizer/L2LossL2Loss:conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_10/kernel/Regularizer/mulMul+conv2d_10/kernel/Regularizer/mul/x:output:0,conv2d_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_10_558658*
_output_shapes
:*
dtype0�
!conv2d_10/bias/Regularizer/L2LossL2Loss8conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_10/bias/Regularizer/mulMul)conv2d_10/bias/Regularizer/mul/x:output:0*conv2d_10/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_11_558719*&
_output_shapes
:*
dtype0�
#conv2d_11/kernel/Regularizer/L2LossL2Loss:conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_11/kernel/Regularizer/mulMul+conv2d_11/kernel/Regularizer/mul/x:output:0,conv2d_11/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_11_558721*
_output_shapes
:*
dtype0�
!conv2d_11/bias/Regularizer/L2LossL2Loss8conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_11/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_11/bias/Regularizer/mulMul)conv2d_11/bias/Regularizer/mul/x:output:0*conv2d_11/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_12_558782*&
_output_shapes
: *
dtype0�
#conv2d_12/kernel/Regularizer/L2LossL2Loss:conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0,conv2d_12/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_12_558784*
_output_shapes
: *
dtype0�
!conv2d_12/bias/Regularizer/L2LossL2Loss8conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_12/bias/Regularizer/mulMul)conv2d_12/bias/Regularizer/mul/x:output:0*conv2d_12/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_13_558845*&
_output_shapes
: @*
dtype0�
#conv2d_13/kernel/Regularizer/L2LossL2Loss:conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0,conv2d_13/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_13_558847*
_output_shapes
:@*
dtype0�
!conv2d_13/bias/Regularizer/L2LossL2Loss8conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_13/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_13/bias/Regularizer/mulMul)conv2d_13/bias/Regularizer/mul/x:output:0*conv2d_13/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_14_558908*&
_output_shapes
:@ *
dtype0�
#conv2d_14/kernel/Regularizer/L2LossL2Loss:conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0,conv2d_14/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_14_558910*
_output_shapes
: *
dtype0�
!conv2d_14/bias/Regularizer/L2LossL2Loss8conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_14/bias/Regularizer/mulMul)conv2d_14/bias/Regularizer/mul/x:output:0*conv2d_14/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_4_558953* 
_output_shapes
:
�*�*
dtype0�
!dense_4/kernel/Regularizer/L2LossL2Loss8dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0*dense_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
.dense_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_4_558955*
_output_shapes	
:�*
dtype0�
dense_4/bias/Regularizer/L2LossL2Loss6dense_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0(dense_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_5_559005*
_output_shapes
:	�*
dtype0�
!dense_5/kernel/Regularizer/L2LossL2Loss8dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0*dense_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_5_559007*
_output_shapes
:*
dtype0�
dense_5/bias/Regularizer/L2LossL2Loss6dense_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0(dense_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall1^conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_11/StatefulPartitionedCall1^conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_12/StatefulPartitionedCall1^conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_13/StatefulPartitionedCall1^conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp"^conv2d_14/StatefulPartitionedCall1^conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/L2Loss/ReadVariableOp1^dense_4/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/L2Loss/ReadVariableOp1^dense_5/kernel/Regularizer/L2Loss/ReadVariableOp%^mc_dropout_2/StatefulPartitionedCall0^mc_spatial_dropout2d_10/StatefulPartitionedCall0^mc_spatial_dropout2d_11/StatefulPartitionedCall/^mc_spatial_dropout2d_8/StatefulPartitionedCall/^mc_spatial_dropout2d_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2d
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2d
0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_11/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_11/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2d
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_12/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2d
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2d
0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_14/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_14/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/L2Loss/ReadVariableOp.dense_4/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/L2Loss/ReadVariableOp.dense_5/bias/Regularizer/L2Loss/ReadVariableOp2d
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp2L
$mc_dropout_2/StatefulPartitionedCall$mc_dropout_2/StatefulPartitionedCall2b
/mc_spatial_dropout2d_10/StatefulPartitionedCall/mc_spatial_dropout2d_10/StatefulPartitionedCall2b
/mc_spatial_dropout2d_11/StatefulPartitionedCall/mc_spatial_dropout2d_11/StatefulPartitionedCall2`
.mc_spatial_dropout2d_8/StatefulPartitionedCall.mc_spatial_dropout2d_8/StatefulPartitionedCall2`
.mc_spatial_dropout2d_9/StatefulPartitionedCall.mc_spatial_dropout2d_9/StatefulPartitionedCall:&&"
 
_user_specified_name559007:&%"
 
_user_specified_name559005:&$"
 
_user_specified_name558964:&#"
 
_user_specified_name558962:&""
 
_user_specified_name558960:&!"
 
_user_specified_name558958:& "
 
_user_specified_name558955:&"
 
_user_specified_name558953:&"
 
_user_specified_name558919:&"
 
_user_specified_name558917:&"
 
_user_specified_name558915:&"
 
_user_specified_name558913:&"
 
_user_specified_name558910:&"
 
_user_specified_name558908:&"
 
_user_specified_name558856:&"
 
_user_specified_name558854:&"
 
_user_specified_name558852:&"
 
_user_specified_name558850:&"
 
_user_specified_name558847:&"
 
_user_specified_name558845:&"
 
_user_specified_name558793:&"
 
_user_specified_name558791:&"
 
_user_specified_name558789:&"
 
_user_specified_name558787:&"
 
_user_specified_name558784:&"
 
_user_specified_name558782:&"
 
_user_specified_name558730:&"
 
_user_specified_name558728:&
"
 
_user_specified_name558726:&	"
 
_user_specified_name558724:&"
 
_user_specified_name558721:&"
 
_user_specified_name558719:&"
 
_user_specified_name558667:&"
 
_user_specified_name558665:&"
 
_user_specified_name558663:&"
 
_user_specified_name558661:&"
 
_user_specified_name558658:&"
 
_user_specified_name558656:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
�
L
#__inference__update_step_xla_559833
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
K
#__inference__update_step_xla_559803
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
__inference_loss_fn_11_560759F
7dense_4_bias_regularizer_l2loss_readvariableop_resource:	�
identity��.dense_4/bias/Regularizer/L2Loss/ReadVariableOp�
.dense_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp7dense_4_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/bias/Regularizer/L2LossL2Loss6dense_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0(dense_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense_4/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp/^dense_4/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_4/bias/Regularizer/L2Loss/ReadVariableOp.dense_4/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
J
.__inference_activation_17_layer_call_fn_560613

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_558971a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
P
4__inference_average_pooling2d_9_layer_call_fn_560084

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_558344�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�&
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560588

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558511

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560343

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560188

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
W
#__inference__update_step_xla_559738
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�	
�
__inference_loss_fn_12_560767L
9dense_5_kernel_regularizer_l2loss_readvariableop_resource:	�
identity��0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp�
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9dense_5_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_5/kernel/Regularizer/L2LossL2Loss8dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0*dense_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^dense_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp0dense_5/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_559733
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_560501

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
J
.__inference_activation_16_layer_call_fn_560485

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_16_layer_call_and_return_conditional_losses_558926h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_conv2d_13_layer_call_fn_560263

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_558844w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560259:&"
 
_user_specified_name560257:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_12_layer_call_fn_559883

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558223�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name559879:&"
 
_user_specified_name559877:&"
 
_user_specified_name559875:&"
 
_user_specified_name559873:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_13_560775E
7dense_5_bias_regularizer_l2loss_readvariableop_resource:
identity��.dense_5/bias/Regularizer/L2Loss/ReadVariableOp�
.dense_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp7dense_5_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/bias/Regularizer/L2LossL2Loss6dense_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0(dense_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense_5/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp/^dense_5/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_5/bias/Regularizer/L2Loss/ReadVariableOp.dense_5/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�	
�
__inference_loss_fn_10_560751M
9dense_4_kernel_regularizer_l2loss_readvariableop_resource:
�*�
identity��0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp�
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9dense_4_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
�*�*
dtype0�
!dense_4/kernel/Regularizer/L2LossL2Loss8dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0*dense_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^dense_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp0dense_4/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
e
I__inference_activation_13_layer_call_and_return_conditional_losses_558737

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:���������ddb
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:���������dd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd:W S
/
_output_shapes
:���������dd
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559843
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
Q
5__inference_average_pooling2d_10_layer_call_fn_560221

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_558416�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_7_560727G
9conv2d_13_bias_regularizer_l2loss_readvariableop_resource:@
identity��0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp�
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp9conv2d_13_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:@*
dtype0�
!conv2d_13/bias/Regularizer/L2LossL2Loss8conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_13/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_13/bias/Regularizer/mulMul)conv2d_13/bias/Regularizer/mul/x:output:0*conv2d_13/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"conv2d_13/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_13/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_13_layer_call_fn_560020

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558295�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560016:&"
 
_user_specified_name560014:&"
 
_user_specified_name560012:&"
 
_user_specified_name560010:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
Q
5__inference_average_pooling2d_11_layer_call_fn_560358

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_558488�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559788
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559932

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559768
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
(__inference_model_2_layer_call_fn_559394

config!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: @

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
�*�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconfigunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_559232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&&"
 
_user_specified_name559390:&%"
 
_user_specified_name559388:&$"
 
_user_specified_name559386:&#"
 
_user_specified_name559384:&""
 
_user_specified_name559382:&!"
 
_user_specified_name559380:& "
 
_user_specified_name559378:&"
 
_user_specified_name559376:&"
 
_user_specified_name559374:&"
 
_user_specified_name559372:&"
 
_user_specified_name559370:&"
 
_user_specified_name559368:&"
 
_user_specified_name559366:&"
 
_user_specified_name559364:&"
 
_user_specified_name559362:&"
 
_user_specified_name559360:&"
 
_user_specified_name559358:&"
 
_user_specified_name559356:&"
 
_user_specified_name559354:&"
 
_user_specified_name559352:&"
 
_user_specified_name559350:&"
 
_user_specified_name559348:&"
 
_user_specified_name559346:&"
 
_user_specified_name559344:&"
 
_user_specified_name559342:&"
 
_user_specified_name559340:&"
 
_user_specified_name559338:&"
 
_user_specified_name559336:&
"
 
_user_specified_name559334:&	"
 
_user_specified_name559332:&"
 
_user_specified_name559330:&"
 
_user_specified_name559328:&"
 
_user_specified_name559326:&"
 
_user_specified_name559324:&"
 
_user_specified_name559322:&"
 
_user_specified_name559320:&"
 
_user_specified_name559318:&"
 
_user_specified_name559316:Y U
1
_output_shapes
:�����������
 
_user_specified_nameconfig
�
p
7__inference_mc_spatial_dropout2d_9_layer_call_fn_560094

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_558762w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������22<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2222
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_14_layer_call_fn_560170

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558385�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560166:&"
 
_user_specified_name560164:&"
 
_user_specified_name560162:&"
 
_user_specified_name560160:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
e
I__inference_activation_12_layer_call_and_return_conditional_losses_559942

inputs
identityP
SeluSeluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentitySelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_16_layer_call_fn_560444

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_558529�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560440:&"
 
_user_specified_name560438:&"
 
_user_specified_name560436:&"
 
_user_specified_name560434:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
P
4__inference_average_pooling2d_8_layer_call_fn_559947

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_558272�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559773
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
r
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_558888

inputs
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_559783
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�

�
7__inference_batch_normalization_12_layer_call_fn_559896

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558241�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name559892:&"
 
_user_specified_name559890:&"
 
_user_specified_name559888:&"
 
_user_specified_name559886:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_10_layer_call_fn_559852

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_558655y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name559848:&"
 
_user_specified_name559846:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_4_layer_call_fn_560510

inputs
unknown:
�*�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_558952p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560506:&"
 
_user_specified_name560504:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_558241

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
e
I__inference_activation_16_layer_call_and_return_conditional_losses_558926

inputs
identityN
SeluSeluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentitySelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
e
I__inference_activation_17_layer_call_and_return_conditional_losses_560618

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:����������Z
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_6_560719U
;conv2d_13_kernel_regularizer_l2loss_readvariableop_resource: @
identity��2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp�
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;conv2d_13_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#conv2d_13/kernel/Regularizer/L2LossL2Loss:conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0,conv2d_13/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_13/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_13/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
L
#__inference__update_step_xla_559823
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
K
#__inference__update_step_xla_559723
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�	
�
__inference_loss_fn_0_560671U
;conv2d_10_kernel_regularizer_l2loss_readvariableop_resource:
identity��2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp�
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;conv2d_10_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_10/kernel/Regularizer/L2LossL2Loss:conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_10/kernel/Regularizer/mulMul+conv2d_10/kernel/Regularizer/mul/x:output:0,conv2d_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_10/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
f
-__inference_mc_dropout_2_layer_call_fn_560623

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_558984p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
J
.__inference_activation_12_layer_call_fn_559937

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_558674j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_5_layer_call_fn_560644

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_559004o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560640:&"
 
_user_specified_name560638:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_558609

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
Q
#__inference__update_step_xla_559818
gradient
variable:
�*�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
�*�: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
�*�
"
_user_specified_name
gradient
�
�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559914

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
P
#__inference__update_step_xla_559838
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�
"
_user_specified_name
gradient
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_558655

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp�2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#conv2d_10/kernel/Regularizer/L2LossL2Loss:conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: g
"conv2d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
 conv2d_10/kernel/Regularizer/mulMul+conv2d_10/kernel/Regularizer/mul/x:output:0,conv2d_10/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!conv2d_10/bias/Regularizer/L2LossL2Loss8conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_10/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_10/bias/Regularizer/mulMul)conv2d_10/bias/Regularizer/mul/x:output:0*conv2d_10/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp1^conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp3^conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2d
0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_10/bias/Regularizer/L2Loss/ReadVariableOp2h
2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp2conv2d_10/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560206

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_558457

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
q
8__inference_mc_spatial_dropout2d_10_layer_call_fn_560231

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_558825w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_558313

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
q
8__inference_mc_spatial_dropout2d_11_layer_call_fn_560368

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_558888w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_558933

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_14_layer_call_fn_560157

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_558367�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name560153:&"
 
_user_specified_name560151:&"
 
_user_specified_name560149:&"
 
_user_specified_name560147:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_5_560711G
9conv2d_12_bias_regularizer_l2loss_readvariableop_resource: 
identity��0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp�
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp9conv2d_12_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
: *
dtype0�
!conv2d_12/bias/Regularizer/L2LossL2Loss8conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 conv2d_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv2d_12/bias/Regularizer/mulMul)conv2d_12/bias/Regularizer/mul/x:output:0*conv2d_12/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"conv2d_12/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp0conv2d_12/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
config9
serving_default_config:0�����������;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer_with_weights-9
layer-22
layer-23
layer-24
layer_with_weights-10
layer-25
layer_with_weights-11
layer-26
layer-27
layer-28
layer_with_weights-12
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance"
_tf_keras_layer
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_random_generator"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
.0
/1
82
93
:4
;5
U6
V7
_8
`9
a10
b11
|12
}13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37"
trackable_list_wrapper
�
.0
/1
82
93
U4
V5
_6
`7
|8
}9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_model_2_layer_call_fn_559313
(__inference_model_2_layer_call_fn_559394�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_model_2_layer_call_and_return_conditional_losses_559067
C__inference_model_2_layer_call_and_return_conditional_losses_559232�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_558205config"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_10_layer_call_fn_559852�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_559870�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_12_layer_call_fn_559883
7__inference_batch_normalization_12_layer_call_fn_559896�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559914
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559932�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_12/gamma
):'2batch_normalization_12/beta
2:0 (2"batch_normalization_12/moving_mean
6:4 (2&batch_normalization_12/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_12_layer_call_fn_559937�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_12_layer_call_and_return_conditional_losses_559942�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_8_layer_call_fn_559947�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_559952�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_mc_spatial_dropout2d_8_layer_call_fn_559957�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_559980�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_11_layer_call_fn_559989�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_560007�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_11/kernel
:2conv2d_11/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
_0
`1
a2
b3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_13_layer_call_fn_560020
7__inference_batch_normalization_13_layer_call_fn_560033�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560051
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560069�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_13/gamma
):'2batch_normalization_13/beta
2:0 (2"batch_normalization_13/moving_mean
6:4 (2&batch_normalization_13/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_13_layer_call_fn_560074�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_13_layer_call_and_return_conditional_losses_560079�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_9_layer_call_fn_560084�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_560089�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
7__inference_mc_spatial_dropout2d_9_layer_call_fn_560094�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_560117�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_12_layer_call_fn_560126�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_560144�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_14_layer_call_fn_560157
7__inference_batch_normalization_14_layer_call_fn_560170�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560188
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560206�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_14/gamma
):' 2batch_normalization_14/beta
2:0  (2"batch_normalization_14/moving_mean
6:4  (2&batch_normalization_14/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_14_layer_call_fn_560211�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_14_layer_call_and_return_conditional_losses_560216�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_10_layer_call_fn_560221�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_560226�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_mc_spatial_dropout2d_10_layer_call_fn_560231�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_560254�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_13_layer_call_fn_560263�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_560281�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_15_layer_call_fn_560294
7__inference_batch_normalization_15_layer_call_fn_560307�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560325
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560343�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_15/gamma
):'@2batch_normalization_15/beta
2:0@ (2"batch_normalization_15/moving_mean
6:4@ (2&batch_normalization_15/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_15_layer_call_fn_560348�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_15_layer_call_and_return_conditional_losses_560353�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_11_layer_call_fn_560358�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_560363�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_mc_spatial_dropout2d_11_layer_call_fn_560368�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_560391�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_14_layer_call_fn_560400�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_560418�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@ 2conv2d_14/kernel
: 2conv2d_14/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_16_layer_call_fn_560431
7__inference_batch_normalization_16_layer_call_fn_560444�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560462
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560480�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_16/gamma
):' 2batch_normalization_16/beta
2:0  (2"batch_normalization_16/moving_mean
6:4  (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_16_layer_call_fn_560485�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_16_layer_call_and_return_conditional_losses_560490�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_2_layer_call_fn_560495�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_2_layer_call_and_return_conditional_losses_560501�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_4_layer_call_fn_560510�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_4_layer_call_and_return_conditional_losses_560528�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
�*�2dense_4/kernel
:�2dense_4/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_17_layer_call_fn_560541
7__inference_batch_normalization_17_layer_call_fn_560554�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560588
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560608�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_17/gamma
*:(�2batch_normalization_17/beta
3:1� (2"batch_normalization_17/moving_mean
7:5� (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_activation_17_layer_call_fn_560613�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_activation_17_layer_call_and_return_conditional_losses_560618�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_mc_dropout_2_layer_call_fn_560623�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_560635�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_5_layer_call_fn_560644�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_5_layer_call_and_return_conditional_losses_560663�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�2dense_5/kernel
:2dense_5/bias
�
�trace_02�
__inference_loss_fn_0_560671�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_560679�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_560687�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_560695�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_560703�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_560711�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_6_560719�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_7_560727�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_8_560735�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_9_560743�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_10_560751�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_11_560759�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_12_560767�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_13_560775�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
~
:0
;1
a2
b3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_2_layer_call_fn_559313config"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_2_layer_call_fn_559394config"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_2_layer_call_and_return_conditional_losses_559067config"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_2_layer_call_and_return_conditional_losses_559232config"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_252�
#__inference__update_step_xla_559718
#__inference__update_step_xla_559723
#__inference__update_step_xla_559728
#__inference__update_step_xla_559733
#__inference__update_step_xla_559738
#__inference__update_step_xla_559743
#__inference__update_step_xla_559748
#__inference__update_step_xla_559753
#__inference__update_step_xla_559758
#__inference__update_step_xla_559763
#__inference__update_step_xla_559768
#__inference__update_step_xla_559773
#__inference__update_step_xla_559778
#__inference__update_step_xla_559783
#__inference__update_step_xla_559788
#__inference__update_step_xla_559793
#__inference__update_step_xla_559798
#__inference__update_step_xla_559803
#__inference__update_step_xla_559808
#__inference__update_step_xla_559813
#__inference__update_step_xla_559818
#__inference__update_step_xla_559823
#__inference__update_step_xla_559828
#__inference__update_step_xla_559833
#__inference__update_step_xla_559838
#__inference__update_step_xla_559843�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21z�trace_22z�trace_23z�trace_24z�trace_25
�B�
$__inference_signature_wrapper_559657config"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jconfig
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_10_layer_call_fn_559852inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_559870inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_12_layer_call_fn_559883inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_12_layer_call_fn_559896inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559914inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559932inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_12_layer_call_fn_559937inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_12_layer_call_and_return_conditional_losses_559942inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_average_pooling2d_8_layer_call_fn_559947inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_559952inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_mc_spatial_dropout2d_8_layer_call_fn_559957inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_559980inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_11_layer_call_fn_559989inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_560007inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_13_layer_call_fn_560020inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_13_layer_call_fn_560033inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560051inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560069inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_13_layer_call_fn_560074inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_13_layer_call_and_return_conditional_losses_560079inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_average_pooling2d_9_layer_call_fn_560084inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_560089inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_mc_spatial_dropout2d_9_layer_call_fn_560094inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_560117inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_12_layer_call_fn_560126inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_560144inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_14_layer_call_fn_560157inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_14_layer_call_fn_560170inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560188inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560206inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_14_layer_call_fn_560211inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_14_layer_call_and_return_conditional_losses_560216inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_average_pooling2d_10_layer_call_fn_560221inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_560226inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_mc_spatial_dropout2d_10_layer_call_fn_560231inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_560254inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_13_layer_call_fn_560263inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_560281inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_15_layer_call_fn_560294inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_15_layer_call_fn_560307inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560325inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560343inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_15_layer_call_fn_560348inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_15_layer_call_and_return_conditional_losses_560353inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_average_pooling2d_11_layer_call_fn_560358inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_560363inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_mc_spatial_dropout2d_11_layer_call_fn_560368inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_560391inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_14_layer_call_fn_560400inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_560418inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_16_layer_call_fn_560431inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_16_layer_call_fn_560444inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560462inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560480inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_16_layer_call_fn_560485inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_16_layer_call_and_return_conditional_losses_560490inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_flatten_2_layer_call_fn_560495inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_2_layer_call_and_return_conditional_losses_560501inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_4_layer_call_fn_560510inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_4_layer_call_and_return_conditional_losses_560528inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_17_layer_call_fn_560541inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_17_layer_call_fn_560554inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560588inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560608inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_activation_17_layer_call_fn_560613inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_activation_17_layer_call_and_return_conditional_losses_560618inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_mc_dropout_2_layer_call_fn_560623inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_560635inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_5_layer_call_fn_560644inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_5_layer_call_and_return_conditional_losses_560663inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_560671"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_560679"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_560687"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_560695"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_560703"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_560711"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_6_560719"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_7_560727"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_8_560735"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_9_560743"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_10_560751"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_11_560759"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_12_560767"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_13_560775"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_10/kernel
/:-2Adam/v/conv2d_10/kernel
!:2Adam/m/conv2d_10/bias
!:2Adam/v/conv2d_10/bias
/:-2#Adam/m/batch_normalization_12/gamma
/:-2#Adam/v/batch_normalization_12/gamma
.:,2"Adam/m/batch_normalization_12/beta
.:,2"Adam/v/batch_normalization_12/beta
/:-2Adam/m/conv2d_11/kernel
/:-2Adam/v/conv2d_11/kernel
!:2Adam/m/conv2d_11/bias
!:2Adam/v/conv2d_11/bias
/:-2#Adam/m/batch_normalization_13/gamma
/:-2#Adam/v/batch_normalization_13/gamma
.:,2"Adam/m/batch_normalization_13/beta
.:,2"Adam/v/batch_normalization_13/beta
/:- 2Adam/m/conv2d_12/kernel
/:- 2Adam/v/conv2d_12/kernel
!: 2Adam/m/conv2d_12/bias
!: 2Adam/v/conv2d_12/bias
/:- 2#Adam/m/batch_normalization_14/gamma
/:- 2#Adam/v/batch_normalization_14/gamma
.:, 2"Adam/m/batch_normalization_14/beta
.:, 2"Adam/v/batch_normalization_14/beta
/:- @2Adam/m/conv2d_13/kernel
/:- @2Adam/v/conv2d_13/kernel
!:@2Adam/m/conv2d_13/bias
!:@2Adam/v/conv2d_13/bias
/:-@2#Adam/m/batch_normalization_15/gamma
/:-@2#Adam/v/batch_normalization_15/gamma
.:,@2"Adam/m/batch_normalization_15/beta
.:,@2"Adam/v/batch_normalization_15/beta
/:-@ 2Adam/m/conv2d_14/kernel
/:-@ 2Adam/v/conv2d_14/kernel
!: 2Adam/m/conv2d_14/bias
!: 2Adam/v/conv2d_14/bias
/:- 2#Adam/m/batch_normalization_16/gamma
/:- 2#Adam/v/batch_normalization_16/gamma
.:, 2"Adam/m/batch_normalization_16/beta
.:, 2"Adam/v/batch_normalization_16/beta
':%
�*�2Adam/m/dense_4/kernel
':%
�*�2Adam/v/dense_4/kernel
 :�2Adam/m/dense_4/bias
 :�2Adam/v/dense_4/bias
0:.�2#Adam/m/batch_normalization_17/gamma
0:.�2#Adam/v/batch_normalization_17/gamma
/:-�2"Adam/m/batch_normalization_17/beta
/:-�2"Adam/v/batch_normalization_17/beta
&:$	�2Adam/m/dense_5/kernel
&:$	�2Adam/v/dense_5/kernel
:2Adam/m/dense_5/bias
:2Adam/v/dense_5/bias
�B�
#__inference__update_step_xla_559718gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559723gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559728gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559733gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559738gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559743gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559748gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559753gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559758gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559763gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559768gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559773gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559778gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559783gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559788gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559793gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559798gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559803gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559808gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559813gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559818gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559823gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559828gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559833gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559838gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_559843gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
#__inference__update_step_xla_559718~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559723f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559728f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��́��?
� "
 �
#__inference__update_step_xla_559733f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��́��?
� "
 �
#__inference__update_step_xla_559738~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559743f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559748f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��́��?
� "
 �
#__inference__update_step_xla_559753f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��́��?
� "
 �
#__inference__update_step_xla_559758~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559763f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559768f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559773f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559778~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559783f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559788f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559793f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�ۋ���?
� "
 �
#__inference__update_step_xla_559798~x�u
n�k
!�
gradient@ 
<�9	%�"
�@ 
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559803f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_559808f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�㵇��?
� "
 �
#__inference__update_step_xla_559813f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�Ƶ���?
� "
 �
#__inference__update_step_xla_559818rl�i
b�_
�
gradient
�*�
6�3	�
�
�*�
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559823hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559828hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ڴ���?
� "
 �
#__inference__update_step_xla_559833hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ܴ���?
� "
 �
#__inference__update_step_xla_559838pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_559843f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
!__inference__wrapped_model_558205�>./89:;UV_`ab|}������������������������9�6
/�,
*�'
config�����������
� "1�.
,
dense_5!�
dense_5����������
I__inference_activation_12_layer_call_and_return_conditional_losses_559942s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
.__inference_activation_12_layer_call_fn_559937h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
I__inference_activation_13_layer_call_and_return_conditional_losses_560079o7�4
-�*
(�%
inputs���������dd
� "4�1
*�'
tensor_0���������dd
� �
.__inference_activation_13_layer_call_fn_560074d7�4
-�*
(�%
inputs���������dd
� ")�&
unknown���������dd�
I__inference_activation_14_layer_call_and_return_conditional_losses_560216o7�4
-�*
(�%
inputs���������22 
� "4�1
*�'
tensor_0���������22 
� �
.__inference_activation_14_layer_call_fn_560211d7�4
-�*
(�%
inputs���������22 
� ")�&
unknown���������22 �
I__inference_activation_15_layer_call_and_return_conditional_losses_560353o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
.__inference_activation_15_layer_call_fn_560348d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
I__inference_activation_16_layer_call_and_return_conditional_losses_560490o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
.__inference_activation_16_layer_call_fn_560485d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
I__inference_activation_17_layer_call_and_return_conditional_losses_560618a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
.__inference_activation_17_layer_call_fn_560613V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_560226�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
5__inference_average_pooling2d_10_layer_call_fn_560221�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_560363�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
5__inference_average_pooling2d_11_layer_call_fn_560358�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
O__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_559952�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_8_layer_call_fn_559947�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_560089�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_9_layer_call_fn_560084�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559914�89:;Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_559932�89:;Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
7__inference_batch_normalization_12_layer_call_fn_559883�89:;Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
7__inference_batch_normalization_12_layer_call_fn_559896�89:;Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560051�_`abQ�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_560069�_`abQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
7__inference_batch_normalization_13_layer_call_fn_560020�_`abQ�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
7__inference_batch_normalization_13_layer_call_fn_560033�_`abQ�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560188�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_560206�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
7__inference_batch_normalization_14_layer_call_fn_560157�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
7__inference_batch_normalization_14_layer_call_fn_560170�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560325�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
R__inference_batch_normalization_15_layer_call_and_return_conditional_losses_560343�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
7__inference_batch_normalization_15_layer_call_fn_560294�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
7__inference_batch_normalization_15_layer_call_fn_560307�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560462�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_560480�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
7__inference_batch_normalization_16_layer_call_fn_560431�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
7__inference_batch_normalization_16_layer_call_fn_560444�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560588s����8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_560608s����8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
7__inference_batch_normalization_17_layer_call_fn_560541h����8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
7__inference_batch_normalization_17_layer_call_fn_560554h����8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
E__inference_conv2d_10_layer_call_and_return_conditional_losses_559870w./9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
*__inference_conv2d_10_layer_call_fn_559852l./9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
E__inference_conv2d_11_layer_call_and_return_conditional_losses_560007sUV7�4
-�*
(�%
inputs���������dd
� "4�1
*�'
tensor_0���������dd
� �
*__inference_conv2d_11_layer_call_fn_559989hUV7�4
-�*
(�%
inputs���������dd
� ")�&
unknown���������dd�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_560144s|}7�4
-�*
(�%
inputs���������22
� "4�1
*�'
tensor_0���������22 
� �
*__inference_conv2d_12_layer_call_fn_560126h|}7�4
-�*
(�%
inputs���������22
� ")�&
unknown���������22 �
E__inference_conv2d_13_layer_call_and_return_conditional_losses_560281u��7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
*__inference_conv2d_13_layer_call_fn_560263j��7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_560418u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0��������� 
� �
*__inference_conv2d_14_layer_call_fn_560400j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown��������� �
C__inference_dense_4_layer_call_and_return_conditional_losses_560528g��0�-
&�#
!�
inputs����������*
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_4_layer_call_fn_560510\��0�-
&�#
!�
inputs����������*
� ""�
unknown�����������
C__inference_dense_5_layer_call_and_return_conditional_losses_560663f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
(__inference_dense_5_layer_call_fn_560644[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
E__inference_flatten_2_layer_call_and_return_conditional_losses_560501h7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
tensor_0����������*
� �
*__inference_flatten_2_layer_call_fn_560495]7�4
-�*
(�%
inputs��������� 
� ""�
unknown����������*D
__inference_loss_fn_0_560671$.�

� 
� "�
unknown F
__inference_loss_fn_10_560751%��

� 
� "�
unknown F
__inference_loss_fn_11_560759%��

� 
� "�
unknown F
__inference_loss_fn_12_560767%��

� 
� "�
unknown F
__inference_loss_fn_13_560775%��

� 
� "�
unknown D
__inference_loss_fn_1_560679$/�

� 
� "�
unknown D
__inference_loss_fn_2_560687$U�

� 
� "�
unknown D
__inference_loss_fn_3_560695$V�

� 
� "�
unknown D
__inference_loss_fn_4_560703$|�

� 
� "�
unknown D
__inference_loss_fn_5_560711$}�

� 
� "�
unknown E
__inference_loss_fn_6_560719%��

� 
� "�
unknown E
__inference_loss_fn_7_560727%��

� 
� "�
unknown E
__inference_loss_fn_8_560735%��

� 
� "�
unknown E
__inference_loss_fn_9_560743%��

� 
� "�
unknown �
H__inference_mc_dropout_2_layer_call_and_return_conditional_losses_560635a0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
-__inference_mc_dropout_2_layer_call_fn_560623V0�-
&�#
!�
inputs����������
� ""�
unknown�����������
S__inference_mc_spatial_dropout2d_10_layer_call_and_return_conditional_losses_560254o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
8__inference_mc_spatial_dropout2d_10_layer_call_fn_560231d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
S__inference_mc_spatial_dropout2d_11_layer_call_and_return_conditional_losses_560391o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
8__inference_mc_spatial_dropout2d_11_layer_call_fn_560368d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
R__inference_mc_spatial_dropout2d_8_layer_call_and_return_conditional_losses_559980o7�4
-�*
(�%
inputs���������dd
� "4�1
*�'
tensor_0���������dd
� �
7__inference_mc_spatial_dropout2d_8_layer_call_fn_559957d7�4
-�*
(�%
inputs���������dd
� ")�&
unknown���������dd�
R__inference_mc_spatial_dropout2d_9_layer_call_and_return_conditional_losses_560117o7�4
-�*
(�%
inputs���������22
� "4�1
*�'
tensor_0���������22
� �
7__inference_mc_spatial_dropout2d_9_layer_call_fn_560094d7�4
-�*
(�%
inputs���������22
� ")�&
unknown���������22�
C__inference_model_2_layer_call_and_return_conditional_losses_559067�>./89:;UV_`ab|}������������������������A�>
7�4
*�'
config�����������
p

 
� ",�)
"�
tensor_0���������
� �
C__inference_model_2_layer_call_and_return_conditional_losses_559232�>./89:;UV_`ab|}������������������������A�>
7�4
*�'
config�����������
p 

 
� ",�)
"�
tensor_0���������
� �
(__inference_model_2_layer_call_fn_559313�>./89:;UV_`ab|}������������������������A�>
7�4
*�'
config�����������
p

 
� "!�
unknown����������
(__inference_model_2_layer_call_fn_559394�>./89:;UV_`ab|}������������������������A�>
7�4
*�'
config�����������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_559657�>./89:;UV_`ab|}������������������������C�@
� 
9�6
4
config*�'
config�����������"1�.
,
dense_5!�
dense_5���������