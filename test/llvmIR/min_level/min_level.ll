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

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.6, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.18 = icmp eq i8* %key1, null
  br i1 %icmp.18, label %then.19, label %else.19, !make.implicit !3

then.19:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.19:                                          ; preds = %entry
  %icmp.19 = icmp eq i8* %key2, null
  br i1 %icmp.19, label %then.20, label %else.20, !make.implicit !3

then.20:                                          ; preds = %else.19
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.20:                                          ; preds = %else.19
  %tmpv.37.sroa.0.0.cast.75.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.37.sroa.0.0.copyload = load i64, i64* %tmpv.37.sroa.0.0.cast.75.sroa_idx, align 8
  %tmpv.38.sroa.0.0.cast.80.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.38.sroa.0.0.copyload = load i64, i64* %tmpv.38.sroa.0.0.cast.80.sroa_idx, align 8
  %icmp.20.not = icmp eq i64 %tmpv.37.sroa.0.0.copyload, %tmpv.38.sroa.0.0.copyload
  br i1 %icmp.20.not, label %else.23, label %common.ret

common.ret:                                       ; preds = %else.23, %else.20
  %common.ret.op = phi i8 [ 0, %else.20 ], [ %., %else.23 ]
  ret i8 %common.ret.op

else.23:                                          ; preds = %else.20
  %field.8 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.8 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.9 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.9 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.24.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.24.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.10
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.11
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.85 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.86 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.27 = icmp eq i8* %key1, null
  br i1 %icmp.27, label %then.27.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.30 = icmp eq i8* %key2, null
  br i1 %icmp.30, label %then.29.split, label %then.33, !make.implicit !3

label.0:                                          ; preds = %then.33
  %add.0 = add nuw nsw i64 %tmpv.51.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.33

then.27.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.29.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.33, %label.0
  %common.ret.op = phi i8 [ 0, %then.33 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.33:                                          ; preds = %label.0, %entry.split
  %tmpv.51.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.53.sroa.4.0.cast.89.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.85, i64 0, i64 %tmpv.51.018, i32 2
  %tmpv.53.sroa.4.0.copyload = load i64, i64* %tmpv.53.sroa.4.0.cast.89.sroa_idx7, align 8
  %tmpv.53.sroa.3.0.cast.89.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.85, i64 0, i64 %tmpv.51.018, i32 1
  %tmpv.53.sroa.3.0.copyload = load i64, i64* %tmpv.53.sroa.3.0.cast.89.sroa_idx6, align 8
  %tmpv.53.sroa.0.0.cast.89.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.85, i64 0, i64 %tmpv.51.018, i32 0
  %tmpv.53.sroa.0.0.copyload = load i32, i32* %tmpv.53.sroa.0.0.cast.89.sroa_idx, align 8
  %tmpv.54.sroa.0.0.cast.94.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.86, i64 0, i64 %tmpv.51.018, i32 0
  %tmpv.54.sroa.0.0.copyload = load i32, i32* %tmpv.54.sroa.0.0.cast.94.sroa_idx, align 8
  %tmpv.54.sroa.3.0.cast.94.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.86, i64 0, i64 %tmpv.51.018, i32 1
  %tmpv.54.sroa.3.0.copyload = load i64, i64* %tmpv.54.sroa.3.0.cast.94.sroa_idx4, align 8
  %tmpv.54.sroa.4.0.cast.94.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.86, i64 0, i64 %tmpv.51.018, i32 2
  %tmpv.54.sroa.4.0.copyload = load i64, i64* %tmpv.54.sroa.4.0.cast.94.sroa_idx5, align 8
  %icmp.31 = icmp eq i32 %tmpv.53.sroa.0.0.copyload, %tmpv.54.sroa.0.0.copyload
  %icmp.32 = icmp eq i64 %tmpv.53.sroa.3.0.copyload, %tmpv.54.sroa.3.0.copyload
  %tmpv.60.0.in = select i1 %icmp.31, i1 %icmp.32, i1 false
  %icmp.33 = icmp eq i64 %tmpv.53.sroa.4.0.copyload, %tmpv.54.sroa.4.0.copyload
  %tmpv.61.0.in = select i1 %tmpv.60.0.in, i1 %icmp.33, i1 false
  br i1 %tmpv.61.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.36 = icmp eq i8* %key1, null
  br i1 %icmp.36, label %then.34, label %else.34, !make.implicit !3

then.34:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.34:                                          ; preds = %entry
  %icmp.37 = icmp eq i8* %key2, null
  br i1 %icmp.37, label %then.35, label %else.35, !make.implicit !3

then.35:                                          ; preds = %else.34
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.35:                                          ; preds = %else.34
  %field.16 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.16, align 4
  %field.17 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.17, align 4
  %icmp.38.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.38.not, label %else.38, label %common.ret

common.ret:                                       ; preds = %else.41, %else.38, %else.35
  %common.ret.op = phi i8 [ 0, %else.35 ], [ 0, %else.38 ], [ %., %else.41 ]
  ret i8 %common.ret.op

else.38:                                          ; preds = %else.35
  %field.18 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.18 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.19 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.19 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.41.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.41.not, label %else.41, label %common.ret

else.41:                                          ; preds = %else.38
  %field.20 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.20 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.21 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.21 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.44.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.44.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6118_7uintptr..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 944)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.16
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.105 = bitcast i8* %key1 to [33 x double]*
  %cast.106 = bitcast i8* %key2 to [33 x double]*
  %icmp.49 = icmp eq i8* %key1, null
  br i1 %icmp.49, label %then.45.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.50 = icmp eq i8* %key2, null
  br i1 %icmp.50, label %then.46.split, label %then.48, !make.implicit !3

label.0:                                          ; preds = %then.48
  %add.1 = add nuw nsw i64 %tmpv.78.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.105, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.106, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.78.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.105, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.106, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.78.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.48

then.45.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.46.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.48, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.48 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.48:                                          ; preds = %label.0.2, %entry.split
  %tmpv.78.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.105, i64 0, i64 %tmpv.78.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.106, i64 0, i64 %tmpv.78.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.17
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.18
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.22
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.23 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.23
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.109 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.110 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.56 = icmp eq i8* %key1, null
  br i1 %icmp.56, label %then.51.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.57 = icmp eq i8* %key2, null
  br i1 %icmp.57, label %then.52.split, label %then.56, !make.implicit !3

then.51.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.52.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.53:                                          ; preds = %then.56
  %icmp.59 = icmp eq i8* %tmpv.94.sroa.0.0.copyload, %tmpv.96.sroa.0.0.copyload
  br i1 %icmp.59, label %else.55, label %fallthrough.53

fallthrough.53:                                   ; preds = %then.53
  %call.24 = call i32 @memcmp(i8* %tmpv.94.sroa.0.0.copyload, i8* %tmpv.96.sroa.0.0.copyload, i64 %tmpv.94.sroa.3.0.copyload)
  %icmp.60 = icmp eq i32 %call.24, 0
  br i1 %icmp.60, label %else.55, label %common.ret

common.ret:                                       ; preds = %then.56, %else.55, %fallthrough.53
  %common.ret.op = phi i8 [ 0, %fallthrough.53 ], [ 1, %else.55 ], [ 0, %then.56 ]
  ret i8 %common.ret.op

else.55:                                          ; preds = %fallthrough.53, %then.53
  %add.2 = add nuw nsw i64 %tmpv.92.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.56

then.56:                                          ; preds = %else.55, %entry.split
  %tmpv.92.019 = phi i64 [ %add.2, %else.55 ], [ 0, %entry.split ]
  %tmpv.94.sroa.0.0.cast.113.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.109, i64 0, i64 %tmpv.92.019, i32 0
  %tmpv.94.sroa.0.0.copyload = load i8*, i8** %tmpv.94.sroa.0.0.cast.113.sroa_idx, align 8
  %tmpv.94.sroa.3.0.cast.113.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.109, i64 0, i64 %tmpv.92.019, i32 1
  %tmpv.94.sroa.3.0.copyload = load i64, i64* %tmpv.94.sroa.3.0.cast.113.sroa_idx3, align 8
  %tmpv.96.sroa.0.0.cast.116.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.110, i64 0, i64 %tmpv.92.019, i32 0
  %tmpv.96.sroa.0.0.copyload = load i8*, i8** %tmpv.96.sroa.0.0.cast.116.sroa_idx, align 8
  %tmpv.96.sroa.3.0.cast.116.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.110, i64 0, i64 %tmpv.92.019, i32 1
  %tmpv.96.sroa.3.0.copyload = load i64, i64* %tmpv.96.sroa.3.0.cast.116.sroa_idx1, align 8
  %icmp.58 = icmp eq i64 %tmpv.94.sroa.3.0.copyload, %tmpv.96.sroa.3.0.copyload
  br i1 %icmp.58, label %then.53, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.25 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.25
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.26 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.26
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.27 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.27
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.28 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.28
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
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.3 = bitcast i8* %call.0 to i64*
  store i64 2, i64* %cast.3, align 8
  %call.1 = call { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8* nest undef)
  %call.2 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2int, i64 0, i32 0))
  %call.3 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %cast.9 = bitcast i8* %call.3 to i64**
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.1 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.1, label %else.1, label %else.0

fallthrough.0:                                    ; preds = %else.1, %else.0
  %call.4 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %cast.15 = bitcast i8* %call.4 to i64**
  %.ld.2 = load i64*, i64** %cast.9, align 8
  %deref.ld.1 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.4 = icmp eq i32 %deref.ld.1, 0
  br i1 %icmp.4, label %else.4, label %else.3

else.0:                                           ; preds = %entry
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.3, i64 %pticast.0)
  br label %fallthrough.0

else.1:                                           ; preds = %entry
  %0 = bitcast i8* %call.3 to i8**
  store i8* %call.0, i8** %0, align 8
  br label %fallthrough.0

fallthrough.3:                                    ; preds = %else.4, %else.3
  %.ld.4 = phi i64* [ %.ld.4.pr, %else.3 ], [ %.ld.2, %else.4 ]
  %call.5 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %icmp.5 = icmp eq i64* %.ld.4, null
  br i1 %icmp.5, label %then.5, label %else.5, !make.implicit !3

else.3:                                           ; preds = %fallthrough.0
  %pticast.1 = ptrtoint i64* %.ld.2 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.4, i64 %pticast.1)
  %.ld.4.pr = load i64*, i64** %cast.15, align 8
  br label %fallthrough.3

else.4:                                           ; preds = %fallthrough.0
  store i64* %.ld.2, i64** %cast.15, align 8
  br label %fallthrough.3

then.5:                                           ; preds = %fallthrough.3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.5:                                           ; preds = %fallthrough.3
  %cast.21 = bitcast i8* %call.5 to i64*
  %.ld.6 = load i64, i64* %.ld.4, align 8
  store i64 %.ld.6, i64* %cast.21, align 8
  %deref.ld.2 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.7 = icmp eq i32 %deref.ld.2, 0
  br i1 %icmp.7, label %else.7, label %else.6

fallthrough.6:                                    ; preds = %else.7, %else.6
  %call.6 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %deref.ld.3 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.9 = icmp eq i32 %deref.ld.3, 0
  br i1 %icmp.9, label %fallthrough.8.thread, label %fallthrough.8

else.6:                                           ; preds = %else.5
  %pticast.2 = ptrtoint i8* %call.4 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.2, i64 %pticast.2)
  br label %fallthrough.6

else.7:                                           ; preds = %else.5
  %1 = bitcast i8* %call.2 to i8**
  store i8* %call.4, i8** %1, align 8
  br label %fallthrough.6

fallthrough.8:                                    ; preds = %fallthrough.6
  %pticast.3 = ptrtoint i8* %call.5 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.6, i64 %pticast.3)
  %deref.ld.4.pr = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.11 = icmp eq i32 %deref.ld.4.pr, 0
  br i1 %icmp.11, label %else.11, label %else.10

fallthrough.8.thread:                             ; preds = %fallthrough.6
  %2 = bitcast i8* %call.6 to i8**
  store i8* %call.5, i8** %2, align 8
  br label %else.11

fallthrough.10:                                   ; preds = %else.11, %else.10
  %call.7 = call i8* @runtime.mapassign__fast64(i8* nest undef, %_type.0* getelementptr inbounds (%MapType.0, %MapType.0* @type..map_6int_7_2_2_2int, i64 0, i32 0), { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* %call.1, i64 0)
  %deref.ld.6 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.13 = icmp eq i32 %deref.ld.6, 0
  br i1 %icmp.13, label %then.12, label %else.12

else.10:                                          ; preds = %fallthrough.8
  %pticast.4 = ptrtoint i8* %call.6 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.2, i64 %pticast.4)
  br label %fallthrough.10

else.11:                                          ; preds = %fallthrough.8.thread, %fallthrough.8
  %3 = bitcast i8* %call.2 to i8**
  store i8* %call.6, i8** %3, align 8
  br label %fallthrough.10

then.12:                                          ; preds = %fallthrough.10
  %icmp.12 = icmp eq i8* %call.7, null
  br i1 %icmp.12, label %then.13, label %else.13, !make.implicit !3

fallthrough.12:                                   ; preds = %else.13, %else.12
  ret void

else.12:                                          ; preds = %fallthrough.10
  %pticast.5 = ptrtoint i8* %call.2 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %call.7, i64 %pticast.5)
  br label %fallthrough.12

then.13:                                          ; preds = %then.12
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.13:                                          ; preds = %then.12
  %4 = bitcast i8* %call.7 to i8**
  store i8* %call.2, i8** %4, align 8
  br label %fallthrough.12
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }* @runtime.makemap__small(i8*) local_unnamed_addr #0

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #5

declare i8* @runtime.mapassign__fast64(i8*, %_type.0*, { i64, i8, i8, i16, i32, i8*, i8*, i64, i8* }*, i64) local_unnamed_addr #0

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "gc-leaf-function" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
