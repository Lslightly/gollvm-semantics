source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


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
%.1 = type { { %_type.0*, void (i8*, i8*)* }*, i8* }

$gcbits..da = comdat any

$main.I..p = comdat any

$gcbits..ba = comdat any

$type..func_8_9_8_9 = comdat any

$type..func_8main_0S_9_8_9 = comdat any

$main.S..p = comdat any

$type..func_8_2main_0S_9_8_9 = comdat any

$type.._2_2main_0S = comdat any

$int..d = comdat any

$int..p = comdat any

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
@type..func_8_9_8_9 = weak constant %FuncType.0 { %_type.0 { i64 8, i64 8, i32 8, i8 0, i8 8, i8 8, i8 51, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C8, %uncommonType.0* null, %_type.0* null }, i8 0, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C9, i32 0, i32 0), i64 0, i64 0 }, %IPST.10 { %_type.0** getelementptr inbounds ([1 x %_type.0*], [1 x %_type.0*]* @go..C10, i32 0, i32 0), i64 0, i64 0 } }, comdat
@const.5 = private constant [7 x i8] c"func()\00", align 1
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.5, i32 0, i32 0), i64 6 }
@go..C9 = internal constant [1 x %_type.0*] zeroinitializer
@go..C10 = internal constant [1 x %_type.0*] zeroinitializer
@go..C11 = internal constant [1 x %imethod.0] [%imethod.0 { { i8*, i64 }* @go..C7, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0) }]
@main.S..d = constant %StructType.0 { %_type.0 { i64 8, i64 0, i32 1464852205, i8 8, i8 8, i8 8, i8 -103, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C12, %uncommonType.0* @go..C20, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, %IPST.11 { %structField.0* getelementptr inbounds ([1 x %structField.0], [1 x %structField.0]* @go..C36, i32 0, i32 0), i64 1, i64 1 } }
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
@go..C19 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C15, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8main_0S_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %functionDescriptor.0*)* @main.S.String to i8*) }]
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
@go..C26 = internal constant [1 x %method.0] [%method.0 { { i8*, i64 }* @go..C22, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_9_8_9, i32 0, i32 0), %_type.0* getelementptr inbounds (%FuncType.0, %FuncType.0* @type..func_8_2main_0S_9_8_9, i32 0, i32 0), i8* bitcast (void (i8*, %functionDescriptor.0*)* @main.S.String to i8*) }]
@go..C27 = internal constant %uncommonType.0 { { i8*, i64 }* null, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C26, i32 0, i32 0), i64 1, i64 1 } }
@type.._2_2main_0S = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1340009881, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C28, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, comdat
@const.11 = private constant [15 x i8] c"**\09main\09main.S\00", align 1
@go..C28 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @const.11, i32 0, i32 0), i64 14 }
@const.12 = private constant [2 x i8] c"a\00", align 1
@go..C29 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.12, i32 0, i32 0), i64 1 }
@go..C30 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C31, %uncommonType.0* @go..C34, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.13 = private constant [4 x i8] c"int\00", align 1
@go..C31 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.13, i32 0, i32 0), i64 3 }
@go..C32 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.13, i32 0, i32 0), i64 3 }
@go..C33 = internal constant [1 x %method.0] zeroinitializer
@go..C34 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C32, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C33, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C35, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.14 = private constant [5 x i8] c"*int\00", align 1
@go..C35 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.14, i32 0, i32 0), i64 4 }
@go..C36 = internal constant [1 x %structField.0] [%structField.0 { { i8*, i64 }* @go..C29, { i8*, i64 }* @go..C30, %_type.0* @int..d, { i8*, i64 }* null, i64 0 }]
@imt..interface_4String_bfunc_8_9_8_9_5..main.S = internal constant { %_type.0*, void (i8*, %functionDescriptor.0*)* } { %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0), void (i8*, %functionDescriptor.0*)* @main.S.String }
@pimt..interface_4String_bfunc_8_9_8_9_5..main.S = internal constant { %_type.0*, void (i8*, %functionDescriptor.0*)* } { %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0), void (i8*, %functionDescriptor.0*)* @main.S.String }
@const.18 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [7 x i8*] } { i64 7, [7 x i8*] [i8* bitcast (%PtrType.0* @main.I..p to i8*), i8* bitcast (%FuncType.0* @type..func_8_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8main_0S_9_8_9 to i8*), i8* bitcast (%FuncType.0* @type..func_8_2main_0S_9_8_9 to i8*), i8* bitcast (%PtrType.0* @type.._2_2main_0S to i8*), i8* bitcast (%PtrType.0* @main.S..p to i8*), i8* bitcast (%PtrType.0* @int..p to i8*)] }
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

define void @main.S.String(i8* nest nocapture readnone %nest.0, %functionDescriptor.0* readnone %r.0.pointer) #0 {
entry:
  %icmp.0 = icmp eq %functionDescriptor.0* %r.0.pointer, null
  br i1 %icmp.0, label then.0, label else.0, !make.implicit !3

then.0:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.0:                                           
  ret void
}

declare void @runtime.panicmem(i8*) local_unnamed_addr #1

define void @main.main..init0(i8* nest nocapture readnone %nest.2) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.18, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0



declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3


















declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4





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
  %tmpv.1 = alloca %functionDescriptor.0, align 8, !go_addrtaken !3
  %tmpv.3 = alloca %functionDescriptor.0, align 8, !go_addrtaken !3
  %sret.actual.0 = alloca { { %_type.0*, i8* }, i8 }, align 8
  %sret.actual.1 = alloca { %.1, i8 }, align 8
  %sret.actual.2 = alloca { { %_type.0*, i8* }, i8 }, align 8
  %sret.actual.3 = alloca { %.1, i8 }, align 8
  %tmpv.17 = alloca %functionDescriptor.0, align 8, !go_addrtaken !3
  %tmpv.22 = alloca %functionDescriptor.0, align 8, !go_addrtaken !3
  %cast.37 = bitcast %functionDescriptor.0* %tmpv.1 to i8*
  %0 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.1, i64 0, i32 0
  store i64 0, i64* %0, align 8
  %cast.42 = bitcast %functionDescriptor.0* %tmpv.3 to i8*
  %1 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.3, i64 0, i32 0
  store i64 0, i64* %1, align 8
  call void @runtime.ifaceE2E2({ { %_type.0*, i8* }, i8 }* nonnull sret({ { %_type.0*, i8* }, i8 }) "go_sret" %sret.actual.0, i8* nest undef, i8* bitcast (%StructType.0* @main.S..d to i8*), i8* nonnull %cast.37)
  %tmpv.5.sroa.2.0.cast.49.sroa_idx = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.0, i64 0, i32 1
  %tmpv.5.sroa.2.0.copyload = load i8, i8* %tmpv.5.sroa.2.0.cast.49.sroa_idx, align 8
  %2 = and i8 %tmpv.5.sroa.2.0.copyload, 1
  %trunc.1.not = icmp eq i8 %2, 0
  br i1 %trunc.1.not, label fallthrough.1, label then.1

then.1:                                           
  %tmpv.5.sroa.0.sroa.2.0.tmpv.5.sroa.0.0.cast.49.sroa_cast.sroa_idx43 = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.0, i64 0, i32 0, i32 1
  %tmpv.5.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.5.sroa.0.sroa.2.0.tmpv.5.sroa.0.0.cast.49.sroa_cast.sroa_idx43, align 8
  %tmpv.5.sroa.0.sroa.0.0.tmpv.5.sroa.0.0.cast.49.sroa_cast.sroa_cast = bitcast { { %_type.0*, i8* }, i8 }* %sret.actual.0 to i8**
  %tmpv.5.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.5.sroa.0.sroa.0.0.tmpv.5.sroa.0.0.cast.49.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printeface(i8* nest undef, i8* %tmpv.5.sroa.0.sroa.0.0.copyload, i8* %tmpv.5.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.1

fallthrough.1:                                    
  call void @runtime.ifaceE2I2({ %.1, i8 }* nonnull sret({ %.1, i8 }) "go_sret" %sret.actual.1, i8* nest undef, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i64 0, i32 0), i8* bitcast (%StructType.0* @main.S..d to i8*), i8* nonnull %cast.37)
  %tmpv.8.sroa.2.0.cast.59.sroa_idx = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.1, i64 0, i32 1
  %tmpv.8.sroa.2.0.copyload = load i8, i8* %tmpv.8.sroa.2.0.cast.59.sroa_idx, align 8
  %3 = and i8 %tmpv.8.sroa.2.0.copyload, 1
  %trunc.2.not = icmp eq i8 %3, 0
  br i1 %trunc.2.not, label fallthrough.2, label then.2

then.2:                                           
  %tmpv.8.sroa.0.sroa.2.0.tmpv.8.sroa.0.0.cast.59.sroa_cast.sroa_idx31 = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.1, i64 0, i32 0, i32 1
  %tmpv.8.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.8.sroa.0.sroa.2.0.tmpv.8.sroa.0.0.cast.59.sroa_cast.sroa_idx31, align 8
  %tmpv.8.sroa.0.sroa.0.0.tmpv.8.sroa.0.0.cast.59.sroa_cast.sroa_cast = bitcast { %.1, i8 }* %sret.actual.1 to i8**
  %tmpv.8.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.8.sroa.0.sroa.0.0.tmpv.8.sroa.0.0.cast.59.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printiface(i8* nest undef, i8* %tmpv.8.sroa.0.sroa.0.0.copyload, i8* %tmpv.8.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.2

fallthrough.2:                                    
  call void @runtime.ifaceI2E2({ { %_type.0*, i8* }, i8 }* nonnull sret({ { %_type.0*, i8* }, i8 }) "go_sret" %sret.actual.2, i8* nest undef, i8* bitcast ({ %_type.0*, void (i8*, %functionDescriptor.0*)* }* @imt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.42)
  %tmpv.11.sroa.2.0.cast.71.sroa_idx = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.2, i64 0, i32 1
  %tmpv.11.sroa.2.0.copyload = load i8, i8* %tmpv.11.sroa.2.0.cast.71.sroa_idx, align 8
  %4 = and i8 %tmpv.11.sroa.2.0.copyload, 1
  %trunc.3.not = icmp eq i8 %4, 0
  br i1 %trunc.3.not, label fallthrough.3, label then.3

then.3:                                           
  %tmpv.11.sroa.0.sroa.2.0.tmpv.11.sroa.0.0.cast.71.sroa_cast.sroa_idx24 = getelementptr inbounds { { %_type.0*, i8* }, i8 }, { { %_type.0*, i8* }, i8 }* %sret.actual.2, i64 0, i32 0, i32 1
  %tmpv.11.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.11.sroa.0.sroa.2.0.tmpv.11.sroa.0.0.cast.71.sroa_cast.sroa_idx24, align 8
  %tmpv.11.sroa.0.sroa.0.0.tmpv.11.sroa.0.0.cast.71.sroa_cast.sroa_cast = bitcast { { %_type.0*, i8* }, i8 }* %sret.actual.2 to i8**
  %tmpv.11.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.11.sroa.0.sroa.0.0.tmpv.11.sroa.0.0.cast.71.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printeface(i8* nest undef, i8* %tmpv.11.sroa.0.sroa.0.0.copyload, i8* %tmpv.11.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.3

fallthrough.3:                                    
  call void @runtime.ifaceI2I2({ %.1, i8 }* nonnull sret({ %.1, i8 }) "go_sret" %sret.actual.3, i8* nest undef, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i64 0, i32 0), i8* bitcast ({ %_type.0*, void (i8*, %functionDescriptor.0*)* }* @imt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.42)
  %tmpv.14.sroa.2.0.cast.82.sroa_idx = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.3, i64 0, i32 1
  %tmpv.14.sroa.2.0.copyload = load i8, i8* %tmpv.14.sroa.2.0.cast.82.sroa_idx, align 8
  %5 = and i8 %tmpv.14.sroa.2.0.copyload, 1
  %trunc.4.not = icmp eq i8 %5, 0
  br i1 %trunc.4.not, label fallthrough.4, label then.4

then.4:                                           
  %tmpv.14.sroa.0.sroa.2.0.tmpv.14.sroa.0.0.cast.82.sroa_cast.sroa_idx17 = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.3, i64 0, i32 0, i32 1
  %tmpv.14.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.14.sroa.0.sroa.2.0.tmpv.14.sroa.0.0.cast.82.sroa_cast.sroa_idx17, align 8
  %tmpv.14.sroa.0.sroa.0.0.tmpv.14.sroa.0.0.cast.82.sroa_cast.sroa_cast = bitcast { %.1, i8 }* %sret.actual.3 to i8**
  %tmpv.14.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.14.sroa.0.sroa.0.0.tmpv.14.sroa.0.0.cast.82.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printiface(i8* nest undef, i8* %tmpv.14.sroa.0.sroa.0.0.copyload, i8* %tmpv.14.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.4

fallthrough.4:                                    
  %cast.90 = bitcast %functionDescriptor.0* %tmpv.17 to i8*
  %6 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.17, i64 0, i32 0
  store i64 0, i64* %6, align 8
  %call.0 = call { i8*, i8 } @runtime.ifaceE2T2P(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i64 0, i32 0), i8* bitcast (%PtrType.0* @main.S..p to i8*), i8* nonnull %cast.90)
  %call.0.fca.1.extract = extractvalue { i8*, i8 } %call.0, 1
  %7 = and i8 %call.0.fca.1.extract, 1
  %trunc.5.not = icmp eq i8 %7, 0
  br i1 %trunc.5.not, label fallthrough.5, label then.5

then.5:                                           
  %call.0.fca.0.extract = extractvalue { i8*, i8 } %call.0, 0
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* %call.0.fca.0.extract)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.5

fallthrough.5:                                    
  %cast.102 = bitcast %functionDescriptor.0* %tmpv.22 to i8*
  %8 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.22, i64 0, i32 0
  store i64 0, i64* %8, align 8
  %call.1 = call { i8*, i8 } @runtime.ifaceI2T2P(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i64 0, i32 0), i8* bitcast ({ %_type.0*, void (i8*, %functionDescriptor.0*)* }* @pimt..interface_4String_bfunc_8_9_8_9_5..main.S to i8*), i8* nonnull %cast.102)
  %call.1.fca.1.extract = extractvalue { i8*, i8 } %call.1, 1
  %9 = and i8 %call.1.fca.1.extract, 1
  %trunc.6.not = icmp eq i8 %9, 0
  br i1 %trunc.6.not, label fallthrough.6, label then.6

then.6:                                           
  %call.1.fca.0.extract = extractvalue { i8*, i8 } %call.1, 0
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printpointer(i8* nest undef, i8* %call.1.fca.0.extract)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label fallthrough.6

fallthrough.6:                                    
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


!llvm.module.flags = !{!0, !1, !2}


