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
module asm "\09.ascii \22types 2 1\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 (? <type -16>)\\n\22"
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
module asm "\09.ascii \22checksum 8B7FBA3A104C2769F5D3ABD64E35F3E4BEBACA61\\n\22"
module asm "\09.text"

%MapType.0 = type { %_type.0, %_type.0*, %_type.0*, %_type.0*, %__go_descriptor.7*, i8, i8, i16, i32 }
%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%__go_descriptor.7 = type { i64 (i8*, i8*, i64)* }
%PtrType.0 = type { %_type.0, %_type.0* }
%StructType.0 = type { %_type.0, %IPST.11 }
%IPST.11 = type { %structField.0*, i64, i64 }
%structField.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, { i8*, i64 }*, i64 }
%functionDescriptor.0 = type { i64 }
%ArrayType.0 = type { %_type.0, %_type.0*, %_type.0*, i64 }

$type..map_6int_7_2int = comdat any

$gcbits..ba = comdat any

$int..d = comdat any

$int..p = comdat any

$type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2int_coverflow_b_2_4void_5_5 = comdat any

$gcbits..aqFha = comdat any

$type.._68x_7uint8 = comdat any

$uint8..d = comdat any

$uint8..p = comdat any

$type.._6_7uint8 = comdat any

$type.._68x_7int = comdat any

$type.._6_7int = comdat any

$type.._68x_7_2int = comdat any

$gcbits..Fh = comdat any

$type.._6_7_2int = comdat any

@type..map_6int_7_2int = weak constant %MapType.0 { %_type.0 { i64 8, i64 8, i32 2019066715, i8 0, i8 8, i8 8, i8 53, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C1, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0), %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2int_coverflow_b_2_4void_5_5, i32 0, i32 0), %__go_descriptor.7* bitcast (%functionDescriptor.0* @runtime.memhash64..f to %__go_descriptor.7*), i8 8, i8 8, i16 144, i32 4 }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.0 = private constant [13 x i8] c"map[int]*int\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.0, i32 0, i32 0), i64 12 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C2, %uncommonType.0* @go..C5, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.1 = private constant [4 x i8] c"int\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C4 = internal constant [1 x %method.0] zeroinitializer
@go..C5 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C3, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C4, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C6, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.2 = private constant [5 x i8] c"*int\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@type..struct_4_4x_5topbits_b_68x_7uint8_ckeys_b_68x_7int_cvalues_b_68x_7_2int_coverflow_b_2_4void_5_5 = weak constant %StructType.0 { %_type.0 { i64 144, i64 144, i32 1983521156, i8 8, i8 8, i8 8, i8 25, %__go_descriptor.6* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @gcbits..aqFha, i32 0, i32 0), { i8*, i64 }* @go..C7, %uncommonType.0* null, %_type.0* null }, %IPST.11 { %structField.0* getelementptr inbounds ([4 x %structField.0], [4 x %structField.0]* @go..C23, i32 0, i32 0), i64 4, i64 4 } }, comdat
@gcbits..aqFha = weak constant [3 x i8] c"\00\FE\03", comdat
@const.3 = private constant [69 x i8] c"struct { topbits [8]uint8; keys [8]int; values [8]*int; overflow * }\00", align 1
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @const.3, i32 0, i32 0), i64 68 }
@const.4 = private constant [8 x i8] c"topbits\00", align 1
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.4, i32 0, i32 0), i64 7 }
@type.._68x_7uint8 = weak constant %ArrayType.0 { %_type.0 { i64 8, i64 0, i32 529264193, i8 8, i8 1, i8 1, i8 -111, %__go_descriptor.6* null, i8* null, { i8*, i64 }* @go..C9, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7uint8, i32 0, i32 0), i64 8 }, comdat
@const.5 = private constant [9 x i8] c"[8]uint8\00", align 1
@go..C9 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.5, i32 0, i32 0), i64 8 }
@uint8..d = weak constant %_type.0 { i64 1, i64 0, i32 264632089, i8 8, i8 1, i8 1, i8 -120, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal8..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C10, %uncommonType.0* @go..C13, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @uint8..p, i32 0, i32 0) }, comdat
@runtime.memequal8..f = external constant %functionDescriptor.0
@const.6 = private constant [6 x i8] c"uint8\00", align 1
@go..C10 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.6, i32 0, i32 0), i64 5 }
@go..C11 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.6, i32 0, i32 0), i64 5 }
@go..C12 = internal constant [1 x %method.0] zeroinitializer
@go..C13 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C11, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C12, i32 0, i32 0), i64 0, i64 0 } }
@uint8..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 -60853863, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C14, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d }, comdat
@const.7 = private constant [7 x i8] c"*uint8\00", align 1
@go..C14 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.7, i32 0, i32 0), i64 6 }
@type.._6_7uint8 = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 264632103, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C15, %uncommonType.0* null, %_type.0* null }, %_type.0* @uint8..d }, comdat
@const.8 = private constant [8 x i8] c"[]uint8\00", align 1
@go..C15 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.8, i32 0, i32 0), i64 7 }
@const.9 = private constant [5 x i8] c"keys\00", align 1
@go..C16 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.9, i32 0, i32 0), i64 4 }
@type.._68x_7int = weak constant %ArrayType.0 { %_type.0 { i64 64, i64 0, i32 1753408083, i8 8, i8 8, i8 8, i8 -111, %__go_descriptor.6* null, i8* null, { i8*, i64 }* @go..C17, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7int, i32 0, i32 0), i64 8 }, comdat
@const.10 = private constant [7 x i8] c"[8]int\00", align 1
@go..C17 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.10, i32 0, i32 0), i64 6 }
@type.._6_7int = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 876704048, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C18, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.11 = private constant [6 x i8] c"[]int\00", align 1
@go..C18 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.11, i32 0, i32 0), i64 5 }
@const.12 = private constant [7 x i8] c"values\00", align 1
@go..C19 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.12, i32 0, i32 0), i64 6 }
@type.._68x_7_2int = weak constant %ArrayType.0 { %_type.0 { i64 64, i64 64, i32 -2010241951, i8 8, i8 8, i8 8, i8 17, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..Fh, i32 0, i32 0), { i8*, i64 }* @go..C20, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0), %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._6_7_2int, i32 0, i32 0), i64 8 }, comdat
@gcbits..Fh = weak constant [1 x i8] c"\FF", comdat
@const.13 = private constant [8 x i8] c"[8]*int\00", align 1
@go..C20 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.13, i32 0, i32 0), i64 7 }
@type.._6_7_2int = weak constant %PtrType.0 { %_type.0 { i64 24, i64 8, i32 1142362679, i8 0, i8 8, i8 8, i8 23, %__go_descriptor.6* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C21, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.14 = private constant [7 x i8] c"[]*int\00", align 1
@go..C21 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @const.14, i32 0, i32 0), i64 6 }
@const.15 = private constant [9 x i8] c"overflow\00", align 1
@go..C22 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @const.15, i32 0, i32 0), i64 8 }
@unsafe.Pointer..d = external constant %_type.0
@go..C23 = internal constant [4 x %structField.0] [%structField.0 { { i8*, i64 }* @go..C8, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7uint8, i32 0, i32 0), { i8*, i64 }* null, i64 0 }, %structField.0 { { i8*, i64 }* @go..C16, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7int, i32 0, i32 0), { i8*, i64 }* null, i64 16 }, %structField.0 { { i8*, i64 }* @go..C19, { i8*, i64 }* null, %_type.0* getelementptr inbounds (%ArrayType.0, %ArrayType.0* @type.._68x_7_2int, i32 0, i32 0), { i8*, i64 }* null, i64 144 }, %structField.0 { { i8*, i64 }* @go..C22, { i8*, i64 }* null, %_type.0* @unsafe.Pointer..d, { i8*, i64 }* null, i64 272 }]
@runtime.memhash64..f = external constant %functionDescriptor.0
@const.16 = private constant [8 x i8] c"nil ptr\00", align 1
@const.18 = private constant [305 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09-gccgoflags=-fno-go-optimize-allocs\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [6 x i8*] } { i64 6, [6 x i8*] [i8* bitcast (%PtrType.0* @int..p to i8*), i8* bitcast (%PtrType.0* @uint8..p to i8*), i8* bitcast (%PtrType.0* @type.._6_7uint8 to i8*), i8* bitcast (%PtrType.0* @type.._6_7int to i8*), i8* bitcast (%PtrType.0* @type.._6_7_2int to i8*), i8* bitcast (%MapType.0* @type..map_6int_7_2int to i8*)] }
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

define void @main.main..init0(i8* nest nocapture readnone %nest.1) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @const.18, i64 0, i64 0), i64 304)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.6, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.5 = icmp eq i8* %key1, null
  br i1 %icmp.5, label %then.6, label %else.6, !make.implicit !3

then.6:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.6:                                           ; preds = %entry
  %icmp.6 = icmp eq i8* %key2, null
  br i1 %icmp.6, label %then.7, label %else.7, !make.implicit !3

then.7:                                           ; preds = %else.6
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.7:                                           ; preds = %else.6
  %tmpv.10.sroa.0.0.cast.38.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.10.sroa.0.0.copyload = load i64, i64* %tmpv.10.sroa.0.0.cast.38.sroa_idx, align 8
  %tmpv.11.sroa.0.0.cast.43.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.11.sroa.0.0.copyload = load i64, i64* %tmpv.11.sroa.0.0.cast.43.sroa_idx, align 8
  %icmp.7.not = icmp eq i64 %tmpv.10.sroa.0.0.copyload, %tmpv.11.sroa.0.0.copyload
  br i1 %icmp.7.not, label %else.10, label %common.ret

common.ret:                                       ; preds = %else.10, %else.7
  %common.ret.op = phi i8 [ 0, %else.7 ], [ %., %else.10 ]
  ret i8 %common.ret.op

else.10:                                          ; preds = %else.7
  %field.8 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.8 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.9 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.9 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.11.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.11.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.4
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.5
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.48 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.49 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.14 = icmp eq i8* %key1, null
  br i1 %icmp.14, label %then.14.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.17 = icmp eq i8* %key2, null
  br i1 %icmp.17, label %then.16.split, label %then.20, !make.implicit !3

label.0:                                          ; preds = %then.20
  %add.0 = add nuw nsw i64 %tmpv.24.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.20

then.14.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.16.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.20, %label.0
  %common.ret.op = phi i8 [ 0, %then.20 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.20:                                          ; preds = %label.0, %entry.split
  %tmpv.24.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.26.sroa.4.0.cast.52.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.48, i64 0, i64 %tmpv.24.018, i32 2
  %tmpv.26.sroa.4.0.copyload = load i64, i64* %tmpv.26.sroa.4.0.cast.52.sroa_idx7, align 8
  %tmpv.26.sroa.3.0.cast.52.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.48, i64 0, i64 %tmpv.24.018, i32 1
  %tmpv.26.sroa.3.0.copyload = load i64, i64* %tmpv.26.sroa.3.0.cast.52.sroa_idx6, align 8
  %tmpv.26.sroa.0.0.cast.52.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.48, i64 0, i64 %tmpv.24.018, i32 0
  %tmpv.26.sroa.0.0.copyload = load i32, i32* %tmpv.26.sroa.0.0.cast.52.sroa_idx, align 8
  %tmpv.27.sroa.0.0.cast.57.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.49, i64 0, i64 %tmpv.24.018, i32 0
  %tmpv.27.sroa.0.0.copyload = load i32, i32* %tmpv.27.sroa.0.0.cast.57.sroa_idx, align 8
  %tmpv.27.sroa.3.0.cast.57.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.49, i64 0, i64 %tmpv.24.018, i32 1
  %tmpv.27.sroa.3.0.copyload = load i64, i64* %tmpv.27.sroa.3.0.cast.57.sroa_idx4, align 8
  %tmpv.27.sroa.4.0.cast.57.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.49, i64 0, i64 %tmpv.24.018, i32 2
  %tmpv.27.sroa.4.0.copyload = load i64, i64* %tmpv.27.sroa.4.0.cast.57.sroa_idx5, align 8
  %icmp.18 = icmp eq i32 %tmpv.26.sroa.0.0.copyload, %tmpv.27.sroa.0.0.copyload
  %icmp.19 = icmp eq i64 %tmpv.26.sroa.3.0.copyload, %tmpv.27.sroa.3.0.copyload
  %tmpv.33.0.in = select i1 %icmp.18, i1 %icmp.19, i1 false
  %icmp.20 = icmp eq i64 %tmpv.26.sroa.4.0.copyload, %tmpv.27.sroa.4.0.copyload
  %tmpv.34.0.in = select i1 %tmpv.33.0.in, i1 %icmp.20, i1 false
  br i1 %tmpv.34.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.23 = icmp eq i8* %key1, null
  br i1 %icmp.23, label %then.21, label %else.21, !make.implicit !3

then.21:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.21:                                          ; preds = %entry
  %icmp.24 = icmp eq i8* %key2, null
  br i1 %icmp.24, label %then.22, label %else.22, !make.implicit !3

then.22:                                          ; preds = %else.21
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.22:                                          ; preds = %else.21
  %field.16 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.16, align 4
  %field.17 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.17, align 4
  %icmp.25.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.25.not, label %else.25, label %common.ret

common.ret:                                       ; preds = %else.28, %else.25, %else.22
  %common.ret.op = phi i8 [ 0, %else.22 ], [ 0, %else.25 ], [ %., %else.28 ]
  ret i8 %common.ret.op

else.25:                                          ; preds = %else.22
  %field.18 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.18 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.19 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.19 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.28.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.28.not, label %else.28, label %common.ret

else.28:                                          ; preds = %else.25
  %field.20 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.20 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.21 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.21 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.31.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.31.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.9
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.10
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.68 = bitcast i8* %key1 to [33 x double]*
  %cast.69 = bitcast i8* %key2 to [33 x double]*
  %icmp.36 = icmp eq i8* %key1, null
  br i1 %icmp.36, label %then.32.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.37 = icmp eq i8* %key2, null
  br i1 %icmp.37, label %then.33.split, label %then.35, !make.implicit !3

label.0:                                          ; preds = %then.35
  %add.1 = add nuw nsw i64 %tmpv.51.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.68, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.69, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.51.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.68, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.69, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.51.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.35

then.32.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.33.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.35, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.35 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.35:                                          ; preds = %label.0.2, %entry.split
  %tmpv.51.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.68, i64 0, i64 %tmpv.51.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.69, i64 0, i64 %tmpv.51.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.16
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.17
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.72 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.73 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.43 = icmp eq i8* %key1, null
  br i1 %icmp.43, label %then.38.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.44 = icmp eq i8* %key2, null
  br i1 %icmp.44, label %then.39.split, label %then.43, !make.implicit !3

then.38.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.39.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.40:                                          ; preds = %then.43
  %icmp.46 = icmp eq i8* %tmpv.67.sroa.0.0.copyload, %tmpv.69.sroa.0.0.copyload
  br i1 %icmp.46, label %else.42, label %fallthrough.40

fallthrough.40:                                   ; preds = %then.40
  %call.18 = call i32 @memcmp(i8* %tmpv.67.sroa.0.0.copyload, i8* %tmpv.69.sroa.0.0.copyload, i64 %tmpv.67.sroa.3.0.copyload)
  %icmp.47 = icmp eq i32 %call.18, 0
  br i1 %icmp.47, label %else.42, label %common.ret

common.ret:                                       ; preds = %then.43, %else.42, %fallthrough.40
  %common.ret.op = phi i8 [ 0, %fallthrough.40 ], [ 1, %else.42 ], [ 0, %then.43 ]
  ret i8 %common.ret.op

else.42:                                          ; preds = %fallthrough.40, %then.40
  %add.2 = add nuw nsw i64 %tmpv.65.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.43

then.43:                                          ; preds = %else.42, %entry.split
  %tmpv.65.019 = phi i64 [ %add.2, %else.42 ], [ 0, %entry.split ]
  %tmpv.67.sroa.0.0.cast.76.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.72, i64 0, i64 %tmpv.65.019, i32 0
  %tmpv.67.sroa.0.0.copyload = load i8*, i8** %tmpv.67.sroa.0.0.cast.76.sroa_idx, align 8
  %tmpv.67.sroa.3.0.cast.76.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.72, i64 0, i64 %tmpv.65.019, i32 1
  %tmpv.67.sroa.3.0.copyload = load i64, i64* %tmpv.67.sroa.3.0.cast.76.sroa_idx3, align 8
  %tmpv.69.sroa.0.0.cast.79.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.73, i64 0, i64 %tmpv.65.019, i32 0
  %tmpv.69.sroa.0.0.copyload = load i8*, i8** %tmpv.69.sroa.0.0.cast.79.sroa_idx, align 8
  %tmpv.69.sroa.3.0.cast.79.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.73, i64 0, i64 %tmpv.65.019, i32 1
  %tmpv.69.sroa.3.0.copyload = load i64, i64* %tmpv.69.sroa.3.0.cast.79.sroa_idx1, align 8
  %icmp.45 = icmp eq i64 %tmpv.67.sroa.3.0.copyload, %tmpv.69.sroa.3.0.copyload
  br i1 %icmp.45, label %then.40, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.22
}

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
  %call.0 = call { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8* nest undef)
  %call.1 = call i8* @runtime.mapaccess1__fast64(i8* nest undef, %_type.0* getelementptr inbounds (%MapType.0, %MapType.0* @type..map_6int_7_2int, i64 0, i32 0), { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* %call.0, i64 2)
  %cast.24 = bitcast i8* %call.1 to i64**
  %.ld.0 = load i64*, i64** %cast.24, align 8
  %icmp.0 = icmp eq i64* %.ld.0, null
  br i1 %icmp.0, label %then.0, label %fallthrough.0

then.0:                                           ; preds = %entry
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printstring(i8* nest undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @const.16, i64 0, i64 0), i64 7)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.0

fallthrough.0:                                    ; preds = %then.0, %entry
  ret void
}

declare { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8*) local_unnamed_addr #0

declare i8* @runtime.mapaccess1__fast64(i8*, %_type.0*, { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }*, i64) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printstring(i8*, i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

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
