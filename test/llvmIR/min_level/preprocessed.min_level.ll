source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%PtrType.0 = type { %_type.0, %_type.0* }
%functionDescriptor.0 = type { i64 }
%MapType.0 = type { %_type.0, %_type.0*, %_type.0*, %_type.0*, %__go_descriptor.7*, i8, i8, i16, i32 }
%__go_descriptor.7 = type { i64 (i8*, i8*, i64)* }
%StructType.0 = type { %_type.0, %IPST.11 }
%IPST.11 = type { %structField.0*, i64, i64 }
%structField.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, { i8*, i64 }*, i64 }
%ArrayType.0 = type { %_type.0, %_type.0*, %_type.0*, i64 }

$int..d = comdat any

$int..p = comdat any

$gcbits..ba = comdat any

$type.._2_2int = comdat any

$type..map_6int_7_2_2_2int = comdat any

$type.._2_2_2int = comdat any

$type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2_2_2int_coverflow_b_2_4void_5_5 = comdat any

$gcbits..aqFha = comdat any

$type.._68x_7uint8 = comdat any

$uint8..d = comdat any

$uint8..p = comdat any

$type.._6_7uint8 = comdat any

$type.._68x_7int = comdat any

$type.._6_7int = comdat any

$type.._68x_7_2_2_2int = comdat any

$gcbits..Fh = comdat any

$type.._6_7_2_2_2int = comdat any

@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C1, %uncommonType.0* @go..C4, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.0 = private constant [4 x i8] c"int\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.0, i32 0, i32 0), i64 3 }
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.0, i32 0, i32 0), i64 3 }
@go..C3 = internal constant [1 x %method.0] zeroinitializer
@go..C4 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C3, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C5, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.1 = private constant [5 x i8] c"*int\00", align 1
@go..C5 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.1, i32 0, i32 0), i64 4 }
@type.._2_2int = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1097933465, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C6, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.2 = private constant [6 x i8] c"**int\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.2, i32 0, i32 0), i64 5 }
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@type..map_6int_7_2_2_2int = weak constant %MapType.0 { %_type.0 { i64 8, i64 8, i32 1263770315, i8 0, i8 8, i8 8, i8 53, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C7, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2_2int, i32 0, i32 0), %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2_2_2int_coverflow_b_2_4void_5_5, i32 0, i32 0), %__go_descriptor.7* bitcast (%functionDescriptor.0* @runtime.memhash64..f to %__go_descriptor.7*), i8 8, i8 8, i16 144, i32 4 }, comdat
@const.3 = private constant [15 x i8] c"map[int]***int\00", align 1
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @const.3, i32 0, i32 0), i64 14 }
@type.._2_2_2int = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 387066265, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C8, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2int, i32 0, i32 0) }, comdat
@const.4 = private constant [7 x i8] c"***int\00", align 1
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.4, i32 0, i32 0), i64 6 }
@type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2_2_2int_coverflow_b_2_4void_5_5 = weak constant %StructType.0 { %_type.0 { i64 144, i64 144, i32 -711127164, i8 8, i8 8, i8 8, i8 25, %__go_descriptor.6* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @gcbits..aqFha, i32 0, i32 0), { i8*, i64 }* @go..C9, %uncommonType.0* null, %_type.0* null }, %IPST.11 { %structField.0* getelementptr inbounds ([4 x %structField.0], [4 x %structField.0]* @go..C25, i32 0, i32 0), i64 4, i64 4 } }, comdat
@gcbits..aqFha = weak constant [3 x i8] c"\00\FE\03", comdat
@const.5 = private constant [71 x i8] c"struct { topbits [8]uint8; keys [8]int; values [8]***int; overflow * }\00", align 1
@go..C9 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([71 x i8], [71 x i8]* @const.5, i32 0, i32 0), i64 70 }
@const.6 = private constant [8 x i8] c"topbits\00", align 1
@go..C10 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.6, i32 0, i32 0), i64 7 }
@type.._68x_7uint8 = weak constant %ArrayType.0 { %_type.0 { i64 8, i64 0, i32 529264193, i8 8, i8 1, i8 1, i8 -111, %__go_descriptor.6* null, i8* null, { i8*, i64 }* @go..C11, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7uint8, i32 0, i32 0), i64 8 }, comdat
@const.7 = private constant [9 x i8] c"[8]uint8\00", align 1
@go..C11 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.7, i32 0, i32 0), i64 8 }
@uint8..d = weak constant %_type.0 { i64 1, i64 0, i32 264632089, i8 8, i8 1, i8 1, i8 -120, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal8..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C12, %uncommonType.0* @go..C15, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @uint8..p, i32 0, i32 0) }, comdat
@runtime.memequal8..f = external constant %functionDescriptor.0
@const.8 = private constant [6 x i8] c"uint8\00", align 1
@go..C12 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.8, i32 0, i32 0), i64 5 }
@go..C13 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.8, i32 0, i32 0), i64 5 }
@go..C14 = internal constant [1 x %method.0] zeroinitializer
@go..C15 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C13, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C14, i32 0, i32 0), i64 0, i64 0 } }
@uint8..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 -60853863, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C16, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d }, comdat
@const.9 = private constant [7 x i8] c"*uint8\00", align 1
@go..C16 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.9, i32 0, i32 0), i64 6 }
@type.._6_7uint8 = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 264632103, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C17, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d }, comdat
@const.10 = private constant [8 x i8] c"[]uint8\00", align 1
@go..C17 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.10, i32 0, i32 0), i64 7 }
@const.11 = private constant [5 x i8] c"keys\00", align 1
@go..C18 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.11, i32 0, i32 0), i64 4 }
@type.._68x_7int = weak constant %ArrayType.0 { %_type.0 { i64 64, i64 0, i32 1753408083, i8 8, i8 8, i8 8, i8 -111, %__go_descriptor.6* null, i8* null, { i8*, i64 }* @go..C19, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7int, i32 0, i32 0), i64 8 }, comdat
@const.12 = private constant [7 x i8] c"[8]int\00", align 1
@go..C19 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.12, i32 0, i32 0), i64 6 }
@type.._6_7int = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 876704048, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C20, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.13 = private constant [6 x i8] c"[]int\00", align 1
@go..C20 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.13, i32 0, i32 0), i64 5 }
@const.14 = private constant [7 x i8] c"values\00", align 1
@go..C21 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.14, i32 0, i32 0), i64 6 }
@type.._68x_7_2_2_2int = weak constant %ArrayType.0 { %_type.0 { i64 64, i64 64, i32 774132545, i8 8, i8 8, i8 8, i8 17, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..Fh, i32 0, i32 0), { i8*, i64 }* @go..C22, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2_2int, i32 0, i32 0), %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7_2_2_2int, i32 0, i32 0), i64 8 }, comdat
@gcbits..Fh = weak constant [1 x i8] c"\FF", comdat
@const.15 = private constant [10 x i8] c"[8]***int\00", align 1
@go..C22 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @const.15, i32 0, i32 0), i64 9 }
@type.._6_7_2_2_2int = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 387066279, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C23, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2_2int, i32 0, i32 0) }, comdat
@const.16 = private constant [9 x i8] c"[]***int\00", align 1
@go..C23 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.16, i32 0, i32 0), i64 8 }
@const.17 = private constant [9 x i8] c"overflow\00", align 1
@go..C24 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.17, i32 0, i32 0), i64 8 }
@unsafe.Pointer..d = external constant %_type.0
@go..C25 = internal constant [4 x %structField.0] [%structField.0 { { i8*, i64 }* @go..C10, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7uint8, i32 0, i32 0), { i8*, i64 }* null, i64 0 }, %structField.0 { { i8*, i64 }* @go..C18, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7int, i32 0, i32 0), { i8*, i64 }* null, i64 16 }, %structField.0 { { i8*, i64 }* @go..C21, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7_2_2_2int, i32 0, i32 0), { i8*, i64 }* null, i64 144 }, %structField.0 { { i8*, i64 }* @go..C24, { i8*, i64 }* null, %_type.0* @unsafe.Pointer..d, { i8*, i64 }* null, i64 272 }]
@runtime.memhash64..f = external constant %functionDescriptor.0
@const.18 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
@main.main..init0..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*)* @main.main..init0 to i64) }
@main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq to i64) }
@main._632_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uintptr..eq to i64) }
@main._6256_7uint64..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint64..eq to i64) }
@main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main._6118_7uintptr..eq..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6118_7uintptr..eq to i64) }
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
@main..types = constant { i64, [8 x i8*] } { i64 8, [8 x i8*] [i8* bitcast (%PtrType.0* @int..p to i8*), i8* bitcast (%PtrType.0* @type.._2_2int to i8*), i8* bitcast (%PtrType.0* @type.._2_2_2int to i8*), i8* bitcast (%PtrType.0* @uint8..p to i8*), i8* bitcast (%PtrType.0* @type.._6_7uint8 to i8*), i8* bitcast (%PtrType.0* @type.._6_7int to i8*), i8* bitcast (%PtrType.0* @type.._6_7_2_2_2int to i8*), i8* bitcast (%MapType.0* @type..map_6int_7_2_2_2int to i8*)] }
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
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [8 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.main..init0(i8* nest nocapture readnone %nest.1) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.18, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0


declare void @runtime.panicmem(i8*) local_unnamed_addr #1


declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3


















declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4





define void @__go_init_main(i8* nest nocapture readnone %nest.29) local_unnamed_addr #0 {
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

define void @main.main(i8* nest nocapture readnone %nest.0) local_unnamed_addr #0 {
entry:
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.3 = bitcast i8* %call.0 to i64*
  store i64 2, i64* %cast.3, align 8
  %call.1 = call { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8* nest undef)
  %call.2 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2int, i64 0, i32 0))
  %call.3 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %cast.9 = bitcast i8* %call.3 to i64**
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.1 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.1, label else.1, label else.0

fallthrough.0:                                    
  %call.4 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %cast.15 = bitcast i8* %call.4 to i64**
  %.ld.2 = load i64*, i64** %cast.9, align 8
  %deref.ld.1 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.4 = icmp eq i32 %deref.ld.1, 0
  br i1 %icmp.4, label else.4, label else.3

else.0:                                           
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.3, i64 %pticast.0)
  br label fallthrough.0

else.1:                                           
  %0 = bitcast i8* %call.3 to i8**
  store i8* %call.0, i8** %0, align 8
  br label fallthrough.0

fallthrough.3:                                    
  %.ld.4 = phi i64* [ %.ld.4.pr, else.3 ], [ %.ld.2, else.4 ]
  %call.5 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %icmp.5 = icmp eq i64* %.ld.4, null
  br i1 %icmp.5, label then.5, label else.5, !make.implicit !3

else.3:                                           
  %pticast.1 = ptrtoint i64* %.ld.2 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.4, i64 %pticast.1)
  %.ld.4.pr = load i64*, i64** %cast.15, align 8
  br label fallthrough.3

else.4:                                           
  store i64* %.ld.2, i64** %cast.15, align 8
  br label fallthrough.3

then.5:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.5:                                           
  %cast.21 = bitcast i8* %call.5 to i64*
  %.ld.6 = load i64, i64* %.ld.4, align 8
  store i64 %.ld.6, i64* %cast.21, align 8
  %deref.ld.2 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.7 = icmp eq i32 %deref.ld.2, 0
  br i1 %icmp.7, label else.7, label else.6

fallthrough.6:                                    
  %call.6 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %deref.ld.3 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.9 = icmp eq i32 %deref.ld.3, 0
  br i1 %icmp.9, label fallthrough.8.thread, label fallthrough.8

else.6:                                           
  %pticast.2 = ptrtoint i8* %call.4 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.2, i64 %pticast.2)
  br label fallthrough.6

else.7:                                           
  %1 = bitcast i8* %call.2 to i8**
  store i8* %call.4, i8** %1, align 8
  br label fallthrough.6

fallthrough.8:                                    
  %pticast.3 = ptrtoint i8* %call.5 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.6, i64 %pticast.3)
  %deref.ld.4.pr = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.11 = icmp eq i32 %deref.ld.4.pr, 0
  br i1 %icmp.11, label else.11, label else.10

fallthrough.8.thread:                             
  %2 = bitcast i8* %call.6 to i8**
  store i8* %call.5, i8** %2, align 8
  br label else.11

fallthrough.10:                                   
  %call.7 = call i8* @runtime.mapassign__fast64(i8* nest undef, %_type.0* getelementptr inbounds (%MapType.0, %MapType.0* @type..map_6int_7_2_2_2int, i64 0, i32 0), { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* %call.1, i64 0)
  %deref.ld.6 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.13 = icmp eq i32 %deref.ld.6, 0
  br i1 %icmp.13, label then.12, label else.12

else.10:                                          
  %pticast.4 = ptrtoint i8* %call.6 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.2, i64 %pticast.4)
  br label fallthrough.10

else.11:                                          
  %3 = bitcast i8* %call.2 to i8**
  store i8* %call.6, i8** %3, align 8
  br label fallthrough.10

then.12:                                          
  %icmp.12 = icmp eq i8* %call.7, null
  br i1 %icmp.12, label then.13, label else.13, !make.implicit !3

fallthrough.12:                                   
  ret void

else.12:                                          
  %pticast.5 = ptrtoint i8* %call.2 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %call.7, i64 %pticast.5)
  br label fallthrough.12

then.13:                                          
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.13:                                          
  %4 = bitcast i8* %call.7 to i8**
  store i8* %call.2, i8** %4, align 8
  br label fallthrough.12
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8*) local_unnamed_addr #0

declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #5

declare i8* @runtime.mapassign__fast64(i8*, %_type.0*, { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }*, i64) local_unnamed_addr #0


!llvm.module.flags = !{!0, !1, !2}


