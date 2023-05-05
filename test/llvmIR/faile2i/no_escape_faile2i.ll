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
module asm "\09.ascii \22 20\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 18\22"
module asm "\09.ascii \22 32\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 \\\22I\\\22 <type 5>\\ntype 2 \\\22S\\\22 <type 4>\\ntype 3 (? <type -16>)\\ntype 4 struct { }\\ntype 5 interface { String (); }\\n\22"
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
module asm "\09.ascii \22checksum BB2D0C18DEA13BFCDD391838B3A95CB75F526337\\n\22"
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
%.1 = type { { %_type.0*, void (i8*, i8*)* }*, i8* }

$gcbits..da = comdat any

$main.I..p = comdat any

$gcbits..ba = comdat any

$type..func_8_9_8_9 = comdat any

$main.S..p = comdat any

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
@main.S..d = constant %StructType.0 { %_type.0 { i64 0, i64 0, i32 1464852205, i8 8, i8 1, i8 1, i8 -103, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal0..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C12, %uncommonType.0* @go..C16, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.S..p, i32 0, i32 0) }, %IPST.11 { %structField.0* getelementptr inbounds ([1 x %structField.0], [1 x %structField.0]* @go..C18, i32 0, i32 0), i64 0, i64 0 } }
@runtime.memequal0..f = external constant %functionDescriptor.0
@const.6 = private constant [13 x i8] c"\09main\09main.S\00", align 1
@go..C12 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @const.6, i32 0, i32 0), i64 12 }
@const.7 = private constant [2 x i8] c"S\00", align 1
@go..C13 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @const.7, i32 0, i32 0), i64 1 }
@go..C14 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C15 = internal constant [1 x %method.0] zeroinitializer
@go..C16 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C13, { i8*, i64 }* @go..C14, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C15, i32 0, i32 0), i64 0, i64 0 } }
@main.S..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1962798809, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C17, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i32 0, i32 0) }, comdat
@const.8 = private constant [14 x i8] c"*\09main\09main.S\00", align 1
@go..C17 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @const.8, i32 0, i32 0), i64 13 }
@go..C18 = internal constant [1 x %structField.0] zeroinitializer
@const.10 = private constant [305 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09-gccgoflags=-fno-go-optimize-allocs\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [3 x i8*] } { i64 3, [3 x i8*] [i8* bitcast (%PtrType.0* @main.I..p to i8*), i8* bitcast (%FuncType.0* @type..func_8_9_8_9 to i8*), i8* bitcast (%PtrType.0* @main.S..p to i8*)] }
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
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [3 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.main..init0(i8* nest nocapture readnone %nest.1) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @const.10, i64 0, i64 0), i64 304)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.6, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.4 = icmp eq i8* %key1, null
  br i1 %icmp.4, label %then.6, label %else.6, !make.implicit !3

then.6:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.6:                                           ; preds = %entry
  %icmp.5 = icmp eq i8* %key2, null
  br i1 %icmp.5, label %then.7, label %else.7, !make.implicit !3

then.7:                                           ; preds = %else.6
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.7:                                           ; preds = %else.6
  %tmpv.12.sroa.0.0.cast.42.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.12.sroa.0.0.copyload = load i64, i64* %tmpv.12.sroa.0.0.cast.42.sroa_idx, align 8
  %tmpv.13.sroa.0.0.cast.47.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.13.sroa.0.0.copyload = load i64, i64* %tmpv.13.sroa.0.0.cast.47.sroa_idx, align 8
  %icmp.6.not = icmp eq i64 %tmpv.12.sroa.0.0.copyload, %tmpv.13.sroa.0.0.copyload
  br i1 %icmp.6.not, label %else.10, label %common.ret

common.ret:                                       ; preds = %else.10, %else.7
  %common.ret.op = phi i8 [ 0, %else.7 ], [ %., %else.10 ]
  ret i8 %common.ret.op

else.10:                                          ; preds = %else.7
  %field.12 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.12 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.13 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.13 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.10.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.10.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.3 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.3
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.4
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.52 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.53 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.13 = icmp eq i8* %key1, null
  br i1 %icmp.13, label %then.14.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.16 = icmp eq i8* %key2, null
  br i1 %icmp.16, label %then.16.split, label %then.20, !make.implicit !3

label.0:                                          ; preds = %then.20
  %add.0 = add nuw nsw i64 %tmpv.26.018, 1
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
  %tmpv.26.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.28.sroa.4.0.cast.56.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.52, i64 0, i64 %tmpv.26.018, i32 2
  %tmpv.28.sroa.4.0.copyload = load i64, i64* %tmpv.28.sroa.4.0.cast.56.sroa_idx7, align 8
  %tmpv.28.sroa.3.0.cast.56.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.52, i64 0, i64 %tmpv.26.018, i32 1
  %tmpv.28.sroa.3.0.copyload = load i64, i64* %tmpv.28.sroa.3.0.cast.56.sroa_idx6, align 8
  %tmpv.28.sroa.0.0.cast.56.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.52, i64 0, i64 %tmpv.26.018, i32 0
  %tmpv.28.sroa.0.0.copyload = load i32, i32* %tmpv.28.sroa.0.0.cast.56.sroa_idx, align 8
  %tmpv.29.sroa.0.0.cast.61.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.53, i64 0, i64 %tmpv.26.018, i32 0
  %tmpv.29.sroa.0.0.copyload = load i32, i32* %tmpv.29.sroa.0.0.cast.61.sroa_idx, align 8
  %tmpv.29.sroa.3.0.cast.61.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.53, i64 0, i64 %tmpv.26.018, i32 1
  %tmpv.29.sroa.3.0.copyload = load i64, i64* %tmpv.29.sroa.3.0.cast.61.sroa_idx4, align 8
  %tmpv.29.sroa.4.0.cast.61.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.53, i64 0, i64 %tmpv.26.018, i32 2
  %tmpv.29.sroa.4.0.copyload = load i64, i64* %tmpv.29.sroa.4.0.cast.61.sroa_idx5, align 8
  %icmp.17 = icmp eq i32 %tmpv.28.sroa.0.0.copyload, %tmpv.29.sroa.0.0.copyload
  %icmp.18 = icmp eq i64 %tmpv.28.sroa.3.0.copyload, %tmpv.29.sroa.3.0.copyload
  %tmpv.35.0.in = select i1 %icmp.17, i1 %icmp.18, i1 false
  %icmp.19 = icmp eq i64 %tmpv.28.sroa.4.0.copyload, %tmpv.29.sroa.4.0.copyload
  %tmpv.36.0.in = select i1 %tmpv.35.0.in, i1 %icmp.19, i1 false
  br i1 %tmpv.36.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.22 = icmp eq i8* %key1, null
  br i1 %icmp.22, label %then.21, label %else.21, !make.implicit !3

then.21:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.21:                                          ; preds = %entry
  %icmp.23 = icmp eq i8* %key2, null
  br i1 %icmp.23, label %then.22, label %else.22, !make.implicit !3

then.22:                                          ; preds = %else.21
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.22:                                          ; preds = %else.21
  %field.20 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.20, align 4
  %field.21 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.21, align 4
  %icmp.24.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.24.not, label %else.25, label %common.ret

common.ret:                                       ; preds = %else.28, %else.25, %else.22
  %common.ret.op = phi i8 [ 0, %else.22 ], [ 0, %else.25 ], [ %., %else.28 ]
  ret i8 %common.ret.op

else.25:                                          ; preds = %else.22
  %field.22 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.22 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.23 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.23 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.27.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.27.not, label %else.28, label %common.ret

else.28:                                          ; preds = %else.25
  %field.24 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.24 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.25 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.25 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.30.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.30.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.5
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.9
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.72 = bitcast i8* %key1 to [33 x double]*
  %cast.73 = bitcast i8* %key2 to [33 x double]*
  %icmp.35 = icmp eq i8* %key1, null
  br i1 %icmp.35, label %then.32.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.36 = icmp eq i8* %key2, null
  br i1 %icmp.36, label %then.33.split, label %then.35, !make.implicit !3

label.0:                                          ; preds = %then.35
  %add.1 = add nuw nsw i64 %tmpv.53.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.72, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.73, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.53.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.72, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.73, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.53.011, 3
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
  %tmpv.53.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.72, i64 0, i64 %tmpv.53.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.73, i64 0, i64 %tmpv.53.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.10
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.16
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.76 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.77 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.42 = icmp eq i8* %key1, null
  br i1 %icmp.42, label %then.38.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.43 = icmp eq i8* %key2, null
  br i1 %icmp.43, label %then.39.split, label %then.43, !make.implicit !3

then.38.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.39.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.40:                                          ; preds = %then.43
  %icmp.45 = icmp eq i8* %tmpv.69.sroa.0.0.copyload, %tmpv.71.sroa.0.0.copyload
  br i1 %icmp.45, label %else.42, label %fallthrough.40

fallthrough.40:                                   ; preds = %then.40
  %call.17 = call i32 @memcmp(i8* %tmpv.69.sroa.0.0.copyload, i8* %tmpv.71.sroa.0.0.copyload, i64 %tmpv.69.sroa.3.0.copyload)
  %icmp.46 = icmp eq i32 %call.17, 0
  br i1 %icmp.46, label %else.42, label %common.ret

common.ret:                                       ; preds = %then.43, %else.42, %fallthrough.40
  %common.ret.op = phi i8 [ 0, %fallthrough.40 ], [ 1, %else.42 ], [ 0, %then.43 ]
  ret i8 %common.ret.op

else.42:                                          ; preds = %fallthrough.40, %then.40
  %add.2 = add nuw nsw i64 %tmpv.67.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.43

then.43:                                          ; preds = %else.42, %entry.split
  %tmpv.67.019 = phi i64 [ %add.2, %else.42 ], [ 0, %entry.split ]
  %tmpv.69.sroa.0.0.cast.80.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.76, i64 0, i64 %tmpv.67.019, i32 0
  %tmpv.69.sroa.0.0.copyload = load i8*, i8** %tmpv.69.sroa.0.0.cast.80.sroa_idx, align 8
  %tmpv.69.sroa.3.0.cast.80.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.76, i64 0, i64 %tmpv.67.019, i32 1
  %tmpv.69.sroa.3.0.copyload = load i64, i64* %tmpv.69.sroa.3.0.cast.80.sroa_idx3, align 8
  %tmpv.71.sroa.0.0.cast.83.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.77, i64 0, i64 %tmpv.67.019, i32 0
  %tmpv.71.sroa.0.0.copyload = load i8*, i8** %tmpv.71.sroa.0.0.cast.83.sroa_idx, align 8
  %tmpv.71.sroa.3.0.cast.83.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.77, i64 0, i64 %tmpv.67.019, i32 1
  %tmpv.71.sroa.3.0.copyload = load i64, i64* %tmpv.71.sroa.3.0.cast.83.sroa_idx1, align 8
  %icmp.44 = icmp eq i64 %tmpv.69.sroa.3.0.copyload, %tmpv.71.sroa.3.0.copyload
  br i1 %icmp.44, label %then.40, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.18
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.21
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
  %sret.actual.0 = alloca { %.1, i8 }, align 8
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.S..d, i64 0, i32 0))
  call void @runtime.ifaceE2I2({ %.1, i8 }* nonnull sret({ %.1, i8 }) "go_sret" %sret.actual.0, i8* nest undef, %_type.0* getelementptr inbounds (%InterfaceType.0, %InterfaceType.0* @main.I..d, i64 0, i32 0), i8* bitcast (%StructType.0* @main.S..d to i8*), i8* nonnull %call.0)
  %tmpv.1.sroa.2.0.cast.23.sroa_idx = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.0, i64 0, i32 1
  %tmpv.1.sroa.2.0.copyload = load i8, i8* %tmpv.1.sroa.2.0.cast.23.sroa_idx, align 8
  %0 = and i8 %tmpv.1.sroa.2.0.copyload, 1
  %trunc.0.not = icmp eq i8 %0, 0
  br i1 %trunc.0.not, label %fallthrough.0, label %then.0

then.0:                                           ; preds = %entry
  %tmpv.1.sroa.0.sroa.2.0.tmpv.1.sroa.0.0.cast.23.sroa_cast.sroa_idx8 = getelementptr inbounds { %.1, i8 }, { %.1, i8 }* %sret.actual.0, i64 0, i32 0, i32 1
  %tmpv.1.sroa.0.sroa.2.0.copyload = load i8*, i8** %tmpv.1.sroa.0.sroa.2.0.tmpv.1.sroa.0.0.cast.23.sroa_cast.sroa_idx8, align 8
  %tmpv.1.sroa.0.sroa.0.0.tmpv.1.sroa.0.0.cast.23.sroa_cast.sroa_cast = bitcast { %.1, i8 }* %sret.actual.0 to i8**
  %tmpv.1.sroa.0.sroa.0.0.copyload = load i8*, i8** %tmpv.1.sroa.0.sroa.0.0.tmpv.1.sroa.0.0.cast.23.sroa_cast.sroa_cast, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printiface(i8* nest undef, i8* %tmpv.1.sroa.0.sroa.0.0.copyload, i8* %tmpv.1.sroa.0.sroa.2.0.copyload)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  br label %fallthrough.0

fallthrough.0:                                    ; preds = %then.0, %entry
  ret void
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare void @runtime.ifaceE2I2({ %.1, i8 }*, i8*, %_type.0*, i8*, i8*) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printiface(i8*, i8*, i8*) local_unnamed_addr #0

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
