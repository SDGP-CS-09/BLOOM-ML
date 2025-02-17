��
�#�#
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
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
,
Cos
x"T
y"T"
Ttype:

2
$
DisableCopyOnRead
resource�
A
EnsureShape

input"T
output"T"
shapeshape"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
�
ImageProjectiveTransformV3
images"dtype

transforms
output_shape

fill_value
transformed_images"dtype"
dtypetype:
	2	"
interpolationstring"
	fill_modestring
CONSTANT
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
0
Neg
x"T
y"T"
Ttype:
2
	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
,
Sin
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
^
StatelessRandomGetKeyCounter
seed"Tseed
key
counter"
Tseedtype0	:
2	
�
StatelessRandomUniformV2
shape"Tshape
key
counter
alg
output"dtype"
dtypetype0:
2"
Tshapetype0:
2	
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
,
Tan
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
%seed_generator_5/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_5/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_5/seed_generator_state
�
9seed_generator_5/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_5/seed_generator_state*
_output_shapes
:*
dtype0	
�
%seed_generator_4/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_4/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_4/seed_generator_state
�
9seed_generator_4/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_4/seed_generator_state*
_output_shapes
:*
dtype0	
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
��@*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��@*
dtype0
�
conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
�
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape:@�* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@�*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
�
dense_1/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_1/bias_1/*
dtype0*
shape:*
shared_namedense_1/bias_1
m
"dense_1/bias_1/Read/ReadVariableOpReadVariableOpdense_1/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpdense_1/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
dense_1/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_1/kernel_1/*
dtype0*
shape
:@*!
shared_namedense_1/kernel_1
u
$dense_1/kernel_1/Read/ReadVariableOpReadVariableOpdense_1/kernel_1*
_output_shapes

:@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpdense_1/kernel_1*
_class
loc:@Variable_1*
_output_shapes

:@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@*
dtype0
�
dense/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense/bias_1/*
dtype0*
shape:@*
shared_namedense/bias_1
i
 dense/bias_1/Read/ReadVariableOpReadVariableOpdense/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpdense/bias_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
dense/kernel_1VarHandleOp*
_output_shapes
: *

debug_namedense/kernel_1/*
dtype0*
shape:
��@*
shared_namedense/kernel_1
s
"dense/kernel_1/Read/ReadVariableOpReadVariableOpdense/kernel_1* 
_output_shapes
:
��@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpdense/kernel_1*
_class
loc:@Variable_3* 
_output_shapes
:
��@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:
��@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
k
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3* 
_output_shapes
:
��@*
dtype0
�
conv2d_3/bias_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/bias_1/*
dtype0*
shape:�* 
shared_nameconv2d_3/bias_1
p
#conv2d_3/bias_1/Read/ReadVariableOpReadVariableOpconv2d_3/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpconv2d_3/bias_1*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernel_1VarHandleOp*
_output_shapes
: *"

debug_nameconv2d_3/kernel_1/*
dtype0*
shape:��*"
shared_nameconv2d_3/kernel_1
�
%conv2d_3/kernel_1/Read/ReadVariableOpReadVariableOpconv2d_3/kernel_1*(
_output_shapes
:��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpconv2d_3/kernel_1*
_class
loc:@Variable_5*(
_output_shapes
:��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
s
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*(
_output_shapes
:��*
dtype0
�
conv2d_2/bias_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/bias_1/*
dtype0*
shape:�* 
shared_nameconv2d_2/bias_1
p
#conv2d_2/bias_1/Read/ReadVariableOpReadVariableOpconv2d_2/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpconv2d_2/bias_1*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernel_1VarHandleOp*
_output_shapes
: *"

debug_nameconv2d_2/kernel_1/*
dtype0*
shape:@�*"
shared_nameconv2d_2/kernel_1
�
%conv2d_2/kernel_1/Read/ReadVariableOpReadVariableOpconv2d_2/kernel_1*'
_output_shapes
:@�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpconv2d_2/kernel_1*
_class
loc:@Variable_7*'
_output_shapes
:@�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:@�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
r
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*'
_output_shapes
:@�*
dtype0
�
conv2d_1/bias_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/bias_1/*
dtype0*
shape:@* 
shared_nameconv2d_1/bias_1
o
#conv2d_1/bias_1/Read/ReadVariableOpReadVariableOpconv2d_1/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpconv2d_1/bias_1*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
conv2d_1/kernel_1VarHandleOp*
_output_shapes
: *"

debug_nameconv2d_1/kernel_1/*
dtype0*
shape: @*"
shared_nameconv2d_1/kernel_1

%conv2d_1/kernel_1/Read/ReadVariableOpReadVariableOpconv2d_1/kernel_1*&
_output_shapes
: @*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpconv2d_1/kernel_1*
_class
loc:@Variable_9*&
_output_shapes
: @*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape: @*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
q
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*&
_output_shapes
: @*
dtype0
�
conv2d/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias_1/*
dtype0*
shape: *
shared_nameconv2d/bias_1
k
!conv2d/bias_1/Read/ReadVariableOpReadVariableOpconv2d/bias_1*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpconv2d/bias_1*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
conv2d/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv2d/kernel_1/*
dtype0*
shape: * 
shared_nameconv2d/kernel_1
{
#conv2d/kernel_1/Read/ReadVariableOpReadVariableOpconv2d/kernel_1*&
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpconv2d/kernel_1*
_class
loc:@Variable_11*&
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
s
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*&
_output_shapes
: *
dtype0
�
'seed_generator_5/seed_generator_state_1VarHandleOp*
_output_shapes
: *8

debug_name*(seed_generator_5/seed_generator_state_1/*
dtype0	*
shape:*8
shared_name)'seed_generator_5/seed_generator_state_1
�
;seed_generator_5/seed_generator_state_1/Read/ReadVariableOpReadVariableOp'seed_generator_5/seed_generator_state_1*
_output_shapes
:*
dtype0	
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp'seed_generator_5/seed_generator_state_1*
_class
loc:@Variable_12*
_output_shapes
:*
dtype0	
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0	*
shape:*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0	
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:*
dtype0	
�
'seed_generator_4/seed_generator_state_1VarHandleOp*
_output_shapes
: *8

debug_name*(seed_generator_4/seed_generator_state_1/*
dtype0	*
shape:*8
shared_name)'seed_generator_4/seed_generator_state_1
�
;seed_generator_4/seed_generator_state_1/Read/ReadVariableOpReadVariableOp'seed_generator_4/seed_generator_state_1*
_output_shapes
:*
dtype0	
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp'seed_generator_4/seed_generator_state_1*
_class
loc:@Variable_13*
_output_shapes
:*
dtype0	
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0	*
shape:*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0	
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:*
dtype0	
�
serve_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_layer'seed_generator_4/seed_generator_state_1'seed_generator_5/seed_generator_state_1conv2d/kernel_1conv2d/bias_1conv2d_1/kernel_1conv2d_1/bias_1conv2d_2/kernel_1conv2d_2/bias_1conv2d_3/kernel_1conv2d_3/bias_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *5
f0R.
,__inference_signature_wrapper___call___14666
�
serving_default_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_layer'seed_generator_4/seed_generator_state_1'seed_generator_5/seed_generator_state_1conv2d/kernel_1conv2d/bias_1conv2d_1/kernel_1conv2d_1/bias_1conv2d_2/kernel_1conv2d_2/bias_1conv2d_3/kernel_1conv2d_3/bias_1dense/kernel_1dense/bias_1dense_1/kernel_1dense_1/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *5
f0R.
,__inference_signature_wrapper___call___14699

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
j
0
	1

2
3
4
5
6
7
8
9
10
11
12
13*
Z

0
1
2
3
4
5
6
7
8
9
10
11*

0
	1*
j
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13*
* 

$trace_0* 
"
	%serve
&serving_default* 
KE
VARIABLE_VALUEVariable_13&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_12&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_11&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_10&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_1/kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_2/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_3/kernel_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense/bias_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_1/bias_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d_1/bias_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d_2/bias_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv2d_3/bias_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense/kernel_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_1/kernel_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE'seed_generator_4/seed_generator_state_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE'seed_generator_5/seed_generator_state_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableconv2d/kernel_1conv2d_1/kernel_1conv2d_2/kernel_1conv2d_3/kernel_1dense/bias_1dense_1/bias_1conv2d/bias_1conv2d_1/bias_1conv2d_2/bias_1conv2d_3/bias_1dense/kernel_1dense_1/kernel_1'seed_generator_4/seed_generator_state_1'seed_generator_5/seed_generator_state_1Const*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *'
f"R 
__inference__traced_save_14947
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableconv2d/kernel_1conv2d_1/kernel_1conv2d_2/kernel_1conv2d_3/kernel_1dense/bias_1dense_1/bias_1conv2d/bias_1conv2d_1/bias_1conv2d_2/bias_1conv2d_3/bias_1dense/kernel_1dense_1/kernel_1'seed_generator_4/seed_generator_state_1'seed_generator_5/seed_generator_state_1*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J **
f%R#
!__inference__traced_restore_15040��
�
�
,__inference_signature_wrapper___call___14699
input_layer
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
��@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *#
fR
__inference___call___14632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:%!

_user_specified_name14669:%!

_user_specified_name14671:%!

_user_specified_name14673:%!

_user_specified_name14675:%!

_user_specified_name14677:%!

_user_specified_name14679:%!

_user_specified_name14681:%!

_user_specified_name14683:%	!

_user_specified_name14685:%
!

_user_specified_name14687:%!

_user_specified_name14689:%!

_user_specified_name14691:%!

_user_specified_name14693:%!

_user_specified_name14695
�
�
!__inference__traced_restore_15040
file_prefix*
assignvariableop_variable_13:	,
assignvariableop_1_variable_12:	8
assignvariableop_2_variable_11: ,
assignvariableop_3_variable_10: 7
assignvariableop_4_variable_9: @+
assignvariableop_5_variable_8:@8
assignvariableop_6_variable_7:@�,
assignvariableop_7_variable_6:	�9
assignvariableop_8_variable_5:��,
assignvariableop_9_variable_4:	�2
assignvariableop_10_variable_3:
��@,
assignvariableop_11_variable_2:@0
assignvariableop_12_variable_1:@*
assignvariableop_13_variable:=
#assignvariableop_14_conv2d_kernel_1: ?
%assignvariableop_15_conv2d_1_kernel_1: @@
%assignvariableop_16_conv2d_2_kernel_1:@�A
%assignvariableop_17_conv2d_3_kernel_1:��.
 assignvariableop_18_dense_bias_1:@0
"assignvariableop_19_dense_1_bias_1:/
!assignvariableop_20_conv2d_bias_1: 1
#assignvariableop_21_conv2d_1_bias_1:@2
#assignvariableop_22_conv2d_2_bias_1:	�2
#assignvariableop_23_conv2d_3_bias_1:	�6
"assignvariableop_24_dense_kernel_1:
��@6
$assignvariableop_25_dense_1_kernel_1:@I
;assignvariableop_26_seed_generator_4_seed_generator_state_1:	I
;assignvariableop_27_seed_generator_5_seed_generator_state_1:	
identity_29��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_13Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_12Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_11Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_10Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_9Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_8Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_7Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_6Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_5Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_4Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_3Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_2Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variableIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_kernel_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp%assignvariableop_15_conv2d_1_kernel_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv2d_2_kernel_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp%assignvariableop_17_conv2d_3_kernel_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_bias_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_1_bias_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp!assignvariableop_20_conv2d_bias_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp#assignvariableop_21_conv2d_1_bias_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_2_bias_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv2d_3_bias_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_kernel_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp$assignvariableop_25_dense_1_kernel_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp;assignvariableop_26_seed_generator_4_seed_generator_state_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp;assignvariableop_27_seed_generator_5_seed_generator_state_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*	&
$
_user_specified_name
Variable_5:*
&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:/+
)
_user_specified_nameconv2d/kernel_1:1-
+
_user_specified_nameconv2d_1/kernel_1:1-
+
_user_specified_nameconv2d_2/kernel_1:1-
+
_user_specified_nameconv2d_3/kernel_1:,(
&
_user_specified_namedense/bias_1:.*
(
_user_specified_namedense_1/bias_1:-)
'
_user_specified_nameconv2d/bias_1:/+
)
_user_specified_nameconv2d_1/bias_1:/+
)
_user_specified_nameconv2d_2/bias_1:/+
)
_user_specified_nameconv2d_3/bias_1:.*
(
_user_specified_namedense/kernel_1:0,
*
_user_specified_namedense_1/kernel_1:GC
A
_user_specified_name)'seed_generator_4/seed_generator_state_1:GC
A
_user_specified_name)'seed_generator_5/seed_generator_state_1
��
�
__inference__traced_save_14947
file_prefix0
"read_disablecopyonread_variable_13:	2
$read_1_disablecopyonread_variable_12:	>
$read_2_disablecopyonread_variable_11: 2
$read_3_disablecopyonread_variable_10: =
#read_4_disablecopyonread_variable_9: @1
#read_5_disablecopyonread_variable_8:@>
#read_6_disablecopyonread_variable_7:@�2
#read_7_disablecopyonread_variable_6:	�?
#read_8_disablecopyonread_variable_5:��2
#read_9_disablecopyonread_variable_4:	�8
$read_10_disablecopyonread_variable_3:
��@2
$read_11_disablecopyonread_variable_2:@6
$read_12_disablecopyonread_variable_1:@0
"read_13_disablecopyonread_variable:C
)read_14_disablecopyonread_conv2d_kernel_1: E
+read_15_disablecopyonread_conv2d_1_kernel_1: @F
+read_16_disablecopyonread_conv2d_2_kernel_1:@�G
+read_17_disablecopyonread_conv2d_3_kernel_1:��4
&read_18_disablecopyonread_dense_bias_1:@6
(read_19_disablecopyonread_dense_1_bias_1:5
'read_20_disablecopyonread_conv2d_bias_1: 7
)read_21_disablecopyonread_conv2d_1_bias_1:@8
)read_22_disablecopyonread_conv2d_2_bias_1:	�8
)read_23_disablecopyonread_conv2d_3_bias_1:	�<
(read_24_disablecopyonread_dense_kernel_1:
��@<
*read_25_disablecopyonread_dense_1_kernel_1:@O
Aread_26_disablecopyonread_seed_generator_4_seed_generator_state_1:	O
Aread_27_disablecopyonread_seed_generator_5_seed_generator_state_1:	
savev2_const
identity_57��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_13*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_13^Read/DisableCopyOnRead*
_output_shapes
:*
dtype0	V
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
:i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_12*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_12^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0	Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0	*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0	*
_output_shapes
:i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_11*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_11^Read_2/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_10*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_10^Read_3/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_9*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_9^Read_4/DisableCopyOnRead*&
_output_shapes
: @*
dtype0f

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_8*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_8^Read_5/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_7*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_7^Read_6/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0h
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_6*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_6^Read_7/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_5*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_5^Read_8/DisableCopyOnRead*(
_output_shapes
:��*
dtype0i
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*(
_output_shapes
:��h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_4*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_4^Read_9/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_variable_3*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_variable_3^Read_10/DisableCopyOnRead* 
_output_shapes
:
��@*
dtype0b
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��@g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@j
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_variable_2*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_variable_2^Read_11/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_12/DisableCopyOnReadDisableCopyOnRead$read_12_disablecopyonread_variable_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp$read_12_disablecopyonread_variable_1^Read_12/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_13/DisableCopyOnReadDisableCopyOnRead"read_13_disablecopyonread_variable*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp"read_13_disablecopyonread_variable^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:o
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv2d_kernel_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv2d_kernel_1^Read_14/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: q
Read_15/DisableCopyOnReadDisableCopyOnRead+read_15_disablecopyonread_conv2d_1_kernel_1*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp+read_15_disablecopyonread_conv2d_1_kernel_1^Read_15/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: @q
Read_16/DisableCopyOnReadDisableCopyOnRead+read_16_disablecopyonread_conv2d_2_kernel_1*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp+read_16_disablecopyonread_conv2d_2_kernel_1^Read_16/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�q
Read_17/DisableCopyOnReadDisableCopyOnRead+read_17_disablecopyonread_conv2d_3_kernel_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp+read_17_disablecopyonread_conv2d_3_kernel_1^Read_17/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*(
_output_shapes
:��l
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_dense_bias_1*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_dense_bias_1^Read_18/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:@n
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_dense_1_bias_1*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_dense_1_bias_1^Read_19/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:m
Read_20/DisableCopyOnReadDisableCopyOnRead'read_20_disablecopyonread_conv2d_bias_1*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp'read_20_disablecopyonread_conv2d_bias_1^Read_20/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: o
Read_21/DisableCopyOnReadDisableCopyOnRead)read_21_disablecopyonread_conv2d_1_bias_1*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp)read_21_disablecopyonread_conv2d_1_bias_1^Read_21/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@o
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_conv2d_2_bias_1*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_conv2d_2_bias_1^Read_22/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:�o
Read_23/DisableCopyOnReadDisableCopyOnRead)read_23_disablecopyonread_conv2d_3_bias_1*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp)read_23_disablecopyonread_conv2d_3_bias_1^Read_23/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�n
Read_24/DisableCopyOnReadDisableCopyOnRead(read_24_disablecopyonread_dense_kernel_1*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp(read_24_disablecopyonread_dense_kernel_1^Read_24/DisableCopyOnRead* 
_output_shapes
:
��@*
dtype0b
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��@g
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@p
Read_25/DisableCopyOnReadDisableCopyOnRead*read_25_disablecopyonread_dense_1_kernel_1*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp*read_25_disablecopyonread_dense_1_kernel_1^Read_25/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_26/DisableCopyOnReadDisableCopyOnReadAread_26_disablecopyonread_seed_generator_4_seed_generator_state_1*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpAread_26_disablecopyonread_seed_generator_4_seed_generator_state_1^Read_26/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnReadAread_27_disablecopyonread_seed_generator_5_seed_generator_state_1*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOpAread_27_disablecopyonread_seed_generator_5_seed_generator_state_1^Read_27/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0	*
_output_shapes
:L

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
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2				�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*	&
$
_user_specified_name
Variable_5:*
&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:/+
)
_user_specified_nameconv2d/kernel_1:1-
+
_user_specified_nameconv2d_1/kernel_1:1-
+
_user_specified_nameconv2d_2/kernel_1:1-
+
_user_specified_nameconv2d_3/kernel_1:,(
&
_user_specified_namedense/bias_1:.*
(
_user_specified_namedense_1/bias_1:-)
'
_user_specified_nameconv2d/bias_1:/+
)
_user_specified_nameconv2d_1/bias_1:/+
)
_user_specified_nameconv2d_2/bias_1:/+
)
_user_specified_nameconv2d_3/bias_1:.*
(
_user_specified_namedense/kernel_1:0,
*
_user_specified_namedense_1/kernel_1:GC
A
_user_specified_name)'seed_generator_4/seed_generator_state_1:GC
A
_user_specified_name)'seed_generator_5/seed_generator_state_1:=9

_output_shapes
: 

_user_specified_nameConst
ΰ
�
__inference___call___14632
input_layerQ
Csequential_2_1_sequential_1_2_random_flip_1_readvariableop_resource:	U
Gsequential_2_1_sequential_1_2_random_rotation_1_readvariableop_resource:	U
;sequential_2_1_conv2d_1_convolution_readvariableop_resource: E
7sequential_2_1_conv2d_1_reshape_readvariableop_resource: W
=sequential_2_1_conv2d_1_2_convolution_readvariableop_resource: @G
9sequential_2_1_conv2d_1_2_reshape_readvariableop_resource:@X
=sequential_2_1_conv2d_2_1_convolution_readvariableop_resource:@�H
9sequential_2_1_conv2d_2_1_reshape_readvariableop_resource:	�Y
=sequential_2_1_conv2d_3_1_convolution_readvariableop_resource:��H
9sequential_2_1_conv2d_3_1_reshape_readvariableop_resource:	�G
3sequential_2_1_dense_1_cast_readvariableop_resource:
��@D
6sequential_2_1_dense_1_biasadd_readvariableop_resource:@G
5sequential_2_1_dense_1_2_cast_readvariableop_resource:@F
8sequential_2_1_dense_1_2_biasadd_readvariableop_resource:
identity��.sequential_2_1/conv2d_1/Reshape/ReadVariableOp�2sequential_2_1/conv2d_1/convolution/ReadVariableOp�0sequential_2_1/conv2d_1_2/Reshape/ReadVariableOp�4sequential_2_1/conv2d_1_2/convolution/ReadVariableOp�0sequential_2_1/conv2d_2_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_2_1/convolution/ReadVariableOp�0sequential_2_1/conv2d_3_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_3_1/convolution/ReadVariableOp�-sequential_2_1/dense_1/BiasAdd/ReadVariableOp�*sequential_2_1/dense_1/Cast/ReadVariableOp�/sequential_2_1/dense_1_2/BiasAdd/ReadVariableOp�,sequential_2_1/dense_1_2/Cast/ReadVariableOp�>sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp�<sequential_2_1/sequential_1_2/random_flip_1/AssignVariableOp�:sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOp�Bsequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOp�@sequential_2_1/sequential_1_2/random_rotation_1/AssignVariableOp�>sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOpu
,sequential_2_1/sequential_1/resizing_1/ShapeShapeinput_layer*
T0*
_output_shapes
::���
:sequential_2_1/sequential_1/resizing_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<sequential_2_1/sequential_1/resizing_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential_2_1/sequential_1/resizing_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4sequential_2_1/sequential_1/resizing_1/strided_sliceStridedSlice5sequential_2_1/sequential_1/resizing_1/Shape:output:0Csequential_2_1/sequential_1/resizing_1/strided_slice/stack:output:0Esequential_2_1/sequential_1/resizing_1/strided_slice/stack_1:output:0Esequential_2_1/sequential_1/resizing_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
.sequential_2_1/sequential_1/resizing_1/Shape_1Shapeinput_layer*
T0*
_output_shapes
::���
<sequential_2_1/sequential_1/resizing_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>sequential_2_1/sequential_1/resizing_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2_1/sequential_1/resizing_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2_1/sequential_1/resizing_1/strided_slice_1StridedSlice7sequential_2_1/sequential_1/resizing_1/Shape_1:output:0Esequential_2_1/sequential_1/resizing_1/strided_slice_1/stack:output:0Gsequential_2_1/sequential_1/resizing_1/strided_slice_1/stack_1:output:0Gsequential_2_1/sequential_1/resizing_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2sequential_2_1/sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_2_1/sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearinput_layer;sequential_2_1/sequential_1/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(s
.sequential_2_1/sequential_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;u
0sequential_2_1/sequential_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    p
-sequential_2_1/sequential_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
+sequential_2_1/sequential_1/rescaling_1/mulMulMsequential_2_1/sequential_1/resizing_1/resize/ResizeBilinear:resized_images:07sequential_2_1/sequential_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
+sequential_2_1/sequential_1/rescaling_1/addAddV2/sequential_2_1/sequential_1/rescaling_1/mul:z:09sequential_2_1/sequential_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
1sequential_2_1/sequential_1_2/random_flip_1/ShapeShape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
?sequential_2_1/sequential_1_2/random_flip_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Asequential_2_1/sequential_1_2/random_flip_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential_2_1/sequential_1_2/random_flip_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_2_1/sequential_1_2/random_flip_1/strided_sliceStridedSlice:sequential_2_1/sequential_1_2/random_flip_1/Shape:output:0Hsequential_2_1/sequential_1_2/random_flip_1/strided_slice/stack:output:0Jsequential_2_1/sequential_1_2/random_flip_1/strided_slice/stack_1:output:0Jsequential_2_1/sequential_1_2/random_flip_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOpReadVariableOpCsequential_2_1_sequential_1_2_random_flip_1_readvariableop_resource*
_output_shapes
:*
dtype0	s
1sequential_2_1/sequential_1_2/random_flip_1/mul/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
/sequential_2_1/sequential_1_2/random_flip_1/mulMulBsequential_2_1/sequential_1_2/random_flip_1/ReadVariableOp:value:0:sequential_2_1/sequential_1_2/random_flip_1/mul/y:output:0*
T0	*
_output_shapes
:�
1sequential_2_1/sequential_1_2/random_flip_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
0sequential_2_1/sequential_1_2/random_flip_1/CastCast:sequential_2_1/sequential_1_2/random_flip_1/Const:output:0*

DstT0	*

SrcT0*
_output_shapes
:�
>sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOpReadVariableOpCsequential_2_1_sequential_1_2_random_flip_1_readvariableop_resource*
_output_shapes
:*
dtype0	�
/sequential_2_1/sequential_1_2/random_flip_1/AddAddV2Fsequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp:value:04sequential_2_1/sequential_1_2/random_flip_1/Cast:y:0*
T0	*
_output_shapes
:�
<sequential_2_1/sequential_1_2/random_flip_1/AssignVariableOpAssignVariableOpCsequential_2_1_sequential_1_2_random_flip_1_readvariableop_resource3sequential_2_1/sequential_1_2/random_flip_1/Add:z:0?^sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp;^sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOp*
_output_shapes
 *
dtype0	*
validate_shape(|
6sequential_2_1/sequential_1_2/random_flip_1/FloorMod/yConst*
_output_shapes
: *
dtype0	*
valueB	 R�����
4sequential_2_1/sequential_1_2/random_flip_1/FloorModFloorMod3sequential_2_1/sequential_1_2/random_flip_1/mul:z:0?sequential_2_1/sequential_1_2/random_flip_1/FloorMod/y:output:0*
T0	*
_output_shapes
:�
2sequential_2_1/sequential_1_2/random_flip_1/Cast_1Cast8sequential_2_1/sequential_1_2/random_flip_1/FloorMod:z:0*

DstT0*

SrcT0	*
_output_shapes
:y
4sequential_2_1/sequential_1_2/random_flip_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *    y
4sequential_2_1/sequential_1_2/random_flip_1/Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Lsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Lsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Lsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Jsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shapePackBsequential_2_1/sequential_1_2/random_flip_1/strided_slice:output:0Usequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/1:output:0Usequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/2:output:0Usequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape/3:output:0*
N*
T0*
_output_shapes
:�
asequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter6sequential_2_1/sequential_1_2/random_flip_1/Cast_1:y:0*
Tseed0* 
_output_shapes
::�
asequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
]sequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Ssequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/shape:output:0gsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ksequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*/
_output_shapes
:����������
Hsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/subSub=sequential_2_1/sequential_1_2/random_flip_1/Cast_3/x:output:0=sequential_2_1/sequential_1_2/random_flip_1/Cast_2/x:output:0*
T0*
_output_shapes
: �
Hsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/mulMulfsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/StatelessRandomUniformV2:output:0Lsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/sub:z:0*
T0*/
_output_shapes
:����������
Dsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniformAddV2Lsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform/mul:z:0=sequential_2_1/sequential_1_2/random_flip_1/Cast_2/x:output:0*
T0*/
_output_shapes
:���������x
3sequential_2_1/sequential_1_2/random_flip_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?�
5sequential_2_1/sequential_1_2/random_flip_1/LessEqual	LessEqualHsequential_2_1/sequential_1_2/random_flip_1/stateless_random_uniform:z:0<sequential_2_1/sequential_1_2/random_flip_1/Const_1:output:0*
T0*/
_output_shapes
:����������
3sequential_2_1/sequential_1_2/random_flip_1/Shape_1Shape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
Asequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential_2_1/sequential_1_2/random_flip_1/strided_slice_1StridedSlice<sequential_2_1/sequential_1_2/random_flip_1/Shape_1:output:0Jsequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stack:output:0Lsequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stack_1:output:0Lsequential_2_1/sequential_1_2/random_flip_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3sequential_2_1/sequential_1_2/random_flip_1/Shape_2Shape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
Asequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential_2_1/sequential_1_2/random_flip_1/strided_slice_2StridedSlice<sequential_2_1/sequential_1_2/random_flip_1/Shape_2:output:0Jsequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stack:output:0Lsequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stack_1:output:0Lsequential_2_1/sequential_1_2/random_flip_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_2_1/sequential_1_2/random_rotation_1/ShapeShape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
Csequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_2_1/sequential_1_2/random_rotation_1/strided_sliceStridedSlice>sequential_2_1/sequential_1_2/random_rotation_1/Shape:output:0Lsequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stack:output:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stack_1:output:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOpReadVariableOpGsequential_2_1_sequential_1_2_random_rotation_1_readvariableop_resource*
_output_shapes
:*
dtype0	w
5sequential_2_1/sequential_1_2/random_rotation_1/mul/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
3sequential_2_1/sequential_1_2/random_rotation_1/mulMulFsequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOp:value:0>sequential_2_1/sequential_1_2/random_rotation_1/mul/y:output:0*
T0	*
_output_shapes
:�
5sequential_2_1/sequential_1_2/random_rotation_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
4sequential_2_1/sequential_1_2/random_rotation_1/CastCast>sequential_2_1/sequential_1_2/random_rotation_1/Const:output:0*

DstT0	*

SrcT0*
_output_shapes
:�
Bsequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOpReadVariableOpGsequential_2_1_sequential_1_2_random_rotation_1_readvariableop_resource*
_output_shapes
:*
dtype0	�
3sequential_2_1/sequential_1_2/random_rotation_1/AddAddV2Jsequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOp:value:08sequential_2_1/sequential_1_2/random_rotation_1/Cast:y:0*
T0	*
_output_shapes
:�
@sequential_2_1/sequential_1_2/random_rotation_1/AssignVariableOpAssignVariableOpGsequential_2_1_sequential_1_2_random_rotation_1_readvariableop_resource7sequential_2_1/sequential_1_2/random_rotation_1/Add:z:0C^sequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOp?^sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOp*
_output_shapes
 *
dtype0	*
validate_shape(�
:sequential_2_1/sequential_1_2/random_rotation_1/FloorMod/yConst*
_output_shapes
: *
dtype0	*
valueB	 R�����
8sequential_2_1/sequential_1_2/random_rotation_1/FloorModFloorMod7sequential_2_1/sequential_1_2/random_rotation_1/mul:z:0Csequential_2_1/sequential_1_2/random_rotation_1/FloorMod/y:output:0*
T0	*
_output_shapes
:�
6sequential_2_1/sequential_1_2/random_rotation_1/Cast_1Cast<sequential_2_1/sequential_1_2/random_rotation_1/FloorMod:z:0*

DstT0*

SrcT0	*
_output_shapes
:}
8sequential_2_1/sequential_1_2/random_rotation_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��}
8sequential_2_1/sequential_1_2/random_rotation_1/Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
Nsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/shapePackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:�
esequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter:sequential_2_1/sequential_1_2/random_rotation_1/Cast_1:y:0*
Tseed0* 
_output_shapes
::�
esequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
asequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Wsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/shape:output:0ksequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0osequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0nsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Lsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/subSubAsequential_2_1/sequential_1_2/random_rotation_1/Cast_3/x:output:0Asequential_2_1/sequential_1_2/random_rotation_1/Cast_2/x:output:0*
T0*
_output_shapes
: �
Lsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/mulMuljsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/StatelessRandomUniformV2:output:0Psequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Hsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniformAddV2Psequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform/mul:z:0Asequential_2_1/sequential_1_2/random_rotation_1/Cast_2/x:output:0*
T0*#
_output_shapes
:����������
<sequential_2_1/sequential_1_2/random_rotation_1/zeros/packedPackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:�
;sequential_2_1/sequential_1_2/random_rotation_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5sequential_2_1/sequential_1_2/random_rotation_1/zerosFillEsequential_2_1/sequential_1_2/random_rotation_1/zeros/packed:output:0Dsequential_2_1/sequential_1_2/random_rotation_1/zeros/Const:output:0*
T0*#
_output_shapes
:����������
>sequential_2_1/sequential_1_2/random_rotation_1/zeros_1/packedPackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=sequential_2_1/sequential_1_2/random_rotation_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7sequential_2_1/sequential_1_2/random_rotation_1/zeros_1FillGsequential_2_1/sequential_1_2/random_rotation_1/zeros_1/packed:output:0Fsequential_2_1/sequential_1_2/random_rotation_1/zeros_1/Const:output:0*
T0*#
_output_shapes
:����������
;sequential_2_1/sequential_1_2/random_rotation_1/ones/packedPackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:
:sequential_2_1/sequential_1_2/random_rotation_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2_1/sequential_1_2/random_rotation_1/onesFillDsequential_2_1/sequential_1_2/random_rotation_1/ones/packed:output:0Csequential_2_1/sequential_1_2/random_rotation_1/ones/Const:output:0*
T0*#
_output_shapes
:����������
>sequential_2_1/sequential_1_2/random_rotation_1/zeros_2/packedPackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=sequential_2_1/sequential_1_2/random_rotation_1/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7sequential_2_1/sequential_1_2/random_rotation_1/zeros_2FillGsequential_2_1/sequential_1_2/random_rotation_1/zeros_2/packed:output:0Fsequential_2_1/sequential_1_2/random_rotation_1/zeros_2/Const:output:0*
T0*#
_output_shapes
:����������
>sequential_2_1/sequential_1_2/random_rotation_1/zeros_3/packedPackFsequential_2_1/sequential_1_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=sequential_2_1/sequential_1_2/random_rotation_1/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7sequential_2_1/sequential_1_2/random_rotation_1/zeros_3FillGsequential_2_1/sequential_1_2/random_rotation_1/zeros_3/packed:output:0Fsequential_2_1/sequential_1_2/random_rotation_1/zeros_3/Const:output:0*
T0*#
_output_shapes
:���������|
7sequential_2_1/sequential_1_2/random_rotation_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *5��<�
5sequential_2_1/sequential_1_2/random_rotation_1/mul_1MulLsequential_2_1/sequential_1_2/random_rotation_1/stateless_random_uniform:z:0@sequential_2_1/sequential_1_2/random_rotation_1/Const_1:output:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_2Mul@sequential_2_1/sequential_1_2/random_rotation_1/zeros_2:output:0@sequential_2_1/sequential_1_2/random_rotation_1/Const_1:output:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_3Mul@sequential_2_1/sequential_1_2/random_rotation_1/zeros_3:output:0@sequential_2_1/sequential_1_2/random_rotation_1/Const_1:output:0*
T0*#
_output_shapes
:����������
7sequential_2_1/sequential_1_2/random_rotation_1/Shape_1Shape9sequential_2_1/sequential_1_2/random_rotation_1/mul_1:z:0*
T0*
_output_shapes
::���
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1StridedSlice@sequential_2_1/sequential_1_2/random_rotation_1/Shape_1:output:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
8sequential_2_1/sequential_1_2/random_rotation_1/Cast_4/xConst*
_output_shapes
: *
dtype0*
value
B :��
6sequential_2_1/sequential_1_2/random_rotation_1/Cast_4CastAsequential_2_1/sequential_1_2/random_rotation_1/Cast_4/x:output:0*

DstT0*

SrcT0*
_output_shapes
: {
8sequential_2_1/sequential_1_2/random_rotation_1/Cast_5/xConst*
_output_shapes
: *
dtype0*
value
B :��
6sequential_2_1/sequential_1_2/random_rotation_1/Cast_5CastAsequential_2_1/sequential_1_2/random_rotation_1/Cast_5/x:output:0*

DstT0*

SrcT0*
_output_shapes
: z
5sequential_2_1/sequential_1_2/random_rotation_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3sequential_2_1/sequential_1_2/random_rotation_1/subSub:sequential_2_1/sequential_1_2/random_rotation_1/Cast_4:y:0>sequential_2_1/sequential_1_2/random_rotation_1/sub/y:output:0*
T0*
_output_shapes
: |
7sequential_2_1/sequential_1_2/random_rotation_1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
5sequential_2_1/sequential_1_2/random_rotation_1/mul_4Mul@sequential_2_1/sequential_1_2/random_rotation_1/mul_4/x:output:07sequential_2_1/sequential_1_2/random_rotation_1/sub:z:0*
T0*
_output_shapes
: |
7sequential_2_1/sequential_1_2/random_rotation_1/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_2_1/sequential_1_2/random_rotation_1/sub_1Sub:sequential_2_1/sequential_1_2/random_rotation_1/Cast_5:y:0@sequential_2_1/sequential_1_2/random_rotation_1/sub_1/y:output:0*
T0*
_output_shapes
: |
7sequential_2_1/sequential_1_2/random_rotation_1/mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
5sequential_2_1/sequential_1_2/random_rotation_1/mul_5Mul@sequential_2_1/sequential_1_2/random_rotation_1/mul_5/x:output:09sequential_2_1/sequential_1_2/random_rotation_1/sub_1:z:0*
T0*
_output_shapes
: �
3sequential_2_1/sequential_1_2/random_rotation_1/CosCos9sequential_2_1/sequential_1_2/random_rotation_1/mul_1:z:0*
T0*#
_output_shapes
:����������
3sequential_2_1/sequential_1_2/random_rotation_1/SinSin9sequential_2_1/sequential_1_2/random_rotation_1/mul_1:z:0*
T0*#
_output_shapes
:����������
3sequential_2_1/sequential_1_2/random_rotation_1/TanTan9sequential_2_1/sequential_1_2/random_rotation_1/mul_2:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/Tan_1Tan9sequential_2_1/sequential_1_2/random_rotation_1/mul_3:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_6Mul7sequential_2_1/sequential_1_2/random_rotation_1/Tan:y:07sequential_2_1/sequential_1_2/random_rotation_1/Sin:y:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_1AddV27sequential_2_1/sequential_1_2/random_rotation_1/Cos:y:09sequential_2_1/sequential_1_2/random_rotation_1/mul_6:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_7Mul=sequential_2_1/sequential_1_2/random_rotation_1/ones:output:09sequential_2_1/sequential_1_2/random_rotation_1/add_1:z:0*
T0*#
_output_shapes
:����������
3sequential_2_1/sequential_1_2/random_rotation_1/NegNeg7sequential_2_1/sequential_1_2/random_rotation_1/Sin:y:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_8Mul7sequential_2_1/sequential_1_2/random_rotation_1/Tan:y:07sequential_2_1/sequential_1_2/random_rotation_1/Cos:y:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_2AddV27sequential_2_1/sequential_1_2/random_rotation_1/Neg:y:09sequential_2_1/sequential_1_2/random_rotation_1/mul_8:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/mul_9Mul=sequential_2_1/sequential_1_2/random_rotation_1/ones:output:09sequential_2_1/sequential_1_2/random_rotation_1/add_2:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_3AddV2>sequential_2_1/sequential_1_2/random_rotation_1/zeros:output:09sequential_2_1/sequential_1_2/random_rotation_1/mul_4:z:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_10Mul9sequential_2_1/sequential_1_2/random_rotation_1/mul_4:z:09sequential_2_1/sequential_1_2/random_rotation_1/mul_7:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/sub_2Sub9sequential_2_1/sequential_1_2/random_rotation_1/add_3:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_10:z:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_11Mul9sequential_2_1/sequential_1_2/random_rotation_1/mul_5:z:09sequential_2_1/sequential_1_2/random_rotation_1/mul_9:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/sub_3Sub9sequential_2_1/sequential_1_2/random_rotation_1/sub_2:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_11:z:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_12Mul9sequential_2_1/sequential_1_2/random_rotation_1/Tan_1:y:07sequential_2_1/sequential_1_2/random_rotation_1/Cos:y:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_4AddV2:sequential_2_1/sequential_1_2/random_rotation_1/mul_12:z:07sequential_2_1/sequential_1_2/random_rotation_1/Sin:y:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_13Mul=sequential_2_1/sequential_1_2/random_rotation_1/ones:output:09sequential_2_1/sequential_1_2/random_rotation_1/add_4:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/Neg_1Neg7sequential_2_1/sequential_1_2/random_rotation_1/Sin:y:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_14Mul9sequential_2_1/sequential_1_2/random_rotation_1/Tan_1:y:09sequential_2_1/sequential_1_2/random_rotation_1/Neg_1:y:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_5AddV2:sequential_2_1/sequential_1_2/random_rotation_1/mul_14:z:07sequential_2_1/sequential_1_2/random_rotation_1/Cos:y:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_15Mul=sequential_2_1/sequential_1_2/random_rotation_1/ones:output:09sequential_2_1/sequential_1_2/random_rotation_1/add_5:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/add_6AddV2@sequential_2_1/sequential_1_2/random_rotation_1/zeros_1:output:09sequential_2_1/sequential_1_2/random_rotation_1/mul_5:z:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_16Mul9sequential_2_1/sequential_1_2/random_rotation_1/mul_4:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_13:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/sub_4Sub9sequential_2_1/sequential_1_2/random_rotation_1/add_6:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_16:z:0*
T0*#
_output_shapes
:����������
6sequential_2_1/sequential_1_2/random_rotation_1/mul_17Mul9sequential_2_1/sequential_1_2/random_rotation_1/mul_5:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_15:z:0*
T0*#
_output_shapes
:����������
5sequential_2_1/sequential_1_2/random_rotation_1/sub_5Sub9sequential_2_1/sequential_1_2/random_rotation_1/sub_4:z:0:sequential_2_1/sequential_1_2/random_rotation_1/mul_17:z:0*
T0*#
_output_shapes
:����������
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2StridedSlice9sequential_2_1/sequential_1_2/random_rotation_1/mul_7:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3StridedSlice9sequential_2_1/sequential_1_2/random_rotation_1/mul_9:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4StridedSlice9sequential_2_1/sequential_1_2/random_rotation_1/sub_3:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5StridedSlice:sequential_2_1/sequential_1_2/random_rotation_1/mul_13:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6StridedSlice:sequential_2_1/sequential_1_2/random_rotation_1/mul_15:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7StridedSlice9sequential_2_1/sequential_1_2/random_rotation_1/sub_5:z:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
@sequential_2_1/sequential_1_2/random_rotation_1/zeros_4/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
>sequential_2_1/sequential_1_2/random_rotation_1/zeros_4/packedPackHsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_1:output:0Isequential_2_1/sequential_1_2/random_rotation_1/zeros_4/packed/1:output:0*
N*
T0*
_output_shapes
:�
=sequential_2_1/sequential_1_2/random_rotation_1/zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7sequential_2_1/sequential_1_2/random_rotation_1/zeros_4FillGsequential_2_1/sequential_1_2/random_rotation_1/zeros_4/packed:output:0Fsequential_2_1/sequential_1_2/random_rotation_1/zeros_4/Const:output:0*
T0*'
_output_shapes
:���������}
;sequential_2_1/sequential_1_2/random_rotation_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
6sequential_2_1/sequential_1_2/random_rotation_1/concatConcatV2Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_2:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_3:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_4:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_5:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_6:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_7:output:0@sequential_2_1/sequential_1_2/random_rotation_1/zeros_4:output:0Dsequential_2_1/sequential_1_2/random_rotation_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
7sequential_2_1/sequential_1_2/random_rotation_1/Shape_2Shape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8StridedSlice@sequential_2_1/sequential_1_2/random_rotation_1/Shape_2:output:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_2_1/sequential_1_2/random_rotation_1/Shape_3Shape/sequential_2_1/sequential_1/rescaling_1/add:z:0*
T0*
_output_shapes
::���
Esequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
Gsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9StridedSlice@sequential_2_1/sequential_1_2/random_rotation_1/Shape_3:output:0Nsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stack:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stack_1:output:0Psequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
Usequential_2_1/sequential_1_2/random_rotation_1/ImageProjectiveTransformV3/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Jsequential_2_1/sequential_1_2/random_rotation_1/ImageProjectiveTransformV3ImageProjectiveTransformV3/sequential_2_1/sequential_1/rescaling_1/add:z:0?sequential_2_1/sequential_1_2/random_rotation_1/concat:output:0Hsequential_2_1/sequential_1_2/random_rotation_1/strided_slice_9:output:0^sequential_2_1/sequential_1_2/random_rotation_1/ImageProjectiveTransformV3/fill_value:output:0*A
_output_shapes/
-:+���������������������������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
;sequential_2_1/sequential_1_2/random_rotation_1/EnsureShapeEnsureShape_sequential_2_1/sequential_1_2/random_rotation_1/ImageProjectiveTransformV3:transformed_images:0*
T0*1
_output_shapes
:�����������*&
shape:������������
2sequential_2_1/conv2d_1/convolution/ReadVariableOpReadVariableOp;sequential_2_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#sequential_2_1/conv2d_1/convolutionConv2DDsequential_2_1/sequential_1_2/random_rotation_1/EnsureShape:output:0:sequential_2_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
.sequential_2_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp7sequential_2_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%sequential_2_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_2_1/conv2d_1/ReshapeReshape6sequential_2_1/conv2d_1/Reshape/ReadVariableOp:value:0.sequential_2_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: y
sequential_2_1/conv2d_1/SqueezeSqueeze(sequential_2_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
sequential_2_1/conv2d_1/BiasAddBiasAdd,sequential_2_1/conv2d_1/convolution:output:0(sequential_2_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
sequential_2_1/conv2d_1/ReluRelu(sequential_2_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
(sequential_2_1/max_pooling2d_1/MaxPool2dMaxPool*sequential_2_1/conv2d_1/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
%sequential_2_1/conv2d_1_2/convolutionConv2D1sequential_2_1/max_pooling2d_1/MaxPool2d:output:0<sequential_2_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
0sequential_2_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_2_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
!sequential_2_1/conv2d_1_2/ReshapeReshape8sequential_2_1/conv2d_1_2/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@}
!sequential_2_1/conv2d_1_2/SqueezeSqueeze*sequential_2_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:@�
!sequential_2_1/conv2d_1_2/BiasAddBiasAdd.sequential_2_1/conv2d_1_2/convolution:output:0*sequential_2_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������}}@�
sequential_2_1/conv2d_1_2/ReluRelu*sequential_2_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
*sequential_2_1/max_pooling2d_1_2/MaxPool2dMaxPool,sequential_2_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_2_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
%sequential_2_1/conv2d_2_1/convolutionConv2D3sequential_2_1/max_pooling2d_1_2/MaxPool2d:output:0<sequential_2_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�*
paddingVALID*
strides
�
0sequential_2_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_2_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
!sequential_2_1/conv2d_2_1/ReshapeReshape8sequential_2_1/conv2d_2_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�~
!sequential_2_1/conv2d_2_1/SqueezeSqueeze*sequential_2_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes	
:��
!sequential_2_1/conv2d_2_1/BiasAddBiasAdd.sequential_2_1/conv2d_2_1/convolution:output:0*sequential_2_1/conv2d_2_1/Squeeze:output:0*
T0*0
_output_shapes
:���������<<��
sequential_2_1/conv2d_2_1/ReluRelu*sequential_2_1/conv2d_2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������<<��
*sequential_2_1/max_pooling2d_2_1/MaxPool2dMaxPool,sequential_2_1/conv2d_2_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
%sequential_2_1/conv2d_3_1/convolutionConv2D3sequential_2_1/max_pooling2d_2_1/MaxPool2d:output:0<sequential_2_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
0sequential_2_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_2_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_3_1/ReshapeReshape8sequential_2_1/conv2d_3_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�~
!sequential_2_1/conv2d_3_1/SqueezeSqueeze*sequential_2_1/conv2d_3_1/Reshape:output:0*
T0*
_output_shapes	
:��
!sequential_2_1/conv2d_3_1/BiasAddBiasAdd.sequential_2_1/conv2d_3_1/convolution:output:0*sequential_2_1/conv2d_3_1/Squeeze:output:0*
T0*0
_output_shapes
:�����������
sequential_2_1/conv2d_3_1/ReluRelu*sequential_2_1/conv2d_3_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
*sequential_2_1/max_pooling2d_3_1/MaxPool2dMaxPool,sequential_2_1/conv2d_3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
w
&sequential_2_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
 sequential_2_1/flatten_1/ReshapeReshape3sequential_2_1/max_pooling2d_3_1/MaxPool2d:output:0/sequential_2_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
*sequential_2_1/dense_1/Cast/ReadVariableOpReadVariableOp3sequential_2_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
sequential_2_1/dense_1/MatMulMatMul)sequential_2_1/flatten_1/Reshape:output:02sequential_2_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-sequential_2_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_2_1/dense_1/BiasAddBiasAdd'sequential_2_1/dense_1/MatMul:product:05sequential_2_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
sequential_2_1/dense_1/ReluRelu'sequential_2_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
,sequential_2_1/dense_1_2/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_2_1/dense_1_2/MatMulMatMul)sequential_2_1/dense_1/Relu:activations:04sequential_2_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential_2_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp8sequential_2_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_2_1/dense_1_2/BiasAddBiasAdd)sequential_2_1/dense_1_2/MatMul:product:07sequential_2_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 sequential_2_1/dense_1_2/SoftmaxSoftmax)sequential_2_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*sequential_2_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_2_1/conv2d_1/Reshape/ReadVariableOp3^sequential_2_1/conv2d_1/convolution/ReadVariableOp1^sequential_2_1/conv2d_1_2/Reshape/ReadVariableOp5^sequential_2_1/conv2d_1_2/convolution/ReadVariableOp1^sequential_2_1/conv2d_2_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_2_1/convolution/ReadVariableOp1^sequential_2_1/conv2d_3_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_3_1/convolution/ReadVariableOp.^sequential_2_1/dense_1/BiasAdd/ReadVariableOp+^sequential_2_1/dense_1/Cast/ReadVariableOp0^sequential_2_1/dense_1_2/BiasAdd/ReadVariableOp-^sequential_2_1/dense_1_2/Cast/ReadVariableOp?^sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp=^sequential_2_1/sequential_1_2/random_flip_1/AssignVariableOp;^sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOpC^sequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOpA^sequential_2_1/sequential_1_2/random_rotation_1/AssignVariableOp?^sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2`
.sequential_2_1/conv2d_1/Reshape/ReadVariableOp.sequential_2_1/conv2d_1/Reshape/ReadVariableOp2h
2sequential_2_1/conv2d_1/convolution/ReadVariableOp2sequential_2_1/conv2d_1/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_1_2/Reshape/ReadVariableOp0sequential_2_1/conv2d_1_2/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_1_2/convolution/ReadVariableOp4sequential_2_1/conv2d_1_2/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_2_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_2_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_2_1/convolution/ReadVariableOp4sequential_2_1/conv2d_2_1/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_3_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_3_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_3_1/convolution/ReadVariableOp4sequential_2_1/conv2d_3_1/convolution/ReadVariableOp2^
-sequential_2_1/dense_1/BiasAdd/ReadVariableOp-sequential_2_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2_1/dense_1/Cast/ReadVariableOp*sequential_2_1/dense_1/Cast/ReadVariableOp2b
/sequential_2_1/dense_1_2/BiasAdd/ReadVariableOp/sequential_2_1/dense_1_2/BiasAdd/ReadVariableOp2\
,sequential_2_1/dense_1_2/Cast/ReadVariableOp,sequential_2_1/dense_1_2/Cast/ReadVariableOp2�
>sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp>sequential_2_1/sequential_1_2/random_flip_1/Add/ReadVariableOp2|
<sequential_2_1/sequential_1_2/random_flip_1/AssignVariableOp<sequential_2_1/sequential_1_2/random_flip_1/AssignVariableOp2x
:sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOp:sequential_2_1/sequential_1_2/random_flip_1/ReadVariableOp2�
Bsequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOpBsequential_2_1/sequential_1_2/random_rotation_1/Add/ReadVariableOp2�
@sequential_2_1/sequential_1_2/random_rotation_1/AssignVariableOp@sequential_2_1/sequential_1_2/random_rotation_1/AssignVariableOp2�
>sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOp>sequential_2_1/sequential_1_2/random_rotation_1/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_signature_wrapper___call___14666
input_layer
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
��@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *#
fR
__inference___call___14632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:%!

_user_specified_name14636:%!

_user_specified_name14638:%!

_user_specified_name14640:%!

_user_specified_name14642:%!

_user_specified_name14644:%!

_user_specified_name14646:%!

_user_specified_name14648:%!

_user_specified_name14650:%	!

_user_specified_name14652:%
!

_user_specified_name14654:%!

_user_specified_name14656:%!

_user_specified_name14658:%!

_user_specified_name14660:%!

_user_specified_name14662"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
C
input_layer4
serve_input_layer:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
M
input_layer>
serving_default_input_layer:0�����������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
v

0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
$trace_02�
__inference___call___14632�
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
annotations� *4�1
/�,
input_layer�����������z$trace_0
7
	%serve
&serving_default"
signature_map
1:/	2%seed_generator_4/seed_generator_state
1:/	2%seed_generator_5/seed_generator_state
':% 2conv2d/kernel
: 2conv2d/bias
):' @2conv2d_1/kernel
:@2conv2d_1/bias
*:(@�2conv2d_2/kernel
:�2conv2d_2/bias
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
 :
��@2dense/kernel
:@2
dense/bias
 :@2dense_1/kernel
:2dense_1/bias
':% 2conv2d/kernel
):' @2conv2d_1/kernel
*:(@�2conv2d_2/kernel
+:)��2conv2d_3/kernel
:@2
dense/bias
:2dense_1/bias
: 2conv2d/bias
:@2conv2d_1/bias
:�2conv2d_2/bias
:�2conv2d_3/bias
 :
��@2dense/kernel
 :@2dense_1/kernel
1:/	2%seed_generator_4/seed_generator_state
1:/	2%seed_generator_5/seed_generator_state
�B�
__inference___call___14632input_layer"�
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
�B�
,__inference_signature_wrapper___call___14666input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___14699input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 �
__inference___call___14632s	
>�;
4�1
/�,
input_layer�����������
� "!�
unknown����������
,__inference_signature_wrapper___call___14666�	
M�J
� 
C�@
>
input_layer/�,
input_layer�����������"3�0
.
output_0"�
output_0����������
,__inference_signature_wrapper___call___14699�	
M�J
� 
C�@
>
input_layer/�,
input_layer�����������"3�0
.
output_0"�
output_0���������