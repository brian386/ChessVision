▓Т

х╡
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718П╛
Д
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
:@*
dtype0
Д
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes
:@*
dtype0
}
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ААА* 
shared_namedense_44/kernel
v
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*!
_output_shapes
:ААА*
dtype0
s
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_44/bias
l
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes	
:А*
dtype0
{
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_45/kernel
t
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes
:	А*
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
Т
Adam/conv2d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_44/kernel/m
Л
+Adam/conv2d_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/m*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_44/bias/m
{
)Adam/conv2d_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_45/kernel/m
Л
+Adam/conv2d_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_45/bias/m
{
)Adam/conv2d_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/m*
_output_shapes
:@*
dtype0
Л
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ААА*'
shared_nameAdam/dense_44/kernel/m
Д
*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*!
_output_shapes
:ААА*
dtype0
Б
Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_44/bias/m
z
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes	
:А*
dtype0
Й
Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_45/kernel/m
В
*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes
:	А*
dtype0
А
Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_44/kernel/v
Л
+Adam/conv2d_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/v*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_44/bias/v
{
)Adam/conv2d_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_45/kernel/v
Л
+Adam/conv2d_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_45/bias/v
{
)Adam/conv2d_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/v*
_output_shapes
:@*
dtype0
Л
Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ААА*'
shared_nameAdam/dense_44/kernel/v
Д
*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*!
_output_shapes
:ААА*
dtype0
Б
Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_44/bias/v
z
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes	
:А*
dtype0
Й
Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_45/kernel/v
В
*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes
:	А*
dtype0
А
Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╠>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*З>
value¤=B·= Bє=
щ
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
R
.regularization_losses
/	variables
0trainable_variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
R
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
р
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratemТmУ mФ!mХ2mЦ3mЧ<mШ=mЩvЪvЫ vЬ!vЭ2vЮ3vЯ<vа=vб
 
8
0
1
 2
!3
24
35
<6
=7
8
0
1
 2
!3
24
35
<6
=7
н
regularization_losses

Klayers
Lnon_trainable_variables
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
Ometrics
 
\Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
regularization_losses

Players
Qnon_trainable_variables
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
Tmetrics
 
 
 
н
regularization_losses

Ulayers
Vnon_trainable_variables
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
Ymetrics
 
 
 
н
regularization_losses

Zlayers
[non_trainable_variables
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
^metrics
\Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
н
"regularization_losses

_layers
`non_trainable_variables
alayer_regularization_losses
blayer_metrics
#	variables
$trainable_variables
cmetrics
 
 
 
н
&regularization_losses

dlayers
enon_trainable_variables
flayer_regularization_losses
glayer_metrics
'	variables
(trainable_variables
hmetrics
 
 
 
н
*regularization_losses

ilayers
jnon_trainable_variables
klayer_regularization_losses
llayer_metrics
+	variables
,trainable_variables
mmetrics
 
 
 
н
.regularization_losses

nlayers
onon_trainable_variables
player_regularization_losses
qlayer_metrics
/	variables
0trainable_variables
rmetrics
[Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
н
4regularization_losses

slayers
tnon_trainable_variables
ulayer_regularization_losses
vlayer_metrics
5	variables
6trainable_variables
wmetrics
 
 
 
н
8regularization_losses

xlayers
ynon_trainable_variables
zlayer_regularization_losses
{layer_metrics
9	variables
:trainable_variables
|metrics
[Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
п
>regularization_losses

}layers
~non_trainable_variables
layer_regularization_losses
Аlayer_metrics
?	variables
@trainable_variables
Бmetrics
 
 
 
▓
Bregularization_losses
Вlayers
Гnon_trainable_variables
 Дlayer_regularization_losses
Еlayer_metrics
C	variables
Dtrainable_variables
Жmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
N
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
 
 
 

З0
И1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Йtotal

Кcount
Л	variables
М	keras_api
I

Нtotal

Оcount
П
_fn_kwargs
Р	variables
С	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Й0
К1

Л	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Н0
О1

Р	variables
}
VARIABLE_VALUEAdam/conv2d_44/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_44/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_45/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_45/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_44/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_44/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_45/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_45/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_44_inputPlaceholder*/
_output_shapes
:         FF*
dtype0*$
shape:         FF
╬
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_44_inputconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_354363
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▒
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_44/kernel/m/Read/ReadVariableOp)Adam/conv2d_44/bias/m/Read/ReadVariableOp+Adam/conv2d_45/kernel/m/Read/ReadVariableOp)Adam/conv2d_45/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp+Adam/conv2d_44/kernel/v/Read/ReadVariableOp)Adam/conv2d_44/bias/v/Read/ReadVariableOp+Adam/conv2d_45/kernel/v/Read/ReadVariableOp)Adam/conv2d_45/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_354726
Ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_44/kernel/mAdam/conv2d_44/bias/mAdam/conv2d_45/kernel/mAdam/conv2d_45/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/conv2d_44/kernel/vAdam/conv2d_44/bias/vAdam/conv2d_45/kernel/vAdam/conv2d_45/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_354835из
с/
▌
I__inference_sequential_45_layer_call_and_return_conditional_losses_354435

inputsB
(conv2d_44_conv2d_readvariableop_resource:@7
)conv2d_44_biasadd_readvariableop_resource:@B
(conv2d_45_conv2d_readvariableop_resource:@@7
)conv2d_45_biasadd_readvariableop_resource:@<
'dense_44_matmul_readvariableop_resource:ААА7
(dense_44_biasadd_readvariableop_resource:	А:
'dense_45_matmul_readvariableop_resource:	А6
(dense_45_biasadd_readvariableop_resource:
identityИв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpвdense_44/BiasAdd/ReadVariableOpвdense_44/MatMul/ReadVariableOpвdense_45/BiasAdd/ReadVariableOpвdense_45/MatMul/ReadVariableOp│
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_44/Conv2D/ReadVariableOp┬
conv2d_44/Conv2DConv2Dinputs'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@*
paddingVALID*
strides
2
conv2d_44/Conv2Dк
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_44/BiasAdd/ReadVariableOp░
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@2
conv2d_44/BiasAddЖ
activation_88/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         DD@2
activation_88/Relu╬
max_pooling2d_44/MaxPoolMaxPool activation_88/Relu:activations:0*/
_output_shapes
:         ""@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPool│
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_45/Conv2D/ReadVariableOp▌
conv2d_45/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingVALID*
strides
2
conv2d_45/Conv2Dк
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_45/BiasAdd/ReadVariableOp░
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2
conv2d_45/BiasAddЖ
activation_89/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:           @2
activation_89/Relu╬
max_pooling2d_45/MaxPoolMaxPool activation_89/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPoolu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  2
flatten_22/Constе
flatten_22/ReshapeReshape!max_pooling2d_45/MaxPool:output:0flatten_22/Const:output:0*
T0*)
_output_shapes
:         АА2
flatten_22/Reshapeл
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*!
_output_shapes
:ААА*
dtype02 
dense_44/MatMul/ReadVariableOpд
dense_44/MatMulMatMulflatten_22/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_44/MatMulи
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_44/BiasAdd/ReadVariableOpж
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_44/BiasAdd~
activation_90/ReluReludense_44/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
activation_90/Reluй
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_45/MatMul/ReadVariableOpи
dense_45/MatMulMatMul activation_90/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_45/MatMulз
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOpе
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_45/BiasAddЖ
activation_91/SigmoidSigmoiddense_45/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_91/Sigmoid¤
IdentityIdentityactivation_91/Sigmoid:y:0!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
х
e
I__inference_activation_90_layer_call_and_return_conditional_losses_354570

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:         А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╞О
Х
"__inference__traced_restore_354835
file_prefix;
!assignvariableop_conv2d_44_kernel:@/
!assignvariableop_1_conv2d_44_bias:@=
#assignvariableop_2_conv2d_45_kernel:@@/
!assignvariableop_3_conv2d_45_bias:@7
"assignvariableop_4_dense_44_kernel:ААА/
 assignvariableop_5_dense_44_bias:	А5
"assignvariableop_6_dense_45_kernel:	А.
 assignvariableop_7_dense_45_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: E
+assignvariableop_17_adam_conv2d_44_kernel_m:@7
)assignvariableop_18_adam_conv2d_44_bias_m:@E
+assignvariableop_19_adam_conv2d_45_kernel_m:@@7
)assignvariableop_20_adam_conv2d_45_bias_m:@?
*assignvariableop_21_adam_dense_44_kernel_m:ААА7
(assignvariableop_22_adam_dense_44_bias_m:	А=
*assignvariableop_23_adam_dense_45_kernel_m:	А6
(assignvariableop_24_adam_dense_45_bias_m:E
+assignvariableop_25_adam_conv2d_44_kernel_v:@7
)assignvariableop_26_adam_conv2d_44_bias_v:@E
+assignvariableop_27_adam_conv2d_45_kernel_v:@@7
)assignvariableop_28_adam_conv2d_45_bias_v:@?
*assignvariableop_29_adam_dense_44_kernel_v:ААА7
(assignvariableop_30_adam_dense_44_bias_v:	А=
*assignvariableop_31_adam_dense_45_kernel_v:	А6
(assignvariableop_32_adam_dense_45_bias_v:
identity_34ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╠
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╥
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╪
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_44_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_44_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2и
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_45_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3ж
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_45_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_44_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_44_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_45_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_45_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8б
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9г
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10з
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ж
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12о
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13б
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14б
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15г
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16г
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17│
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_44_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18▒
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_44_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19│
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_45_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20▒
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_45_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_44_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_44_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_45_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_45_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_44_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_44_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27│
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_45_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▒
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_45_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_44_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_44_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_45_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_45_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┤
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33з
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
_user_specified_namefile_prefix
с	
█
.__inference_sequential_45_layer_call_fn_354272
conv2d_44_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:ААА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_3542322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
ц<
Ю
!__inference__wrapped_model_353955
conv2d_44_inputP
6sequential_45_conv2d_44_conv2d_readvariableop_resource:@E
7sequential_45_conv2d_44_biasadd_readvariableop_resource:@P
6sequential_45_conv2d_45_conv2d_readvariableop_resource:@@E
7sequential_45_conv2d_45_biasadd_readvariableop_resource:@J
5sequential_45_dense_44_matmul_readvariableop_resource:АААE
6sequential_45_dense_44_biasadd_readvariableop_resource:	АH
5sequential_45_dense_45_matmul_readvariableop_resource:	АD
6sequential_45_dense_45_biasadd_readvariableop_resource:
identityИв.sequential_45/conv2d_44/BiasAdd/ReadVariableOpв-sequential_45/conv2d_44/Conv2D/ReadVariableOpв.sequential_45/conv2d_45/BiasAdd/ReadVariableOpв-sequential_45/conv2d_45/Conv2D/ReadVariableOpв-sequential_45/dense_44/BiasAdd/ReadVariableOpв,sequential_45/dense_44/MatMul/ReadVariableOpв-sequential_45/dense_45/BiasAdd/ReadVariableOpв,sequential_45/dense_45/MatMul/ReadVariableOp▌
-sequential_45/conv2d_44/Conv2D/ReadVariableOpReadVariableOp6sequential_45_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_45/conv2d_44/Conv2D/ReadVariableOpї
sequential_45/conv2d_44/Conv2DConv2Dconv2d_44_input5sequential_45/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@*
paddingVALID*
strides
2 
sequential_45/conv2d_44/Conv2D╘
.sequential_45/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_45/conv2d_44/BiasAdd/ReadVariableOpш
sequential_45/conv2d_44/BiasAddBiasAdd'sequential_45/conv2d_44/Conv2D:output:06sequential_45/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@2!
sequential_45/conv2d_44/BiasAdd░
 sequential_45/activation_88/ReluRelu(sequential_45/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         DD@2"
 sequential_45/activation_88/Relu°
&sequential_45/max_pooling2d_44/MaxPoolMaxPool.sequential_45/activation_88/Relu:activations:0*/
_output_shapes
:         ""@*
ksize
*
paddingVALID*
strides
2(
&sequential_45/max_pooling2d_44/MaxPool▌
-sequential_45/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_45_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_45/conv2d_45/Conv2D/ReadVariableOpХ
sequential_45/conv2d_45/Conv2DConv2D/sequential_45/max_pooling2d_44/MaxPool:output:05sequential_45/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingVALID*
strides
2 
sequential_45/conv2d_45/Conv2D╘
.sequential_45/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_45/conv2d_45/BiasAdd/ReadVariableOpш
sequential_45/conv2d_45/BiasAddBiasAdd'sequential_45/conv2d_45/Conv2D:output:06sequential_45/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2!
sequential_45/conv2d_45/BiasAdd░
 sequential_45/activation_89/ReluRelu(sequential_45/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:           @2"
 sequential_45/activation_89/Relu°
&sequential_45/max_pooling2d_45/MaxPoolMaxPool.sequential_45/activation_89/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_45/max_pooling2d_45/MaxPoolС
sequential_45/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  2 
sequential_45/flatten_22/Const▌
 sequential_45/flatten_22/ReshapeReshape/sequential_45/max_pooling2d_45/MaxPool:output:0'sequential_45/flatten_22/Const:output:0*
T0*)
_output_shapes
:         АА2"
 sequential_45/flatten_22/Reshape╒
,sequential_45/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_45_dense_44_matmul_readvariableop_resource*!
_output_shapes
:ААА*
dtype02.
,sequential_45/dense_44/MatMul/ReadVariableOp▄
sequential_45/dense_44/MatMulMatMul)sequential_45/flatten_22/Reshape:output:04sequential_45/dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_45/dense_44/MatMul╥
-sequential_45/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_45_dense_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_45/dense_44/BiasAdd/ReadVariableOp▐
sequential_45/dense_44/BiasAddBiasAdd'sequential_45/dense_44/MatMul:product:05sequential_45/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
sequential_45/dense_44/BiasAddи
 sequential_45/activation_90/ReluRelu'sequential_45/dense_44/BiasAdd:output:0*
T0*(
_output_shapes
:         А2"
 sequential_45/activation_90/Relu╙
,sequential_45/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_45_dense_45_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02.
,sequential_45/dense_45/MatMul/ReadVariableOpр
sequential_45/dense_45/MatMulMatMul.sequential_45/activation_90/Relu:activations:04sequential_45/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_45/dense_45/MatMul╤
-sequential_45/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_45_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_45/dense_45/BiasAdd/ReadVariableOp▌
sequential_45/dense_45/BiasAddBiasAdd'sequential_45/dense_45/MatMul:product:05sequential_45/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
sequential_45/dense_45/BiasAdd░
#sequential_45/activation_91/SigmoidSigmoid'sequential_45/dense_45/BiasAdd:output:0*
T0*'
_output_shapes
:         2%
#sequential_45/activation_91/Sigmoid√
IdentityIdentity'sequential_45/activation_91/Sigmoid:y:0/^sequential_45/conv2d_44/BiasAdd/ReadVariableOp.^sequential_45/conv2d_44/Conv2D/ReadVariableOp/^sequential_45/conv2d_45/BiasAdd/ReadVariableOp.^sequential_45/conv2d_45/Conv2D/ReadVariableOp.^sequential_45/dense_44/BiasAdd/ReadVariableOp-^sequential_45/dense_44/MatMul/ReadVariableOp.^sequential_45/dense_45/BiasAdd/ReadVariableOp-^sequential_45/dense_45/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2`
.sequential_45/conv2d_44/BiasAdd/ReadVariableOp.sequential_45/conv2d_44/BiasAdd/ReadVariableOp2^
-sequential_45/conv2d_44/Conv2D/ReadVariableOp-sequential_45/conv2d_44/Conv2D/ReadVariableOp2`
.sequential_45/conv2d_45/BiasAdd/ReadVariableOp.sequential_45/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_45/conv2d_45/Conv2D/ReadVariableOp-sequential_45/conv2d_45/Conv2D/ReadVariableOp2^
-sequential_45/dense_44/BiasAdd/ReadVariableOp-sequential_45/dense_44/BiasAdd/ReadVariableOp2\
,sequential_45/dense_44/MatMul/ReadVariableOp,sequential_45/dense_44/MatMul/ReadVariableOp2^
-sequential_45/dense_45/BiasAdd/ReadVariableOp-sequential_45/dense_45/BiasAdd/ReadVariableOp2\
,sequential_45/dense_45/MatMul/ReadVariableOp,sequential_45/dense_45/MatMul/ReadVariableOp:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
м
h
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_353973

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓

■
E__inference_conv2d_45_layer_call_and_return_conditional_losses_354516

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ""@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ""@
 
_user_specified_nameinputs
у
e
I__inference_activation_91_layer_call_and_return_conditional_losses_354599

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▀	
∙
D__inference_dense_44_layer_call_and_return_conditional_losses_354556

inputs3
matmul_readvariableop_resource:ААА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ААА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         АА
 
_user_specified_nameinputs
у
e
I__inference_activation_91_layer_call_and_return_conditional_losses_354086

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╞	
╥
.__inference_sequential_45_layer_call_fn_354456

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:ААА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_3540892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
№-
а
I__inference_sequential_45_layer_call_and_return_conditional_losses_354334
conv2d_44_input*
conv2d_44_354306:@
conv2d_44_354308:@*
conv2d_45_354313:@@
conv2d_45_354315:@$
dense_44_354321:ААА
dense_44_354323:	А"
dense_45_354327:	А
dense_45_354329:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_44/StatefulPartitionedCallв dense_45/StatefulPartitionedCallк
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_354306conv2d_44_354308*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_3539962#
!conv2d_44/StatefulPartitionedCallП
activation_88/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_88_layer_call_and_return_conditional_losses_3540072
activation_88/PartitionedCallФ
 max_pooling2d_44/PartitionedCallPartitionedCall&activation_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_3539612"
 max_pooling2d_44/PartitionedCall─
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_45_354313conv2d_45_354315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_3540202#
!conv2d_45/StatefulPartitionedCallП
activation_89/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_89_layer_call_and_return_conditional_losses_3540312
activation_89/PartitionedCallФ
 max_pooling2d_45/PartitionedCallPartitionedCall&activation_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3539732"
 max_pooling2d_45/PartitionedCall 
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3540402
flatten_22/PartitionedCall▓
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_44_354321dense_44_354323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_3540522"
 dense_44/StatefulPartitionedCallЗ
activation_90/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_90_layer_call_and_return_conditional_losses_3540632
activation_90/PartitionedCall┤
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_90/PartitionedCall:output:0dense_45_354327dense_45_354329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_3540752"
 dense_45/StatefulPartitionedCallЖ
activation_91/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_91_layer_call_and_return_conditional_losses_3540862
activation_91/PartitionedCallИ
IdentityIdentity&activation_91/PartitionedCall:output:0"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
╘
G
+__inference_flatten_22_layer_call_fn_354546

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3540402
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
№-
а
I__inference_sequential_45_layer_call_and_return_conditional_losses_354303
conv2d_44_input*
conv2d_44_354275:@
conv2d_44_354277:@*
conv2d_45_354282:@@
conv2d_45_354284:@$
dense_44_354290:ААА
dense_44_354292:	А"
dense_45_354296:	А
dense_45_354298:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_44/StatefulPartitionedCallв dense_45/StatefulPartitionedCallк
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputconv2d_44_354275conv2d_44_354277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_3539962#
!conv2d_44/StatefulPartitionedCallП
activation_88/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_88_layer_call_and_return_conditional_losses_3540072
activation_88/PartitionedCallФ
 max_pooling2d_44/PartitionedCallPartitionedCall&activation_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_3539612"
 max_pooling2d_44/PartitionedCall─
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_45_354282conv2d_45_354284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_3540202#
!conv2d_45/StatefulPartitionedCallП
activation_89/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_89_layer_call_and_return_conditional_losses_3540312
activation_89/PartitionedCallФ
 max_pooling2d_45/PartitionedCallPartitionedCall&activation_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3539732"
 max_pooling2d_45/PartitionedCall 
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3540402
flatten_22/PartitionedCall▓
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_44_354290dense_44_354292*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_3540522"
 dense_44/StatefulPartitionedCallЗ
activation_90/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_90_layer_call_and_return_conditional_losses_3540632
activation_90/PartitionedCall┤
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_90/PartitionedCall:output:0dense_45_354296dense_45_354298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_3540752"
 dense_45/StatefulPartitionedCallЖ
activation_91/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_91_layer_call_and_return_conditional_losses_3540862
activation_91/PartitionedCallИ
IdentityIdentity&activation_91/PartitionedCall:output:0"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
╞
J
.__inference_activation_91_layer_call_fn_354604

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_91_layer_call_and_return_conditional_losses_3540862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Б
e
I__inference_activation_89_layer_call_and_return_conditional_losses_354031

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:           @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
с-
Ч
I__inference_sequential_45_layer_call_and_return_conditional_losses_354232

inputs*
conv2d_44_354204:@
conv2d_44_354206:@*
conv2d_45_354211:@@
conv2d_45_354213:@$
dense_44_354219:ААА
dense_44_354221:	А"
dense_45_354225:	А
dense_45_354227:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_44/StatefulPartitionedCallв dense_45/StatefulPartitionedCallб
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_44_354204conv2d_44_354206*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_3539962#
!conv2d_44/StatefulPartitionedCallП
activation_88/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_88_layer_call_and_return_conditional_losses_3540072
activation_88/PartitionedCallФ
 max_pooling2d_44/PartitionedCallPartitionedCall&activation_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_3539612"
 max_pooling2d_44/PartitionedCall─
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_45_354211conv2d_45_354213*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_3540202#
!conv2d_45/StatefulPartitionedCallП
activation_89/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_89_layer_call_and_return_conditional_losses_3540312
activation_89/PartitionedCallФ
 max_pooling2d_45/PartitionedCallPartitionedCall&activation_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3539732"
 max_pooling2d_45/PartitionedCall 
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3540402
flatten_22/PartitionedCall▓
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_44_354219dense_44_354221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_3540522"
 dense_44/StatefulPartitionedCallЗ
activation_90/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_90_layer_call_and_return_conditional_losses_3540632
activation_90/PartitionedCall┤
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_90/PartitionedCall:output:0dense_45_354225dense_45_354227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_3540752"
 dense_45/StatefulPartitionedCallЖ
activation_91/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_91_layer_call_and_return_conditional_losses_3540862
activation_91/PartitionedCallИ
IdentityIdentity&activation_91/PartitionedCall:output:0"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
┼
Я
*__inference_conv2d_44_layer_call_fn_354496

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_3539962
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         FF: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
╘	
Ў
D__inference_dense_45_layer_call_and_return_conditional_losses_354075

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
с	
█
.__inference_sequential_45_layer_call_fn_354108
conv2d_44_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:ААА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_3540892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
ъ
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_354040

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         АА2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
п	
╤
$__inference_signature_wrapper_354363
conv2d_44_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:ААА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallconv2d_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_3539552
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         FF
)
_user_specified_nameconv2d_44_input
е
Ъ
)__inference_dense_44_layer_call_fn_354565

inputs
unknown:ААА
	unknown_0:	А
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_3540522
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         АА
 
_user_specified_nameinputs
с/
▌
I__inference_sequential_45_layer_call_and_return_conditional_losses_354399

inputsB
(conv2d_44_conv2d_readvariableop_resource:@7
)conv2d_44_biasadd_readvariableop_resource:@B
(conv2d_45_conv2d_readvariableop_resource:@@7
)conv2d_45_biasadd_readvariableop_resource:@<
'dense_44_matmul_readvariableop_resource:ААА7
(dense_44_biasadd_readvariableop_resource:	А:
'dense_45_matmul_readvariableop_resource:	А6
(dense_45_biasadd_readvariableop_resource:
identityИв conv2d_44/BiasAdd/ReadVariableOpвconv2d_44/Conv2D/ReadVariableOpв conv2d_45/BiasAdd/ReadVariableOpвconv2d_45/Conv2D/ReadVariableOpвdense_44/BiasAdd/ReadVariableOpвdense_44/MatMul/ReadVariableOpвdense_45/BiasAdd/ReadVariableOpвdense_45/MatMul/ReadVariableOp│
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_44/Conv2D/ReadVariableOp┬
conv2d_44/Conv2DConv2Dinputs'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@*
paddingVALID*
strides
2
conv2d_44/Conv2Dк
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_44/BiasAdd/ReadVariableOp░
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@2
conv2d_44/BiasAddЖ
activation_88/ReluReluconv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:         DD@2
activation_88/Relu╬
max_pooling2d_44/MaxPoolMaxPool activation_88/Relu:activations:0*/
_output_shapes
:         ""@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPool│
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_45/Conv2D/ReadVariableOp▌
conv2d_45/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingVALID*
strides
2
conv2d_45/Conv2Dк
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_45/BiasAdd/ReadVariableOp░
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2
conv2d_45/BiasAddЖ
activation_89/ReluReluconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:           @2
activation_89/Relu╬
max_pooling2d_45/MaxPoolMaxPool activation_89/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPoolu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  2
flatten_22/Constе
flatten_22/ReshapeReshape!max_pooling2d_45/MaxPool:output:0flatten_22/Const:output:0*
T0*)
_output_shapes
:         АА2
flatten_22/Reshapeл
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*!
_output_shapes
:ААА*
dtype02 
dense_44/MatMul/ReadVariableOpд
dense_44/MatMulMatMulflatten_22/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_44/MatMulи
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_44/BiasAdd/ReadVariableOpж
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_44/BiasAdd~
activation_90/ReluReludense_44/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
activation_90/Reluй
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_45/MatMul/ReadVariableOpи
dense_45/MatMulMatMul activation_90/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_45/MatMulз
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOpе
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_45/BiasAddЖ
activation_91/SigmoidSigmoiddense_45/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_91/Sigmoid¤
IdentityIdentityactivation_91/Sigmoid:y:0!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
Б
e
I__inference_activation_88_layer_call_and_return_conditional_losses_354007

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         DD@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         DD@:W S
/
_output_shapes
:         DD@
 
_user_specified_nameinputs
Б
e
I__inference_activation_88_layer_call_and_return_conditional_losses_354501

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         DD@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         DD@:W S
/
_output_shapes
:         DD@
 
_user_specified_nameinputs
▓

■
E__inference_conv2d_45_layer_call_and_return_conditional_losses_354020

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ""@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ""@
 
_user_specified_nameinputs
▀	
∙
D__inference_dense_44_layer_call_and_return_conditional_losses_354052

inputs3
matmul_readvariableop_resource:ААА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpР
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ААА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddЦ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         АА
 
_user_specified_nameinputs
▐H
╠
__inference__traced_save_354726
file_prefix/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_44_kernel_m_read_readvariableop4
0savev2_adam_conv2d_44_bias_m_read_readvariableop6
2savev2_adam_conv2d_45_kernel_m_read_readvariableop4
0savev2_adam_conv2d_45_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop6
2savev2_adam_conv2d_44_kernel_v_read_readvariableop4
0savev2_adam_conv2d_44_bias_v_read_readvariableop6
2savev2_adam_conv2d_45_kernel_v_read_readvariableop4
0savev2_adam_conv2d_45_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╞
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╖
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_44_kernel_m_read_readvariableop0savev2_adam_conv2d_44_bias_m_read_readvariableop2savev2_adam_conv2d_45_kernel_m_read_readvariableop0savev2_adam_conv2d_45_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop2savev2_adam_conv2d_44_kernel_v_read_readvariableop0savev2_adam_conv2d_44_bias_v_read_readvariableop2savev2_adam_conv2d_45_kernel_v_read_readvariableop0savev2_adam_conv2d_45_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*к
_input_shapesШ
Х: :@:@:@@:@:ААА:А:	А:: : : : : : : : : :@:@:@@:@:ААА:А:	А::@:@:@@:@:ААА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:'#
!
_output_shapes
:ААА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:'#
!
_output_shapes
:ААА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:'#
!
_output_shapes
:ААА:!

_output_shapes	
:А:% !

_output_shapes
:	А: !

_output_shapes
::"

_output_shapes
: 
┼
Я
*__inference_conv2d_45_layer_call_fn_354525

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_3540202
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ""@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ""@
 
_user_specified_nameinputs
ц
J
.__inference_activation_89_layer_call_fn_354535

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_89_layer_call_and_return_conditional_losses_3540312
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
╘	
Ў
D__inference_dense_45_layer_call_and_return_conditional_losses_354585

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
с-
Ч
I__inference_sequential_45_layer_call_and_return_conditional_losses_354089

inputs*
conv2d_44_353997:@
conv2d_44_353999:@*
conv2d_45_354021:@@
conv2d_45_354023:@$
dense_44_354053:ААА
dense_44_354055:	А"
dense_45_354076:	А
dense_45_354078:
identityИв!conv2d_44/StatefulPartitionedCallв!conv2d_45/StatefulPartitionedCallв dense_44/StatefulPartitionedCallв dense_45/StatefulPartitionedCallб
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_44_353997conv2d_44_353999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_3539962#
!conv2d_44/StatefulPartitionedCallП
activation_88/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_88_layer_call_and_return_conditional_losses_3540072
activation_88/PartitionedCallФ
 max_pooling2d_44/PartitionedCallPartitionedCall&activation_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_3539612"
 max_pooling2d_44/PartitionedCall─
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_45_354021conv2d_45_354023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_3540202#
!conv2d_45/StatefulPartitionedCallП
activation_89/PartitionedCallPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_89_layer_call_and_return_conditional_losses_3540312
activation_89/PartitionedCallФ
 max_pooling2d_45/PartitionedCallPartitionedCall&activation_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3539732"
 max_pooling2d_45/PartitionedCall 
flatten_22/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3540402
flatten_22/PartitionedCall▓
 dense_44/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_44_354053dense_44_354055*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_3540522"
 dense_44/StatefulPartitionedCallЗ
activation_90/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_90_layer_call_and_return_conditional_losses_3540632
activation_90/PartitionedCall┤
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_90/PartitionedCall:output:0dense_45_354076dense_45_354078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_3540752"
 dense_45/StatefulPartitionedCallЖ
activation_91/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_91_layer_call_and_return_conditional_losses_3540862
activation_91/PartitionedCallИ
IdentityIdentity&activation_91/PartitionedCall:output:0"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
╩
J
.__inference_activation_90_layer_call_fn_354575

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_90_layer_call_and_return_conditional_losses_3540632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┘
M
1__inference_max_pooling2d_45_layer_call_fn_353979

inputs
identityэ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_3539732
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
e
I__inference_activation_89_layer_call_and_return_conditional_losses_354530

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:           @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
х
e
I__inference_activation_90_layer_call_and_return_conditional_losses_354063

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:         А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▓

■
E__inference_conv2d_44_layer_call_and_return_conditional_losses_353996

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         FF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
ц
J
.__inference_activation_88_layer_call_fn_354506

inputs
identity╧
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_88_layer_call_and_return_conditional_losses_3540072
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         DD@:W S
/
_output_shapes
:         DD@
 
_user_specified_nameinputs
Ю
Ч
)__inference_dense_45_layer_call_fn_354594

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_3540752
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ъ
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_354541

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         АА2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         АА2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▓

■
E__inference_conv2d_44_layer_call_and_return_conditional_losses_354487

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         DD@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         FF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
╞	
╥
.__inference_sequential_45_layer_call_fn_354477

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:ААА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_3542322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         FF
 
_user_specified_nameinputs
м
h
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_353961

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┘
M
1__inference_max_pooling2d_44_layer_call_fn_353967

inputs
identityэ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_3539612
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╚
serving_default┤
S
conv2d_44_input@
!serving_default_conv2d_44_input:0         FFA
activation_910
StatefulPartitionedCall:0         tensorflow/serving/predict:╣╛
тK
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+в&call_and_return_all_conditional_losses
г_default_save_signature
д__call__"ЬH
_tf_keras_sequential¤G{"name": "sequential_45", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_44_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_88", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_89", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_90", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_91", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70, 70, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 70, 70, 3]}, "float32", "conv2d_44_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_44_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_88", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_89", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Activation", "config": {"name": "activation_90", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "Activation", "config": {"name": "activation_91", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 19}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 22}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
╒

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"о

_tf_keras_layerФ
{"name": "conv2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70, 70, 3]}}
Ё
regularization_losses
	variables
trainable_variables
	keras_api
+з&call_and_return_all_conditional_losses
и__call__"▀
_tf_keras_layer┼{"name": "activation_88", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_88", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
▓
regularization_losses
	variables
trainable_variables
	keras_api
+й&call_and_return_all_conditional_losses
к__call__"б
_tf_keras_layerЗ{"name": "max_pooling2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
╓


 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
+л&call_and_return_all_conditional_losses
м__call__"п	
_tf_keras_layerХ	{"name": "conv2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 34, 34, 64]}}
Ё
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+н&call_and_return_all_conditional_losses
о__call__"▀
_tf_keras_layer┼{"name": "activation_89", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_89", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
│
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+п&call_and_return_all_conditional_losses
░__call__"в
_tf_keras_layerИ{"name": "max_pooling2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}}
Ъ
.regularization_losses
/	variables
0trainable_variables
1	keras_api
+▒&call_and_return_all_conditional_losses
▓__call__"Й
_tf_keras_layerя{"name": "flatten_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 26}}
▌

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+│&call_and_return_all_conditional_losses
┤__call__"╢
_tf_keras_layerЬ{"name": "dense_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16384}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16384]}}
ё
8regularization_losses
9	variables
:trainable_variables
;	keras_api
+╡&call_and_return_all_conditional_losses
╢__call__"р
_tf_keras_layer╞{"name": "activation_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_90", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}
╫

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+╖&call_and_return_all_conditional_losses
╕__call__"░
_tf_keras_layerЦ{"name": "dense_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
Ї
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
+╣&call_and_return_all_conditional_losses
║__call__"у
_tf_keras_layer╔{"name": "activation_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_91", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "shared_object_id": 19}
є
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratemТmУ mФ!mХ2mЦ3mЧ<mШ=mЩvЪvЫ vЬ!vЭ2vЮ3vЯ<vа=vб"
	optimizer
 "
trackable_list_wrapper
X
0
1
 2
!3
24
35
<6
=7"
trackable_list_wrapper
X
0
1
 2
!3
24
35
<6
=7"
trackable_list_wrapper
╬
regularization_losses

Klayers
Lnon_trainable_variables
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
Ometrics
д__call__
г_default_save_signature
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
-
╗serving_default"
signature_map
*:(@2conv2d_44/kernel
:@2conv2d_44/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
regularization_losses

Players
Qnon_trainable_variables
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
Tmetrics
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
regularization_losses

Ulayers
Vnon_trainable_variables
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
Ymetrics
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
regularization_losses

Zlayers
[non_trainable_variables
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
^metrics
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_45/kernel
:@2conv2d_45/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
░
"regularization_losses

_layers
`non_trainable_variables
alayer_regularization_losses
blayer_metrics
#	variables
$trainable_variables
cmetrics
м__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
&regularization_losses

dlayers
enon_trainable_variables
flayer_regularization_losses
glayer_metrics
'	variables
(trainable_variables
hmetrics
о__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
*regularization_losses

ilayers
jnon_trainable_variables
klayer_regularization_losses
llayer_metrics
+	variables
,trainable_variables
mmetrics
░__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
.regularization_losses

nlayers
onon_trainable_variables
player_regularization_losses
qlayer_metrics
/	variables
0trainable_variables
rmetrics
▓__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
$:"ААА2dense_44/kernel
:А2dense_44/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
░
4regularization_losses

slayers
tnon_trainable_variables
ulayer_regularization_losses
vlayer_metrics
5	variables
6trainable_variables
wmetrics
┤__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
8regularization_losses

xlayers
ynon_trainable_variables
zlayer_regularization_losses
{layer_metrics
9	variables
:trainable_variables
|metrics
╢__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses"
_generic_user_object
": 	А2dense_45/kernel
:2dense_45/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
▓
>regularization_losses

}layers
~non_trainable_variables
layer_regularization_losses
Аlayer_metrics
?	variables
@trainable_variables
Бmetrics
╕__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Bregularization_losses
Вlayers
Гnon_trainable_variables
 Дlayer_regularization_losses
Еlayer_metrics
C	variables
Dtrainable_variables
Жmetrics
║__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
n
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
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
З0
И1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
╪

Йtotal

Кcount
Л	variables
М	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 29}
г

Нtotal

Оcount
П
_fn_kwargs
Р	variables
С	keras_api"╫
_tf_keras_metric╝{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 22}
:  (2total
:  (2count
0
Й0
К1"
trackable_list_wrapper
.
Л	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Н0
О1"
trackable_list_wrapper
.
Р	variables"
_generic_user_object
/:-@2Adam/conv2d_44/kernel/m
!:@2Adam/conv2d_44/bias/m
/:-@@2Adam/conv2d_45/kernel/m
!:@2Adam/conv2d_45/bias/m
):'ААА2Adam/dense_44/kernel/m
!:А2Adam/dense_44/bias/m
':%	А2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
/:-@2Adam/conv2d_44/kernel/v
!:@2Adam/conv2d_44/bias/v
/:-@@2Adam/conv2d_45/kernel/v
!:@2Adam/conv2d_45/bias/v
):'ААА2Adam/dense_44/kernel/v
!:А2Adam/dense_44/bias/v
':%	А2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
Є2я
I__inference_sequential_45_layer_call_and_return_conditional_losses_354399
I__inference_sequential_45_layer_call_and_return_conditional_losses_354435
I__inference_sequential_45_layer_call_and_return_conditional_losses_354303
I__inference_sequential_45_layer_call_and_return_conditional_losses_354334└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
!__inference__wrapped_model_353955╞
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *6в3
1К.
conv2d_44_input         FF
Ж2Г
.__inference_sequential_45_layer_call_fn_354108
.__inference_sequential_45_layer_call_fn_354456
.__inference_sequential_45_layer_call_fn_354477
.__inference_sequential_45_layer_call_fn_354272└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_44_layer_call_and_return_conditional_losses_354487в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_44_layer_call_fn_354496в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_88_layer_call_and_return_conditional_losses_354501в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_88_layer_call_fn_354506в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤2▒
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_353961р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Щ2Ц
1__inference_max_pooling2d_44_layer_call_fn_353967р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
я2ь
E__inference_conv2d_45_layer_call_and_return_conditional_losses_354516в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_conv2d_45_layer_call_fn_354525в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_89_layer_call_and_return_conditional_losses_354530в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_89_layer_call_fn_354535в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤2▒
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_353973р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Щ2Ц
1__inference_max_pooling2d_45_layer_call_fn_353979р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ё2э
F__inference_flatten_22_layer_call_and_return_conditional_losses_354541в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_flatten_22_layer_call_fn_354546в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_44_layer_call_and_return_conditional_losses_354556в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_44_layer_call_fn_354565в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_90_layer_call_and_return_conditional_losses_354570в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_90_layer_call_fn_354575в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_45_layer_call_and_return_conditional_losses_354585в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_45_layer_call_fn_354594в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_activation_91_layer_call_and_return_conditional_losses_354599в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╪2╒
.__inference_activation_91_layer_call_fn_354604в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙B╨
$__inference_signature_wrapper_354363conv2d_44_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ▒
!__inference__wrapped_model_353955Л !23<=@в=
6в3
1К.
conv2d_44_input         FF
к "=к:
8
activation_91'К$
activation_91         ╡
I__inference_activation_88_layer_call_and_return_conditional_losses_354501h7в4
-в*
(К%
inputs         DD@
к "-в*
#К 
0         DD@
Ъ Н
.__inference_activation_88_layer_call_fn_354506[7в4
-в*
(К%
inputs         DD@
к " К         DD@╡
I__inference_activation_89_layer_call_and_return_conditional_losses_354530h7в4
-в*
(К%
inputs           @
к "-в*
#К 
0           @
Ъ Н
.__inference_activation_89_layer_call_fn_354535[7в4
-в*
(К%
inputs           @
к " К           @з
I__inference_activation_90_layer_call_and_return_conditional_losses_354570Z0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ 
.__inference_activation_90_layer_call_fn_354575M0в-
&в#
!К
inputs         А
к "К         Ае
I__inference_activation_91_layer_call_and_return_conditional_losses_354599X/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ }
.__inference_activation_91_layer_call_fn_354604K/в,
%в"
 К
inputs         
к "К         ╡
E__inference_conv2d_44_layer_call_and_return_conditional_losses_354487l7в4
-в*
(К%
inputs         FF
к "-в*
#К 
0         DD@
Ъ Н
*__inference_conv2d_44_layer_call_fn_354496_7в4
-в*
(К%
inputs         FF
к " К         DD@╡
E__inference_conv2d_45_layer_call_and_return_conditional_losses_354516l !7в4
-в*
(К%
inputs         ""@
к "-в*
#К 
0           @
Ъ Н
*__inference_conv2d_45_layer_call_fn_354525_ !7в4
-в*
(К%
inputs         ""@
к " К           @з
D__inference_dense_44_layer_call_and_return_conditional_losses_354556_231в.
'в$
"К
inputs         АА
к "&в#
К
0         А
Ъ 
)__inference_dense_44_layer_call_fn_354565R231в.
'в$
"К
inputs         АА
к "К         Ае
D__inference_dense_45_layer_call_and_return_conditional_losses_354585]<=0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ }
)__inference_dense_45_layer_call_fn_354594P<=0в-
&в#
!К
inputs         А
к "К         м
F__inference_flatten_22_layer_call_and_return_conditional_losses_354541b7в4
-в*
(К%
inputs         @
к "'в$
К
0         АА
Ъ Д
+__inference_flatten_22_layer_call_fn_354546U7в4
-в*
(К%
inputs         @
к "К         ААя
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_353961ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_44_layer_call_fn_353967СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_353973ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_45_layer_call_fn_353979СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╚
I__inference_sequential_45_layer_call_and_return_conditional_losses_354303{ !23<=HвE
>в;
1К.
conv2d_44_input         FF
p 

 
к "%в"
К
0         
Ъ ╚
I__inference_sequential_45_layer_call_and_return_conditional_losses_354334{ !23<=HвE
>в;
1К.
conv2d_44_input         FF
p

 
к "%в"
К
0         
Ъ ┐
I__inference_sequential_45_layer_call_and_return_conditional_losses_354399r !23<=?в<
5в2
(К%
inputs         FF
p 

 
к "%в"
К
0         
Ъ ┐
I__inference_sequential_45_layer_call_and_return_conditional_losses_354435r !23<=?в<
5в2
(К%
inputs         FF
p

 
к "%в"
К
0         
Ъ а
.__inference_sequential_45_layer_call_fn_354108n !23<=HвE
>в;
1К.
conv2d_44_input         FF
p 

 
к "К         а
.__inference_sequential_45_layer_call_fn_354272n !23<=HвE
>в;
1К.
conv2d_44_input         FF
p

 
к "К         Ч
.__inference_sequential_45_layer_call_fn_354456e !23<=?в<
5в2
(К%
inputs         FF
p 

 
к "К         Ч
.__inference_sequential_45_layer_call_fn_354477e !23<=?в<
5в2
(К%
inputs         FF
p

 
к "К         ╟
$__inference_signature_wrapper_354363Ю !23<=SвP
в 
IкF
D
conv2d_44_input1К.
conv2d_44_input         FF"=к:
8
activation_91'К$
activation_91         