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
module asm "\09.ascii \22types 6 3\22"
module asm "\09.ascii \22 20\22"
module asm "\09.ascii \22 128\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 18\22"
module asm "\09.ascii \22 32\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 \\\22I\\\22 <type 5>\\ntype 2 \\\22S\\\22 <type 4>\\n func (? <esc:0x1> <type 2>) String () <inl:60>\\n  // /home/lqw/semantic/gollvm-semantic/test/ifaceEITp.go:9\\ntype 3 (? <type -16>)\\ntype 4 struct { }\\ntype 5 interface { String (); }\\n\22"
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
module asm "\09.ascii \22checksum 5908236CD16C27BF9A5CF11C77DA2A2F3692E4F9\\n\22"
module asm "\09.text"

%InterfaceType.0 = type { %_type.0, %IPST.12 }
%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%IPST.12 = type { %imethod.0*, i64, i64 }
%imethod.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0* }
%PtrType.0 = type { %_type.0, %_type.0* }
%functionDescriptor.0 = type { i64 }
%FuncType.0 = type { %_type.0, i8, %IPST.10, %IPST.10 }
%IPST.10 = type { %_type.0**, i64, i64 }
%StructType.0 = type { %_type.0, %IPST.11 }
%IPST.11 = type { %structField.0*, i64, i64 }
%structField.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, { i8*, i64 }*, i64 }
%S.0 = type {}
%.1 = type { { %_type.0*, void (i8*, i8*)* }*, i8* }

$gcbits..da = comdat any

$main.I..p = comdat any

$gcbits..ba = comdat any

$type..func_8_9_8_9 = comdat any

$type..func_8main_0S_9_8_9 = comdat any

$main.S..p = comdat any

$type..func_8_2main_0S_9_8_9 = comdat any

$type.._2_2main_0S = comdat any

@type..func_8_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 8, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C8, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C9, i32 0, i32 0), i64 0, i64 0 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C10, i32 0, i32 0), i64 0, i64 0 } }, comdat


@main.I..d = constant %InterfaceType.0 { %_type.0 { i64 16, i64 16, i32 60720187, i8 0, i8 8, i8 8, i8 20, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.interequal..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..da, i32 0, i32 0), { i8*, i64 }* @go..C1, %uncommonType.0* @go..C5, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.I..p, i32 0, i32 0) }, %IPST.12 { %imethod.0* getelementptr inbounds ([1 x %imethod.0], [1 x %imethod.0]* @go..C11, i32 0, i32 0), i64 1, i64 1 } }
@runtime.interequal..f = external constant %functionDescriptor.0
@gcbits..da = weak constant [1 x i8] c"\03", comdat
@const.0 = private constant [13 x i8] c"\09main\09main.I\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.0, i32 0, i32 0), i64 12 }
@const.1 = private constant [2 x i8] c"I\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.1, i32 0, i32 0), i64 1 }
@const.2 = private constant [5 x i8] c"main\00", align 1
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C4 = internal constant [1 x %method.0] zeroinitializer
@go..C5 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* @go..C3, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C4, i32 0, i32 0), i64 0, i64 0 } }
@main.I..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 971523001, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C6, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.3 = private constant [14 x i8] c"*\09main\09main.I\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @const.3, i32 0, i32 0), i64 13 }
@const.4 = private constant [7 x i8] c"String\00", align 1
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.4, i32 0, i32 0), i64 6 }
@const.5 = private constant [7 x i8] c"func()\00", align 1
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.5, i32 0, i32 0), i64 6 }
@go..C9 = internal constant [1 x %_type.0*] zeroinitializer
@go..C10 = internal constant [1 x %_type.0*] zeroinitializer
@go..C11 = internal constant [1 x %imethod.0] [%imethod.0 { { i8*, i64 }* @go..C7, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0) }]
@main.S..d = constant %StructType.0 { %_type.0 { i64 0, i64 0, i32 1464852205, i8 8, i8 1, i8 1, i8 -103, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal0..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C12, %uncommonType.0* @go..C20, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, %IPST.11 { %structField.0* getelementptr inbounds ([1 x %structField.0], [1 x %structField.0]* @go..C29, i32 0, i32 0), i64 0, i64 0 } }
@runtime.memequal0..f = external constant %functionDescriptor.0
@const.6 = private constant [13 x i8] c"\09main\09main.S\00", align 1
@go..C12 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.6, i32 0, i32 0), i64 12 }
@const.7 = private constant [2 x i8] c"S\00", align 1
@go..C13 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.7, i32 0, i32 0), i64 1 }
@go..C14 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C15 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.4, i32 0, i32 0), i64 6 }
@type..func_8main_0S_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -369369688, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C16, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C17, i32 0, i32 0), i64 1, i64 1 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C18, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.8 = private constant [19 x i8] c"func(\09main\09main.S)\00", align 1
@go..C16 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @const.8, i32 0, i32 0), i64 18 }
@go..C17 = internal constant [1 x %_type.0*] [%_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0)]
@go..C18 = internal constant [1 x %_type.0*] zeroinitializer
@go..C19 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C15, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8main_0S_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %S.0*)* @main.S.String to i8*) }]
@go..C20 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C13, { i8*, i64 }* @go..C14, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C19, i32 0, i32 0), i64 1, i64 1 } }
@main.S..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1962798809, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C21, %uncommonType.0* @go..C27, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2main_0S, i32 0, i32 0) }, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0) }, comdat
@const.9 = private constant [14 x i8] c"*\09main\09main.S\00", align 1
@go..C21 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @const.9, i32 0, i32 0), i64 13 }
@go..C22 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.4, i32 0, i32 0), i64 6 }
@type..func_8_2main_0S_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 -1614947544, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C23, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C24, i32 0, i32 0), i64 1, i64 1 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C25, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.10 = private constant [20 x i8] c"func(*\09main\09main.S)\00", align 1
@go..C23 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @const.10, i32 0, i32 0), i64 19 }
@go..C24 = internal constant [1 x %_type.0*] [%_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0)]
@go..C25 = internal constant [1 x %_type.0*] zeroinitializer
@go..C26 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C22, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2main_0S_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %S.0*)* @main.S.String to i8*) }]
@go..C27 = internal constant %uncommonType.0 { { i8*, i64 }* null, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C26, i32 0, i32 0), i64 1, i64 1 } }
@type.._2_2main_0S = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1340009881, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C28, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, comdat
@const.11 = private constant [15 x i8] c"**\09main\09main.S\00", align 1
@go..C28 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @const.11, i32 0, i32 0), i64 14 }
@go..C29 = internal constant [1 x %structField.0] zeroinitializer
@imt..interface_4String_bfunc_8_9_8_9_5..main.S = internal constant { %_type.0*, void (i8*, %S.0*)* } { %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0), void (i8*, %S.0*)* @main.S.String }
@pimt..interface_4String_bfunc_8_9_8_9_5..main.S = internal constant { %_type.0*, void (i8*, %S.0*)* } { %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0), void (i8*, %S.0*)* @main.S.String }
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
@main..types = constant { i64, [6 x i8*] } { i64 6, [6 x i8*] [i8* bitcast (%PtrType.0* @main.I..p to i8*), i8* bitcast (%FuncType.0* @type..func_8_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8main_0S_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8_2main_0S_9_8_9 to i8*), i8* bitcast (%PtrType.0* @type.._2_2main_0S to i8*), i8* bitcast (%PtrType.0* @main.S..p to i8*)] }
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
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [6 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.S.String(i8* nest nocapture readnone %nest.0, %S.0* readnone %r.0.pointer) #0 {
entry:
  %icmp.0 = icmp eq %S.0* %r.0.pointer, null
  br i1 %icmp.0, label %then.0, label %else.0, !make.implicit !3

then.0:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.0:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

define void @main.main..init0(i8* nest nocapture readnone %nest.2) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.14, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.5 = icmp eq i8* %key1, null
  br i1 %icmp.5, label %then.12, label %else.12, !make.implicit !3

then.12:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.12:                                          ; preds = %entry
  %icmp.6 = icmp eq i8* %key2, null
  br i1 %icmp.6, label %then.13, label %else.13, !make.implicit !3

then.13:                                          ; preds = %else.12
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.13:                                          ; preds = %else.12
  %tmpv.35.sroa.0.0.cast.112.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.35.sroa.0.0.copyload = load i64, i64* %tmpv.35.sroa.0.0.cast.112.sroa_idx, align 8
  %tmpv.36.sroa.0.0.cast.117.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.36.sroa.0.0.copyload = load i64, i64* %tmpv.36.sroa.0.0.cast.117.sroa_idx, align 8
  %icmp.7.not = icmp eq i64 %tmpv.35.sroa.0.0.copyload, %tmpv.36.sroa.0.0.copyload
  br i1 %icmp.7.not, label %else.16, label %common.ret

common.ret:                                       ; preds = %else.16, %else.13
  %common.ret.op = phi i8 [ 0, %else.13 ], [ %., %else.16 ]
  ret i8 %common.ret.op

else.16:                                          ; preds = %else.13
  %field.28 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.28 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.29 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.29 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.11.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.11.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.4
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.5
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.122 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.123 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.14 = icmp eq i8* %key1, null
  br i1 %icmp.14, label %then.20.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.17 = icmp eq i8* %key2, null
  br i1 %icmp.17, label %then.22.split, label %then.26, !make.implicit !3

label.0:                                          ; preds = %then.26
  %add.0 = add nuw nsw i64 %tmpv.49.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.26

then.20.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.22.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.26, %label.0
  %common.ret.op = phi i8 [ 0, %then.26 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.26:                                          ; preds = %label.0, %entry.split
  %tmpv.49.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.51.sroa.4.0.cast.126.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.122, i64 0, i64 %tmpv.49.018, i32 2
  %tmpv.51.sroa.4.0.copyload = load i64, i64* %tmpv.51.sroa.4.0.cast.126.sroa_idx7, align 8
  %tmpv.51.sroa.3.0.cast.126.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.122, i64 0, i64 %tmpv.49.018, i32 1
  %tmpv.51.sroa.3.0.copyload = load i64, i64* %tmpv.51.sroa.3.0.cast.126.sroa_idx6, align 8
  %tmpv.51.sroa.0.0.cast.126.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.122, i64 0, i64 %tmpv.49.018, i32 0
  %tmpv.51.sroa.0.0.copyload = load i32, i32* %tmpv.51.sroa.0.0.cast.126.sroa_idx, align 8
  %tmpv.52.sroa.0.0.cast.131.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.123, i64 0, i64 %tmpv.49.018, i32 0
  %tmpv.52.sroa.0.0.copyload = load i32, i32* %tmpv.52.sroa.0.0.cast.131.sroa_idx, align 8
  %tmpv.52.sroa.3.0.cast.131.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.123, i64 0, i64 %tmpv.49.018, i32 1
  %tmpv.52.sroa.3.0.copyload = load i64, i64* %tmpv.52.sroa.3.0.cast.131.sroa_idx4, align 8
  %tmpv.52.sroa.4.0.cast.131.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.123, i64 0, i64 %tmpv.49.018, i32 2
  %tmpv.52.sroa.4.0.copyload = load i64, i64* %tmpv.52.sroa.4.0.cast.131.sroa_idx5, align 8
  %icmp.18 = icmp eq i32 %tmpv.51.sroa.0.0.copyload, %tmpv.52.sroa.0.0.copyload
  %icmp.19 = icmp eq i64 %tmpv.51.sroa.3.0.copyload, %tmpv.52.sroa.3.0.copyload
  %tmpv.58.0.in = select i1 %icmp.18, i1 %icmp.19, i1 false
  %icmp.20 = icmp eq i64 %tmpv.51.sroa.4.0.copyload, %tmpv.52.sroa.4.0.copyload
  %tmpv.59.0.in = select i1 %tmpv.58.0.in, i1 %icmp.20, i1 false
  br i1 %tmpv.59.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.23 = icmp eq i8* %key1, null
  br i1 %icmp.23, label %then.27, label %else.27, !make.implicit !3

then.27:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.27:                                          ; preds = %entry
  %icmp.24 = icmp eq i8* %key2, null
  br i1 %icmp.24, label %then.28, label %else.28, !make.implicit !3

then.28:                                          ; preds = %else.27
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.28:                                          ; preds = %else.27
  %field.36 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.36, align 4
  %field.37 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.37, align 4
  %icmp.25.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.25.not, label %else.31, label %common.ret

common.ret:                                       ; preds = %else.34, %else.31, %else.28
  %common.ret.op = phi i8 [ 0, %else.28 ], [ 0, %else.31 ], [ %., %else.34 ]
  ret i8 %common.ret.op

else.31:                                          ; preds = %else.28
  %field.38 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.38 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.39 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.39 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.28.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.28.not, label %else.34, label %common.ret

else.34:                                          ; preds = %else.31
  %field.40 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.40 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.41 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.41 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.31.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.31.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.9
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.10
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.142 = bitcast i8* %key1 to [33 x double]*
  %cast.143 = bitcast i8* %key2 to [33 x double]*
  %icmp.36 = icmp eq i8* %key1, null
  br i1 %icmp.36, label %then.38.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.37 = icmp eq i8* %key2, null
  br i1 %icmp.37, label %then.39.split, label %then.41, !make.implicit !3

label.0:                                          ; preds = %then.41
  %add.1 = add nuw nsw i64 %tmpv.76.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.142, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.143, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.76.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.142, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.143, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.76.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.41

then.38.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.39.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.41, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.41 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.41:                                          ; preds = %label.0.2, %entry.split
  %tmpv.76.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.142, i64 0, i64 %tmpv.76.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.143, i64 0, i64 %tmpv.76.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.16
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.17
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.146 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.147 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.43 = icmp eq i8* %key1, null
  br i1 %icmp.43, label %then.44.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.44 = icmp eq i8* %key2, null
  br i1 %icmp.44, label %then.45.split, label %then.49, !make.implicit !3

then.44.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.45.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.46:                                          ; preds = %then.49
  %icmp.46 = icmp eq i8* %tmpv.92.sroa.0.0.copyload, %tmpv.94.sroa.0.0.copyload
  br i1 %icmp.46, label %else.48, label %fallthrough.46

fallthrough.46:                                   ; preds = %then.46
  %call.18 = call i32 @memcmp(i8* %tmpv.92.sroa.0.0.copyload, i8* %tmpv.94.sroa.0.0.copyload, i64 %tmpv.92.sroa.3.0.copyload)
  %icmp.47 = icmp eq i32 %call.18, 0
  br i1 %icmp.47, label %else.48, label %common.ret

common.ret:                                       ; preds = %then.49, %else.48, %fallthrough.46
  %common.ret.op = phi i8 [ 0, %fallthrough.46 ], [ 1, %else.48 ], [ 0, %then.49 ]
  ret i8 %common.ret.op

else.48:                                          ; preds = %fallthrough.46, %then.46
  %add.2 = add nuw nsw i64 %tmpv.90.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.49

then.49:                                          ; preds = %else.48, %entry.split
  %tmpv.90.019 = phi i64 [ %add.2, %else.48 ], [ 0, %entry.split ]
  %tmpv.92.sroa.0.0.cast.150.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.146, i64 0, i64 %tmpv.90.019, i32 0
  %tmpv.92.sroa.0.0.copyload = load i8*, i8** %tmpv.92.sroa.0.0.cast.150.sroa_idx, align 8
  %tmpv.92.sroa.3.0.cast.150.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.146, i64 0, i64 %tmpv.90.019, i32 1
  %tmpv.92.sroa.3.0.copyload = load i64, i64* %tmpv.92.sroa.3.0.cast.150.sroa_idx3, align 8
  %tmpv.94.sroa.0.0.cast.153.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.147, i64 0, i64 %tmpv.90.019, i32 0
  %tmpv.94.sroa.0.0.copyload = load i8*, i8** %tmpv.94.sroa.0.0.cast.153.sroa_idx, align 8
  %tmpv.94.sroa.3.0.cast.153.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.147, i64 0, i64 %tmpv.90.019, i32 1
  %tmpv.94.sroa.3.0.copyload = load i64, i64* %tmpv.94.sroa.3.0.cast.153.sroa_idx1, align 8
  %icmp.45 = icmp eq i64 %tmpv.92.sroa.3.0.copyload, %tmpv.94.sroa.3.0.copyload
  br i1 %icmp.45, label %then.46, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.22
}

define void @__go_init_main(i8* nest nocapture readnone %nest.30) local_unnamed_addr #0 {
entry:
  call void @runtime.registerTypeDescriptors(i8* nest undef, i64 11, i8* bitcast ([11 x { i64, [1 x i8*] }*]* @go..typelists to i8*))
  call void @internal_1cpu..import(i8* nest undef)
  call void @runtime..import(i8* nest undef)
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) local_unnamed_addr #0

declare void @internal_1cpu..import(i8*) local_unnamed_addr #0

declare void @runtime..import(i8*) local_unnamed_addr #0

define void @main.main(i8* nest nocapture readnone %nest.1) local_unnamed_addr #0 {
entry:
  %tmpv.1 = alloca %S.0, align 1, !go_addrtaken !3
  %sret.actual.0 = alloca { { %_type.0*, i8* }, i8 }, align 8
  %sret.actual.1 = alloca { %.1, i8 }, align 8
  %sret.actual.2 = alloca { { %_type.0*, i8* }, i8 }, align 8
  %sret.actual.3 = alloca { %.1, i8 }, align 8
  %cast.33 = bitcast %S.0* %tmpv.1 to i8*
  call void @runtime.ifaceE2E2({ { %_type.0*, i8* }, i8 }* nonnull sret({ { %_type.0*, i8* }, i8 }) "go_sret" %sret.actual.0, i8* nest undef, i8* bitcast (%StructType.0* @main.S..d to i8*), i8* nonnull %cast.33)
  %tmpv.5.sroa.2.0.cast.40.sroa_idx = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.0, i64 0, i32 1
  %tmpv.5.sroa.2.0.copyload = load i8, i8* %tmpv.5.sroa.2.0.cast.40.sroa_idx, align 8
  %0 = and i8 %tmpv.5.sroa.2.0.copyload, 1
  %trunc.1.not = icmp eq i8 %0, 0
  br i1 %trunc.1.not, label %fallthrough.1, label %then.1

then.1:                                           ; preds = %entry
  %tmpv.5.sroa.0.sroa.2.0.tmpv.5.sroa.0.0.cast.40.sroa_cast.sroa_idx43 = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.0, i64 0, i32 0, i32 1
  %tmpv.5.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.5.sroa.0.sroa.2.0.tmpv.5.sroa.0.0.cast.40.sroa_cast.sroa_idx43, align 8
  %tmpv.5.sroa.0.sroa.0.0.tmpv.5.sroa.0.0.cast.40.sroa_cast.sroa_cast = bitcast { { %_type.0*, i8* }, i8 }* %sret.actual.0 to i8**
  %tmpv.5.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.5.sroa.0.sroa.0.0.tmpv.5.sroa.0.0.cast.40.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printeface(i8* nest undef, i8* %tmpv.5.sroa.0.sroa.0.0.copyload, i8* %tmpv.5.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.1

fallthrough.1:                                    ; preds = %then.1, %entry
  call void @runtime.ifaceE2I2({ %.1, i8 }* nonnull sret({ %.1, i8 }) "go_sret" %sret.actual.1, i8* nest undef, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i64 0, i32 0), i8* bitcast (%StructType.0* @main.S..d to i8*), i8* nonnull %cast.33)
  %tmpv.8.sroa.2.0.cast.50.sroa_idx = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.1, i64 0, i32 1
  %tmpv.8.sroa.2.0.copyload = load i8, i8* %tmpv.8.sroa.2.0.cast.50.sroa_idx, align 8
  %1 = and i8 %tmpv.8.sroa.2.0.copyload, 1
  %trunc.2.not = icmp eq i8 %1, 0
  br i1 %trunc.2.not, label %fallthrough.2, label %then.2

then.2:                                           ; preds = %fallthrough.1
  %tmpv.8.sroa.0.sroa.2.0.tmpv.8.sroa.0.0.cast.50.sroa_cast.sroa_idx31 = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.1, i64 0, i32 0, i32 1
  %tmpv.8.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.8.sroa.0.sroa.2.0.tmpv.8.sroa.0.0.cast.50.sroa_cast.sroa_idx31, align 8
  %tmpv.8.sroa.0.sroa.0.0.tmpv.8.sroa.0.0.cast.50.sroa_cast.sroa_cast = bitcast { %.1, i8 }* %sret.actual.1 to i8**
  %tmpv.8.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.8.sroa.0.sroa.0.0.tmpv.8.sroa.0.0.cast.50.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printiface(i8* nest undef, i8* %tmpv.8.sroa.0.sroa.0.0.copyload, i8* %tmpv.8.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.2

fallthrough.2:                                    ; preds = %then.2, %fallthrough.1
  call void @runtime.ifaceI2E2({ { %_type.0*, i8* }, i8 }* nonnull sret({ { %_type.0*, i8* }, i8 }) "go_sret" %sret.actual.2, i8* nest undef, i8* bitcast ({ %_type.0*, void (i8*, %S.0*)* }* @imt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.33)
  %tmpv.11.sroa.2.0.cast.62.sroa_idx = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.2, i64 0, i32 1
  %tmpv.11.sroa.2.0.copyload = load i8, i8* %tmpv.11.sroa.2.0.cast.62.sroa_idx, align 8
  %2 = and i8 %tmpv.11.sroa.2.0.copyload, 1
  %trunc.3.not = icmp eq i8 %2, 0
  br i1 %trunc.3.not, label %fallthrough.3, label %then.3

then.3:                                           ; preds = %fallthrough.2
  %tmpv.11.sroa.0.sroa.2.0.tmpv.11.sroa.0.0.cast.62.sroa_cast.sroa_idx24 = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.2, i64 0, i32 0, i32 1
  %tmpv.11.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.11.sroa.0.sroa.2.0.tmpv.11.sroa.0.0.cast.62.sroa_cast.sroa_idx24, align 8
  %tmpv.11.sroa.0.sroa.0.0.tmpv.11.sroa.0.0.cast.62.sroa_cast.sroa_cast = bitcast { { %_type.0*, i8* }, i8 }* %sret.actual.2 to i8**
  %tmpv.11.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.11.sroa.0.sroa.0.0.tmpv.11.sroa.0.0.cast.62.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printeface(i8* nest undef, i8* %tmpv.11.sroa.0.sroa.0.0.copyload, i8* %tmpv.11.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.3

fallthrough.3:                                    ; preds = %then.3, %fallthrough.2
  call void @runtime.ifaceI2I2({ %.1, i8 }* nonnull sret({ %.1, i8 }) "go_sret" %sret.actual.3, i8* nest undef, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i64 0, i32 0), i8* bitcast ({ %_type.0*, void (i8*, %S.0*)* }* @imt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.33)
  %tmpv.14.sroa.2.0.cast.73.sroa_idx = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.3, i64 0, i32 1
  %tmpv.14.sroa.2.0.copyload = load i8, i8* %tmpv.14.sroa.2.0.cast.73.sroa_idx, align 8
  %3 = and i8 %tmpv.14.sroa.2.0.copyload, 1
  %trunc.4.not = icmp eq i8 %3, 0
  br i1 %trunc.4.not, label %fallthrough.4, label %then.4

then.4:                                           ; preds = %fallthrough.3
  %tmpv.14.sroa.0.sroa.2.0.tmpv.14.sroa.0.0.cast.73.sroa_cast.sroa_idx17 = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.3, i64 0, i32 0, i32 1
  %tmpv.14.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.14.sroa.0.sroa.2.0.tmpv.14.sroa.0.0.cast.73.sroa_cast.sroa_idx17, align 8
  %tmpv.14.sroa.0.sroa.0.0.tmpv.14.sroa.0.0.cast.73.sroa_cast.sroa_cast = bitcast { %.1, i8 }* %sret.actual.3 to i8**
  %tmpv.14.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.14.sroa.0.sroa.0.0.tmpv.14.sroa.0.0.cast.73.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printiface(i8* nest undef, i8* %tmpv.14.sroa.0.sroa.0.0.copyload, i8* %tmpv.14.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.4

fallthrough.4:                                    ; preds = %then.4, %fallthrough.3
  %call.0 = call { i8*, i8 } @runtime.ifaceE2T2P(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i64 0, i32 0), i8* bitcast (%PtrType.0* @main.S..p to i8*), i8* nonnull %cast.33)
  %call.0.fca.1.extract = extractvalue { i8*, i8 } %call.0, 1
  %4 = and i8 %call.0.fca.1.extract, 1
  %trunc.5.not = icmp eq i8 %4, 0
  br i1 %trunc.5.not, label %fallthrough.5, label %then.5

then.5:                                           ; preds = %fallthrough.4
  %call.0.fca.0.extract = extractvalue { i8*, i8 } %call.0, 0
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* %call.0.fca.0.extract)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.5

fallthrough.5:                                    ; preds = %then.5, %fallthrough.4
  %call.1 = call { i8*, i8 } @runtime.ifaceI2T2P(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i64 0, i32 0), i8* bitcast ({ %_type.0*, void (i8*, %S.0*)* }* @pimt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.33)
  %call.1.fca.1.extract = extractvalue { i8*, i8 } %call.1, 1
  %5 = and i8 %call.1.fca.1.extract, 1
  %trunc.6.not = icmp eq i8 %5, 0
  br i1 %trunc.6.not, label %fallthrough.6, label %then.6

then.6:                                           ; preds = %fallthrough.5
  %call.1.fca.0.extract = extractvalue { i8*, i8 } %call.1, 0
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* %call.1.fca.0.extract)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.6

fallthrough.6:                                    ; preds = %then.6, %fallthrough.5
  ret void
}

declare void @runtime.ifaceE2E2({ { %_type.0*, i8* }, i8 }*, i8*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printeface(i8*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

declare void @runtime.ifaceE2I2({ %.1, i8 }*, i8*, %_type.0*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.printiface(i8*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.ifaceI2E2({ { %_type.0*, i8* }, i8 }*, i8*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.ifaceI2I2({ %.1, i8 }*, i8*, %_type.0*, i8*, i8*) local_unnamed_addr #0

declare { i8*, i8 } @runtime.ifaceE2T2P(i8*, %_type.0*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.printpointer(i8*, i8*) local_unnamed_addr #0

declare { i8*, i8 } @runtime.ifaceI2T2P(i8*, %_type.0*, i8*, i8*) local_unnamed_addr #0

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
