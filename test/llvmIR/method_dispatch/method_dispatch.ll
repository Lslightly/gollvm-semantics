; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22.go_export\22,\22e\22,@progbits"
module asm "\09.ascii \22v3;\\n\22"
module asm "\09.ascii \22package \22"
module asm "\09.ascii \22main\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22pkgpath \22"
module asm "\09.ascii \22main\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22import \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \\\22\22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22\\\22\\n\22"
module asm "\09.ascii \22import \22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22 \\\22\22"
module asm "\09.ascii \22unsafe\22"
module asm "\09.ascii \22\\\22\\n\22"
module asm "\09.ascii \22init\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22cpu\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22internal_1cpu..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22runtime..import\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22abi\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1abi\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22bytealg\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1bytealg\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goarch\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goarch\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goexperiment\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goexperiment\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22goos\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~internal_1goos\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1atomic\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22math\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1math\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22sys\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22~runtime_1internal_1sys\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22init_graph\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \221\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \220\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22types 8 3\22"
module asm "\09.ascii \22 20\22"
module asm "\09.ascii \22 181\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 19\22"
module asm "\09.ascii \22 18\22"
module asm "\09.ascii \22 21\22"
module asm "\09.ascii \22 45\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 \\\22I\\\22 <type 7>\\ntype 2 \\\22S\\\22 <type 5>\\n func (? <esc:0x1> <type 2>) .foo (a <type 4>) <inl:104>\\n  // /home/lqw/semantic/gollvm-semantic/test/method_dispatch.go:10\\n  .sink = $convert(<type 6>, a) //11\\ntype 3 (? <type -16>)\\ntype 4 *<type -11>\\ntype 5 struct { }\\ntype 6 interface { }\\ntype 7 interface { .main.foo (a <type 4>); }\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22/*asm \22"
module asm "\09.ascii \22runtime.setmodinfo\22"
module asm "\09.ascii \22 */ \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22__set_debug_modinfo__\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22?\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type -16>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22var \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22sink\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 6>\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22Test\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22i\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 1>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22checksum DE477CF8BFDE0C126CC7C1ACEB8937D20F6C04D8\\n\22"
module asm "\09.text"

%StructType.0 = type { %_type.0, %IPST.11 }
%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%IPST.11 = type { %structField.0*, i64, i64 }
%structField.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, { i8*, i64 }*, i64 }
%PtrType.0 = type { %_type.0, %_type.0* }
%functionDescriptor.0 = type { i64 }
%FuncType.0 = type { %_type.0, i8, %IPST.10, %IPST.10 }
%IPST.10 = type { %_type.0**, i64, i64 }
%S.0 = type {}
%InterfaceType.0 = type { %_type.0, %IPST.12 }
%IPST.12 = type { %imethod.0*, i64, i64 }
%imethod.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0* }

$type..func_8_2int_9_8_9 = comdat any

$gcbits..ba = comdat any

$int..p = comdat any

$int..d = comdat any

$type..func_8main_0S_3_2int_9_8_9 = comdat any

$main.S..p = comdat any

$type..func_8_2main_0S_3_2int_9_8_9 = comdat any

$type.._2_2main_0S = comdat any

$gcbits..da = comdat any

$main.I..p = comdat any

@main.S..d = constant %StructType.0 { %_type.0 { i64 0, i64 0, i32 1464852205, i8 8, i8 1, i8 1, i8 -103, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal0..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C1, %uncommonType.0* @go..C18, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, %IPST.11 { %structField.0* getelementptr inbounds ([1 x %structField.0], [1 x %structField.0]* @go..C28, i32 0, i32 0), i64 0, i64 0 } }
@runtime.memequal0..f = external constant %functionDescriptor.0
@const.0 = private constant [13 x i8] c"\09main\09main.S\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.0, i32 0, i32 0), i64 12 }
@const.1 = private constant [2 x i8] c"S\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.1, i32 0, i32 0), i64 1 }
@const.2 = private constant [5 x i8] c"main\00", align 1
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@const.3 = private constant [4 x i8] c"foo\00", align 1
@go..C4 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.3, i32 0, i32 0), i64 3 }
@go..C5 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@type..func_8_2int_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -2099100376, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C6, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C12, i32 0, i32 0), i64 1, i64 1 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C13, i32 0, i32 0), i64 0, i64 0 } }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.4 = private constant [11 x i8] c"func(*int)\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @const.4, i32 0, i32 0), i64 10 }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C7, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.5 = private constant [5 x i8] c"*int\00", align 1
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.5, i32 0, i32 0), i64 4 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C8, %uncommonType.0* @go..C11, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.6 = private constant [4 x i8] c"int\00", align 1
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.6, i32 0, i32 0), i64 3 }
@go..C9 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.6, i32 0, i32 0), i64 3 }
@go..C10 = internal constant [1 x %method.0] zeroinitializer
@go..C11 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C9, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C10, i32 0, i32 0), i64 0, i64 0 } }
@go..C12 = internal constant [1 x %_type.0*] [%_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0)]
@go..C13 = internal constant [1 x %_type.0*] zeroinitializer
@type..func_8main_0S_3_2int_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -272603160, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C14, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([2 x %_type.0*], [2 x %_type.0*]* @go..C15, i32 0, i32 0), i64 2, i64 2 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C16, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.7 = private constant [25 x i8] c"func(\09main\09main.S, *int)\00", align 1
@go..C14 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @const.7, i32 0, i32 0), i64 24 }
@go..C15 = internal constant [2 x %_type.0*] [%_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0), %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0)]
@go..C16 = internal constant [1 x %_type.0*] zeroinitializer
@go..C17 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C4, { i8*, i64 }* @go..C5, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2int_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8main_0S_3_2int_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %S.0*, i64*)* @main.S.foo to i8*) }]
@go..C18 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* @go..C3, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C17, i32 0, i32 0), i64 1, i64 1 } }
@main.S..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1962798809, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C19, %uncommonType.0* @go..C26, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2main_0S, i32 0, i32 0) }, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0) }, comdat
@const.8 = private constant [14 x i8] c"*\09main\09main.S\00", align 1
@go..C19 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @const.8, i32 0, i32 0), i64 13 }
@go..C20 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.3, i32 0, i32 0), i64 3 }
@go..C21 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@type..func_8_2main_0S_3_2int_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -1518181016, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C22, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([2 x %_type.0*], [2 x %_type.0*]* @go..C23, i32 0, i32 0), i64 2, i64 2 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C24, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.9 = private constant [26 x i8] c"func(*\09main\09main.S, *int)\00", align 1
@go..C22 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @const.9, i32 0, i32 0), i64 25 }
@go..C23 = internal constant [2 x %_type.0*] [%_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0), %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0)]
@go..C24 = internal constant [1 x %_type.0*] zeroinitializer
@go..C25 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C20, { i8*, i64 }* @go..C21, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2int_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2main_0S_3_2int_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %S.0*, i64*)* @main.S.foo to i8*) }]
@go..C26 = internal constant %uncommonType.0 { { i8*, i64 }* null, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C25, i32 0, i32 0), i64 1, i64 1 } }
@type.._2_2main_0S = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1340009881, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C27, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, comdat
@const.10 = private constant [15 x i8] c"**\09main\09main.S\00", align 1
@go..C27 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @const.10, i32 0, i32 0), i64 14 }
@go..C28 = internal constant [1 x %structField.0] zeroinitializer
@imt..interface_4main_0foo_bfunc_8_2int_9_8_9_5..main.S = constant { %_type.0*, void (i8*, %S.0*, i64*)* } { %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0), void (i8*, %S.0*, i64*)* @main.S.foo }
@pimt..interface_4main_0foo_bfunc_8_2int_9_8_9_5..main.S = local_unnamed_addr constant { %_type.0*, void (i8*, %S.0*, i64*)* } { %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0), void (i8*, %S.0*, i64*)* @main.S.foo }
@main.I..d = constant %InterfaceType.0 { %_type.0 { i64 16, i64 16, i32 60720187, i8 0, i8 8, i8 8, i8 20, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.interequal..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..da, i32 0, i32 0), { i8*, i64 }* @go..C29, %uncommonType.0* @go..C33, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.I..p, i32 0, i32 0) }, %IPST.12 { %imethod.0* getelementptr inbounds ([1 x %imethod.0], [1 x %imethod.0]* @go..C37, i32 0, i32 0), i64 1, i64 1 } }
@runtime.interequal..f = external constant %functionDescriptor.0
@gcbits..da = weak constant [1 x i8] c"\03", comdat
@const.11 = private constant [13 x i8] c"\09main\09main.I\00", align 1
@go..C29 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.11, i32 0, i32 0), i64 12 }
@const.12 = private constant [2 x i8] c"I\00", align 1
@go..C30 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.12, i32 0, i32 0), i64 1 }
@go..C31 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C32 = internal constant [1 x %method.0] zeroinitializer
@go..C33 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C30, { i8*, i64 }* @go..C31, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C32, i32 0, i32 0), i64 0, i64 0 } }
@main.I..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 971523001, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C34, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i32 0, i32 0) }, comdat
@const.13 = private constant [14 x i8] c"*\09main\09main.I\00", align 1
@go..C34 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @const.13, i32 0, i32 0), i64 13 }
@go..C35 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.3, i32 0, i32 0), i64 3 }
@go..C36 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C37 = internal constant [1 x %imethod.0] [%imethod.0 { { i8*, i64 }* @go..C35, { i8*, i64 }* @go..C36, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2int_9_8_9, i32 0, i32 0) }]
@main.sink = global { %_type.0*, i8* } zeroinitializer
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@main.Test..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*, i8*, i8*)* @main.Test to i64) }
@const.14 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
@main.main..init0..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*)* @main.main..init0 to i64) }
@main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq to i64) }
@main._632_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uintptr..eq to i64) }
@main._6256_7uint64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint64..eq to i64) }
@main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main._6122_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6122_7uintptr..eq to i64) }
@main._68_7uint64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._68_7uint64..eq to i64) }
@main._6128_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6128_7uint8..eq to i64) }
@main._64096_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64096_7uint8..eq to i64) }
@main._668_7uint16..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._668_7uint16..eq to i64) }
@main._633_7float64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._633_7float64..eq to i64) }
@main._665_7uint32..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._665_7uint32..eq to i64) }
@main._64_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64_7uintptr..eq to i64) }
@main._65_7uint..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._65_7uint..eq to i64) }
@main._6512_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6512_7uint8..eq to i64) }
@main._6249_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6249_7uint8..eq to i64) }
@main._6129_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6129_7uint8..eq to i64) }
@main._632_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uint8..eq to i64) }
@main._627_7string..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._627_7string..eq to i64) }
@main._61024_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._61024_7uint8..eq to i64) }
@main._62_7int32..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._62_7int32..eq to i64) }
@main._664_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._664_7uint8..eq to i64) }
@main._6256_7uint8..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint8..eq to i64) }
@main..types = constant { i64, [7 x i8*] } { i64 7, [7 x i8*] [i8* bitcast (%PtrType.0* @int..p to i8*), i8* bitcast (%FuncType.0* @type..func_8_2int_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8main_0S_3_2int_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8_2main_0S_3_2int_9_8_9 to i8*), i8* bitcast (%PtrType.0* @type.._2_2main_0S to i8*), i8* bitcast (%PtrType.0* @main.S..p to i8*), i8* bitcast (%PtrType.0* @main.I..p to i8*)] }
@internal_1cpu..types = external externally_initialized global { i64, [1 x i8*] }
@runtime..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1abi..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1bytealg..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goarch..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goexperiment..types = external externally_initialized global { i64, [1 x i8*] }
@internal_1goos..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1atomic..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1math..types = external externally_initialized global { i64, [1 x i8*] }
@runtime_1internal_1sys..types = external externally_initialized global { i64, [1 x i8*] }
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [7 x i8*] }* @main..types to { i64, [1 x i8*] }*)]
@go..C0 = internal global { i8*, i64, [1 x { i8*, i64, i64, i8* }] } { i8* null, i64 1, [1 x { i8*, i64, i64, i8* }] [{ i8*, i64, i64, i8* } { i8* bitcast ({ %_type.0*, i8* }* @main.sink to i8*), i64 16, i64 16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..da, i32 0, i32 0) }] }

define void @main.S.foo(i8* nest nocapture readnone %nest.0, %S.0* readnone %r.0.pointer, i64* %a) #0 {
entry:
  %icmp.4 = icmp eq %S.0* %r.0.pointer, null
  br i1 %icmp.4, label %then.0, label %else.1, !make.implicit !3

then.0:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.1:                                           ; preds = %entry
  store %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), %_type.0** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.sink, i64 0, i32 0), align 8
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.3, label %else.3, label %else.4

fallthrough.2:                                    ; preds = %else.4, %else.3
  ret void

else.3:                                           ; preds = %else.1
  store i64* %a, i64** bitcast (i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.sink, i64 0, i32 1) to i64**), align 8
  br label %fallthrough.2

else.4:                                           ; preds = %else.1
  %pticast.0 = ptrtoint i64* %a to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* bitcast (i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.sink, i64 0, i32 1) to i8*), i64 %pticast.0)
  br label %fallthrough.2
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noinline
define void @main.Test(i8* nest nocapture readnone %nest.2, i8* nocapture readonly %i.chunk0, i8* %i.chunk1) #3 {
entry:
  %call.1 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.53 = bitcast i8* %call.1 to i64*
  store i64 2, i64* %cast.53, align 8
  %field.11 = getelementptr inbounds i8, i8* %i.chunk0, i64 8
  %0 = bitcast i8* %field.11 to void (i8*, i8*, i64*)**
  %.field.ld.0 = load void (i8*, i8*, i64*)*, void (i8*, i8*, i64*)** %0, align 8
  call void %.field.ld.0(i8* nest undef, i8* %i.chunk1, i64* nonnull %cast.53)
  ret void
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

define void @main.main..init0(i8* nest nocapture readnone %nest.3) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.14, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.9 = icmp eq i8* %key1, null
  br i1 %icmp.9, label %then.10, label %else.10, !make.implicit !3

then.10:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.10:                                          ; preds = %entry
  %icmp.10 = icmp eq i8* %key2, null
  br i1 %icmp.10, label %then.11, label %else.11, !make.implicit !3

then.11:                                          ; preds = %else.10
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.11:                                          ; preds = %else.10
  %tmpv.16.sroa.0.0.cast.66.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.16.sroa.0.0.copyload = load i64, i64* %tmpv.16.sroa.0.0.cast.66.sroa_idx, align 8
  %tmpv.17.sroa.0.0.cast.71.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.17.sroa.0.0.copyload = load i64, i64* %tmpv.17.sroa.0.0.cast.71.sroa_idx, align 8
  %icmp.11.not = icmp eq i64 %tmpv.16.sroa.0.0.copyload, %tmpv.17.sroa.0.0.copyload
  br i1 %icmp.11.not, label %else.14, label %common.ret

common.ret:                                       ; preds = %else.14, %else.11
  %common.ret.op = phi i8 [ 0, %else.11 ], [ %., %else.14 ]
  ret i8 %common.ret.op

else.14:                                          ; preds = %else.11
  %field.21 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.21 to i32*
  %.field.ld.1 = load i32, i32* %0, align 4
  %field.22 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.22 to i32*
  %.field.ld.2 = load i32, i32* %1, align 4
  %icmp.15.not = icmp eq i32 %.field.ld.1, %.field.ld.2
  %. = zext i1 %icmp.15.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.4
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.5
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.76 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.77 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.18 = icmp eq i8* %key1, null
  br i1 %icmp.18, label %then.18.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.21 = icmp eq i8* %key2, null
  br i1 %icmp.21, label %then.20.split, label %then.24, !make.implicit !3

label.0:                                          ; preds = %then.24
  %add.0 = add nuw nsw i64 %tmpv.30.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.24

then.18.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.20.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.24, %label.0
  %common.ret.op = phi i8 [ 0, %then.24 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.24:                                          ; preds = %label.0, %entry.split
  %tmpv.30.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.32.sroa.4.0.cast.80.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.30.018, i32 2
  %tmpv.32.sroa.4.0.copyload = load i64, i64* %tmpv.32.sroa.4.0.cast.80.sroa_idx7, align 8
  %tmpv.32.sroa.3.0.cast.80.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.30.018, i32 1
  %tmpv.32.sroa.3.0.copyload = load i64, i64* %tmpv.32.sroa.3.0.cast.80.sroa_idx6, align 8
  %tmpv.32.sroa.0.0.cast.80.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.30.018, i32 0
  %tmpv.32.sroa.0.0.copyload = load i32, i32* %tmpv.32.sroa.0.0.cast.80.sroa_idx, align 8
  %tmpv.33.sroa.0.0.cast.85.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.77, i64 0, i64 %tmpv.30.018, i32 0
  %tmpv.33.sroa.0.0.copyload = load i32, i32* %tmpv.33.sroa.0.0.cast.85.sroa_idx, align 8
  %tmpv.33.sroa.3.0.cast.85.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.77, i64 0, i64 %tmpv.30.018, i32 1
  %tmpv.33.sroa.3.0.copyload = load i64, i64* %tmpv.33.sroa.3.0.cast.85.sroa_idx4, align 8
  %tmpv.33.sroa.4.0.cast.85.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.77, i64 0, i64 %tmpv.30.018, i32 2
  %tmpv.33.sroa.4.0.copyload = load i64, i64* %tmpv.33.sroa.4.0.cast.85.sroa_idx5, align 8
  %icmp.22 = icmp eq i32 %tmpv.32.sroa.0.0.copyload, %tmpv.33.sroa.0.0.copyload
  %icmp.23 = icmp eq i64 %tmpv.32.sroa.3.0.copyload, %tmpv.33.sroa.3.0.copyload
  %tmpv.39.0.in = select i1 %icmp.22, i1 %icmp.23, i1 false
  %icmp.24 = icmp eq i64 %tmpv.32.sroa.4.0.copyload, %tmpv.33.sroa.4.0.copyload
  %tmpv.40.0.in = select i1 %tmpv.39.0.in, i1 %icmp.24, i1 false
  br i1 %tmpv.40.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.27 = icmp eq i8* %key1, null
  br i1 %icmp.27, label %then.25, label %else.25, !make.implicit !3

then.25:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.25:                                          ; preds = %entry
  %icmp.28 = icmp eq i8* %key2, null
  br i1 %icmp.28, label %then.26, label %else.26, !make.implicit !3

then.26:                                          ; preds = %else.25
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.26:                                          ; preds = %else.25
  %field.29 = bitcast i8* %key1 to i32*
  %.field.ld.3 = load i32, i32* %field.29, align 4
  %field.30 = bitcast i8* %key2 to i32*
  %.field.ld.4 = load i32, i32* %field.30, align 4
  %icmp.29.not = icmp eq i32 %.field.ld.3, %.field.ld.4
  br i1 %icmp.29.not, label %else.29, label %common.ret

common.ret:                                       ; preds = %else.32, %else.29, %else.26
  %common.ret.op = phi i8 [ 0, %else.26 ], [ 0, %else.29 ], [ %., %else.32 ]
  ret i8 %common.ret.op

else.29:                                          ; preds = %else.26
  %field.31 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.31 to i64*
  %.field.ld.5 = load i64, i64* %0, align 8
  %field.32 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.32 to i64*
  %.field.ld.6 = load i64, i64* %1, align 8
  %icmp.32.not = icmp eq i64 %.field.ld.5, %.field.ld.6
  br i1 %icmp.32.not, label %else.32, label %common.ret

else.32:                                          ; preds = %else.29
  %field.33 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.33 to i64*
  %.field.ld.7 = load i64, i64* %2, align 8
  %field.34 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.34 to i64*
  %.field.ld.8 = load i64, i64* %3, align 8
  %icmp.35.not = icmp eq i64 %.field.ld.7, %.field.ld.8
  %. = zext i1 %icmp.35.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.9
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.10
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.96 = bitcast i8* %key1 to [33 x double]*
  %cast.97 = bitcast i8* %key2 to [33 x double]*
  %icmp.40 = icmp eq i8* %key1, null
  br i1 %icmp.40, label %then.36.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.41 = icmp eq i8* %key2, null
  br i1 %icmp.41, label %then.37.split, label %then.39, !make.implicit !3

label.0:                                          ; preds = %then.39
  %add.1 = add nuw nsw i64 %tmpv.57.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.97, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.57.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.97, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.57.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.39

then.36.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.37.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.39, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.39 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.39:                                          ; preds = %label.0.2, %entry.split
  %tmpv.57.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %tmpv.57.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.97, i64 0, i64 %tmpv.57.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.16
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.17
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.100 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.101 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.47 = icmp eq i8* %key1, null
  br i1 %icmp.47, label %then.42.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.48 = icmp eq i8* %key2, null
  br i1 %icmp.48, label %then.43.split, label %then.47, !make.implicit !3

then.42.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.43.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.44:                                          ; preds = %then.47
  %icmp.50 = icmp eq i8* %tmpv.73.sroa.0.0.copyload, %tmpv.75.sroa.0.0.copyload
  br i1 %icmp.50, label %else.46, label %fallthrough.44

fallthrough.44:                                   ; preds = %then.44
  %call.18 = call i32 @memcmp(i8* %tmpv.73.sroa.0.0.copyload, i8* %tmpv.75.sroa.0.0.copyload, i64 %tmpv.73.sroa.3.0.copyload)
  %icmp.51 = icmp eq i32 %call.18, 0
  br i1 %icmp.51, label %else.46, label %common.ret

common.ret:                                       ; preds = %then.47, %else.46, %fallthrough.44
  %common.ret.op = phi i8 [ 0, %fallthrough.44 ], [ 1, %else.46 ], [ 0, %then.47 ]
  ret i8 %common.ret.op

else.46:                                          ; preds = %fallthrough.44, %then.44
  %add.2 = add nuw nsw i64 %tmpv.71.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.47

then.47:                                          ; preds = %else.46, %entry.split
  %tmpv.71.019 = phi i64 [ %add.2, %else.46 ], [ 0, %entry.split ]
  %tmpv.73.sroa.0.0.cast.104.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.100, i64 0, i64 %tmpv.71.019, i32 0
  %tmpv.73.sroa.0.0.copyload = load i8*, i8** %tmpv.73.sroa.0.0.cast.104.sroa_idx, align 8
  %tmpv.73.sroa.3.0.cast.104.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.100, i64 0, i64 %tmpv.71.019, i32 1
  %tmpv.73.sroa.3.0.copyload = load i64, i64* %tmpv.73.sroa.3.0.cast.104.sroa_idx3, align 8
  %tmpv.75.sroa.0.0.cast.107.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.101, i64 0, i64 %tmpv.71.019, i32 0
  %tmpv.75.sroa.0.0.copyload = load i8*, i8** %tmpv.75.sroa.0.0.cast.107.sroa_idx, align 8
  %tmpv.75.sroa.3.0.cast.107.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.101, i64 0, i64 %tmpv.71.019, i32 1
  %tmpv.75.sroa.3.0.copyload = load i64, i64* %tmpv.75.sroa.3.0.cast.107.sroa_idx1, align 8
  %icmp.49 = icmp eq i64 %tmpv.73.sroa.3.0.copyload, %tmpv.75.sroa.3.0.copyload
  br i1 %icmp.49, label %then.44, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.30, i8* readonly %key1, i8* readonly %key2) #4 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.22
}

define void @__go_init_main(i8* nest nocapture readnone %nest.31) local_unnamed_addr #0 {
entry:
  call void @runtime.registerTypeDescriptors(i8* nest undef, i64 11, i8* bitcast ([11 x { i64, [1 x i8*] }*]* @go..typelists to i8*))
  call void @internal_1cpu..import(i8* nest undef)
  call void @runtime..import(i8* nest undef)
  call void @runtime.registerGCRoots(i8* nest undef, i8* bitcast ({ i8*, i64, [1 x { i8*, i64, i64, i8* }] }* @go..C0 to i8*))
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) local_unnamed_addr #0

declare void @internal_1cpu..import(i8*) local_unnamed_addr #0

declare void @runtime..import(i8*) local_unnamed_addr #0

declare void @runtime.registerGCRoots(i8*, i8*) local_unnamed_addr #0

define void @main.main(i8* nest nocapture readnone %nest.1) local_unnamed_addr #0 {
entry:
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i64 0, i32 0))
  call void @main.Test(i8* nest undef, i8* bitcast ({ %_type.0*, void (i8*, %S.0*, i64*)* }* @imt..interface_4main_0foo_bfunc_8_2int_9_8_9_5..main.S to i8*), i8* nonnull %call.0)
  ret void
}

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "gc-leaf-function" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { noinline "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
