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
module asm "\09.ascii \22types 7 1\22"
module asm "\09.ascii \22 28\22"
module asm "\09.ascii \22 10\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 17\22"
module asm "\09.ascii \22 39\22"
module asm "\09.ascii \22 19\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 \\\22.main.obj\\\22 <type 5>\\ntype 2 ()\\ntype 3 (? <type -16>)\\ntype 4 *<type 1>\\ntype 5 struct { .main.id <type -11>; }\\ntype 6 [] <type 4>\\n\22"
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
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22Escape\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22task\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<esc:0x1>\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 2>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22func \22"
module asm "\09.ascii \22Recover\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22objs\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<esc:0x1>\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22...\22"
module asm "\09.ascii \22<type 4>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 <inl:61>\\n\22"
module asm "\09.ascii \22 // /home/lqw/semantic/gollvm-semantic/test/issue54247.go:22\\n\22"
module asm "\09.ascii \22checksum 4D6A66D1E6A95E7564F5E1678A815A400821746D\\n\22"
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
%__go_descriptor.1 = type { void (i8*)* }

$main.obj..p = comdat any

$gcbits..ba = comdat any

$int..d = comdat any

$int..p = comdat any

@main.obj..d = constant %StructType.0 { %_type.0 { i64 8, i64 0, i32 -1212222547, i8 8, i8 8, i8 8, i8 -103, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C1, %uncommonType.0* @go..C5, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @main.obj..p, i32 0, i32 0) }, %IPST.11 { %structField.0* getelementptr inbounds ([1 x %structField.0], [1 x %structField.0]* @go..C14, i32 0, i32 0), i64 1, i64 1 } }
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.0 = private constant [15 x i8] c"\09main\09main.obj\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @const.0, i32 0, i32 0), i64 14 }
@const.1 = private constant [4 x i8] c"obj\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@const.2 = private constant [5 x i8] c"main\00", align 1
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@go..C4 = internal constant [1 x %method.0] zeroinitializer
@go..C5 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* @go..C3, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C4, i32 0, i32 0), i64 0, i64 0 } }
@main.obj..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 2079275737, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C6, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%StructType.0, %StructType.0* @main.obj..d, i32 0, i32 0) }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.3 = private constant [16 x i8] c"*\09main\09main.obj\00", align 1
@go..C6 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @const.3, i32 0, i32 0), i64 15 }
@const.4 = private constant [3 x i8] c"id\00", align 1
@go..C7 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @const.4, i32 0, i32 0), i64 2 }
@go..C8 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C9, %uncommonType.0* @go..C12, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.5 = private constant [4 x i8] c"int\00", align 1
@go..C9 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.5, i32 0, i32 0), i64 3 }
@go..C10 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.5, i32 0, i32 0), i64 3 }
@go..C11 = internal constant [1 x %method.0] zeroinitializer
@go..C12 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C10, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C11, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C13, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.6 = private constant [5 x i8] c"*int\00", align 1
@go..C13 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.6, i32 0, i32 0), i64 4 }
@go..C14 = internal constant [1 x %structField.0] [%structField.0 { { i8*, i64 }* @go..C7, { i8*, i64 }* @go..C8, %_type.0* @int..d, { i8*, i64 }* null, i64 0 }]
@main.main..func1..f = internal constant %functionDescriptor.0 { i64 ptrtoint (void (i8*)* @main.main..func1 to i64) }
@main.Escape..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*, %__go_descriptor.1*)* @main.Escape to i64) }
@main.Recover..f = local_unnamed_addr constant %functionDescriptor.0 { i64 ptrtoint (void (i8*, { %functionDescriptor.0**, i64, i64 }*)* @main.Recover to i64) }
@const.9 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [2 x i8*] } { i64 2, [2 x i8*] [i8* bitcast (%PtrType.0* @main.obj..p to i8*), i8* bitcast (%PtrType.0* @int..p to i8*)] }
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
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [2 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.Escape(i8* nest nocapture readnone %nest.2, %__go_descriptor.1* %task) #0 personality i32 (i32, i32, i64, i8*, i8*)* @__gccgo_personality_v0 {
entry:
  %tmpv.0 = alloca i8, align 1, !go_addrtaken !3
  %tmpv.1 = alloca %functionDescriptor.0, align 8, !go_addrtaken !3
  %tmpv.2 = alloca [1 x %functionDescriptor.0*], align 8
  %tmpv.3 = alloca { i8*, i8*, i8*, i8*, i64, i8*, i64, i8, i8 }, align 8, !go_addrtaken !3
  %tmpv.4 = alloca { { %functionDescriptor.0**, i64, i64 } }, align 8, !go_addrtaken !3
  store i8 0, i8* %tmpv.0, align 1
  %0 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.1, i64 0, i32 0
  store i64 0, i64* %0, align 8
  %index.0 = getelementptr inbounds [1 x %functionDescriptor.0*], [1 x %functionDescriptor.0*]* %tmpv.2, i64 0, i64 0
  store %functionDescriptor.0* %tmpv.1, %functionDescriptor.0** %index.0, align 8
  %cast.14 = bitcast { i8*, i8*, i8*, i8*, i64, i8*, i64, i8, i8 }* %tmpv.3 to i8*
  %cast.10 = bitcast { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4 to i8*
  %tmp.0.sroa.0.0.cast.12.sroa_idx = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4, i64 0, i32 0, i32 0
  store %functionDescriptor.0** %index.0, %functionDescriptor.0*** %tmp.0.sroa.0.0.cast.12.sroa_idx, align 8
  %tmp.0.sroa.2.0.cast.12.sroa_idx1 = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4, i64 0, i32 0, i32 1
  %1 = bitcast i64* %tmp.0.sroa.2.0.cast.12.sroa_idx1 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %1, align 8
  invoke void @runtime.deferprocStack(i8* nest undef, i8* nonnull %cast.14, i8* nonnull %tmpv.0, i64 ptrtoint (void (i8*, { { %functionDescriptor.0**, i64, i64 } }*)* @main.go..thunk0 to i64), i8* nonnull %cast.10)
          to label %cont.1 unwind label %pad.1

pad.0:                                            ; preds = %cont.2, %finish.0
  %ehtmp.0.sroa.0.0 = phi i8* [ undef, %cont.2 ], [ %ehtmp.0.sroa.0.1, %finish.0 ]
  %ehtmp.0.sroa.2.0 = phi i32 [ undef, %cont.2 ], [ %ehtmp.0.sroa.2.1, %finish.0 ]
  %finvar.0.0 = phi i8 [ 1, %cont.2 ], [ %finvar.0.1, %finish.0 ]
  %ex.0 = landingpad { i8*, i32 }
          catch i8* null
  call void @runtime.checkdefer(i8* nest undef, i8* nonnull %tmpv.0)
  br label %finish.0

finish.0:                                         ; preds = %catchpad.0, %pad.1, %pad.0
  %ehtmp.0.sroa.0.1 = phi i8* [ %ehtmp.0.sroa.0.0, %pad.0 ], [ %ex2.0.fca.0.extract, %catchpad.0 ], [ undef, %pad.1 ]
  %ehtmp.0.sroa.2.1 = phi i32 [ %ehtmp.0.sroa.2.0, %pad.0 ], [ %ex2.0.fca.1.extract, %catchpad.0 ], [ undef, %pad.1 ]
  %finvar.0.1 = phi i8 [ %finvar.0.0, %pad.0 ], [ 0, %catchpad.0 ], [ 1, %pad.1 ]
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %tmpv.0)
          to label %cont.0 unwind label %pad.0

cont.0:                                           ; preds = %finish.0
  %icmp.0 = icmp eq i8 %finvar.0.1, 1
  br i1 %icmp.0, label %finret.0, label %finres.0

pad.1:                                            ; preds = %cont.1, %entry
  %ex.1 = landingpad { i8*, i32 }
          catch i8* null
  invoke void @runtime.checkdefer(i8* nest undef, i8* nonnull %tmpv.0)
          to label %finish.0 unwind label %catchpad.0

catchpad.0:                                       ; preds = %pad.1
  %ex2.0 = landingpad { i8*, i32 }
          cleanup
  %ex2.0.fca.0.extract = extractvalue { i8*, i32 } %ex2.0, 0
  %ex2.0.fca.1.extract = extractvalue { i8*, i32 } %ex2.0, 1
  br label %finish.0

cont.1:                                           ; preds = %entry
  %2 = getelementptr %__go_descriptor.1, %__go_descriptor.1* %task, i64 0, i32 0
  %deref.ld.03 = load void (i8*)*, void (i8*)** %2, align 8
  %cast.18 = bitcast %__go_descriptor.1* %task to i8*
  invoke void %deref.ld.03(i8* nest nonnull %cast.18)
          to label %cont.2 unwind label %pad.1

cont.2:                                           ; preds = %cont.1
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %tmpv.0)
          to label %finret.0 unwind label %pad.0

finres.0:                                         ; preds = %cont.0
  %excv.0.fca.0.insert = insertvalue { i8*, i32 } poison, i8* %ehtmp.0.sroa.0.1, 0
  %excv.0.fca.1.insert = insertvalue { i8*, i32 } %excv.0.fca.0.insert, i32 %ehtmp.0.sroa.2.1, 1
  resume { i8*, i32 } %excv.0.fca.1.insert

finret.0:                                         ; preds = %cont.2, %cont.0
  ret void
}

declare i32 @__gccgo_personality_v0(i32, i32, i64, i8*, i8*)

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define internal void @main.go..thunk0(i8* nest nocapture %nest.9, { { %functionDescriptor.0**, i64, i64 } }* nocapture %__go_thunk_parameter) #1 {
entry:
  ret void
}

declare void @runtime.deferprocStack(i8*, i8*, i8*, i64, i8*) local_unnamed_addr #0

declare void @runtime.checkdefer(i8*, i8*) local_unnamed_addr #0

declare void @runtime.deferreturn(i8*, i8*) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define void @main.Recover(i8* nest nocapture %nest.3, { %functionDescriptor.0**, i64, i64 }* nocapture byval({ %functionDescriptor.0**, i64, i64 }) %objs) #1 {
entry:
  ret void
}

define void @main.main..init0(i8* nest nocapture readnone %nest.4) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.9, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.5 = icmp eq i8* %key1, null
  br i1 %icmp.5, label %then.5, label %else.5, !make.implicit !3

then.5:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.5:                                           ; preds = %entry
  %icmp.6 = icmp eq i8* %key2, null
  br i1 %icmp.6, label %then.6, label %else.6, !make.implicit !3

then.6:                                           ; preds = %else.5
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.6:                                           ; preds = %else.5
  %tmpv.14.sroa.0.0.cast.30.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.14.sroa.0.0.copyload = load i64, i64* %tmpv.14.sroa.0.0.cast.30.sroa_idx, align 8
  %tmpv.15.sroa.0.0.cast.35.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.15.sroa.0.0.copyload = load i64, i64* %tmpv.15.sroa.0.0.cast.35.sroa_idx, align 8
  %icmp.7.not = icmp eq i64 %tmpv.14.sroa.0.0.copyload, %tmpv.15.sroa.0.0.copyload
  br i1 %icmp.7.not, label %else.9, label %common.ret

common.ret:                                       ; preds = %else.9, %else.6
  %common.ret.op = phi i8 [ 0, %else.6 ], [ %., %else.9 ]
  ret i8 %common.ret.op

else.9:                                           ; preds = %else.6
  %field.13 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.13 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.14 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.14 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.11.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.11.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #2

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.2 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.2
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.3 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.3
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.40 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.41 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.14 = icmp eq i8* %key1, null
  br i1 %icmp.14, label %then.13.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.17 = icmp eq i8* %key2, null
  br i1 %icmp.17, label %then.15.split, label %then.19, !make.implicit !3

label.0:                                          ; preds = %then.19
  %add.0 = add nuw nsw i64 %tmpv.28.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.19

then.13.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.15.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.19, %label.0
  %common.ret.op = phi i8 [ 0, %then.19 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.19:                                          ; preds = %label.0, %entry.split
  %tmpv.28.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.30.sroa.4.0.cast.44.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.40, i64 0, i64 %tmpv.28.018, i32 2
  %tmpv.30.sroa.4.0.copyload = load i64, i64* %tmpv.30.sroa.4.0.cast.44.sroa_idx7, align 8
  %tmpv.30.sroa.3.0.cast.44.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.40, i64 0, i64 %tmpv.28.018, i32 1
  %tmpv.30.sroa.3.0.copyload = load i64, i64* %tmpv.30.sroa.3.0.cast.44.sroa_idx6, align 8
  %tmpv.30.sroa.0.0.cast.44.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.40, i64 0, i64 %tmpv.28.018, i32 0
  %tmpv.30.sroa.0.0.copyload = load i32, i32* %tmpv.30.sroa.0.0.cast.44.sroa_idx, align 8
  %tmpv.31.sroa.0.0.cast.49.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.28.018, i32 0
  %tmpv.31.sroa.0.0.copyload = load i32, i32* %tmpv.31.sroa.0.0.cast.49.sroa_idx, align 8
  %tmpv.31.sroa.3.0.cast.49.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.28.018, i32 1
  %tmpv.31.sroa.3.0.copyload = load i64, i64* %tmpv.31.sroa.3.0.cast.49.sroa_idx4, align 8
  %tmpv.31.sroa.4.0.cast.49.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.28.018, i32 2
  %tmpv.31.sroa.4.0.copyload = load i64, i64* %tmpv.31.sroa.4.0.cast.49.sroa_idx5, align 8
  %icmp.18 = icmp eq i32 %tmpv.30.sroa.0.0.copyload, %tmpv.31.sroa.0.0.copyload
  %icmp.19 = icmp eq i64 %tmpv.30.sroa.3.0.copyload, %tmpv.31.sroa.3.0.copyload
  %tmpv.37.0.in = select i1 %icmp.18, i1 %icmp.19, i1 false
  %icmp.20 = icmp eq i64 %tmpv.30.sroa.4.0.copyload, %tmpv.31.sroa.4.0.copyload
  %tmpv.38.0.in = select i1 %tmpv.37.0.in, i1 %icmp.20, i1 false
  br i1 %tmpv.38.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.23 = icmp eq i8* %key1, null
  br i1 %icmp.23, label %then.20, label %else.20, !make.implicit !3

then.20:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.20:                                          ; preds = %entry
  %icmp.24 = icmp eq i8* %key2, null
  br i1 %icmp.24, label %then.21, label %else.21, !make.implicit !3

then.21:                                          ; preds = %else.20
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.21:                                          ; preds = %else.20
  %field.21 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.21, align 4
  %field.22 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.22, align 4
  %icmp.25.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.25.not, label %else.24, label %common.ret

common.ret:                                       ; preds = %else.27, %else.24, %else.21
  %common.ret.op = phi i8 [ 0, %else.21 ], [ 0, %else.24 ], [ %., %else.27 ]
  ret i8 %common.ret.op

else.24:                                          ; preds = %else.21
  %field.23 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.23 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.24 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.24 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.28.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.28.not, label %else.27, label %common.ret

else.27:                                          ; preds = %else.24
  %field.25 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.25 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.26 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.26 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.31.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.31.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.4
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.5
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.8
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.60 = bitcast i8* %key1 to [33 x double]*
  %cast.61 = bitcast i8* %key2 to [33 x double]*
  %icmp.36 = icmp eq i8* %key1, null
  br i1 %icmp.36, label %then.31.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.37 = icmp eq i8* %key2, null
  br i1 %icmp.37, label %then.32.split, label %then.34, !make.implicit !3

label.0:                                          ; preds = %then.34
  %add.1 = add nuw nsw i64 %tmpv.55.011, 1
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.60, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.3.1, align 8
  %index.4.1 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.4.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.55.011, 2
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.60, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.3.2, align 8
  %index.4.2 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.4.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.55.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.34

then.31.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.32.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.34, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.34 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.34:                                          ; preds = %label.0.2, %entry.split
  %tmpv.55.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.60, i64 0, i64 %tmpv.55.011
  %.index.ld.0 = load double, double* %index.3, align 8
  %index.4 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %tmpv.55.011
  %.index.ld.1 = load double, double* %index.4, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.9
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.10
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.15
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.64 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.65 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.43 = icmp eq i8* %key1, null
  br i1 %icmp.43, label %then.37.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.44 = icmp eq i8* %key2, null
  br i1 %icmp.44, label %then.38.split, label %then.42, !make.implicit !3

then.37.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.38.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.39:                                          ; preds = %then.42
  %icmp.46 = icmp eq i8* %tmpv.71.sroa.0.0.copyload, %tmpv.73.sroa.0.0.copyload
  br i1 %icmp.46, label %else.41, label %fallthrough.39

fallthrough.39:                                   ; preds = %then.39
  %call.16 = call i32 @memcmp(i8* %tmpv.71.sroa.0.0.copyload, i8* %tmpv.73.sroa.0.0.copyload, i64 %tmpv.71.sroa.3.0.copyload)
  %icmp.47 = icmp eq i32 %call.16, 0
  br i1 %icmp.47, label %else.41, label %common.ret

common.ret:                                       ; preds = %then.42, %else.41, %fallthrough.39
  %common.ret.op = phi i8 [ 0, %fallthrough.39 ], [ 1, %else.41 ], [ 0, %then.42 ]
  ret i8 %common.ret.op

else.41:                                          ; preds = %fallthrough.39, %then.39
  %add.2 = add nuw nsw i64 %tmpv.69.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.42

then.42:                                          ; preds = %else.41, %entry.split
  %tmpv.69.019 = phi i64 [ %add.2, %else.41 ], [ 0, %entry.split ]
  %tmpv.71.sroa.0.0.cast.68.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.64, i64 0, i64 %tmpv.69.019, i32 0
  %tmpv.71.sroa.0.0.copyload = load i8*, i8** %tmpv.71.sroa.0.0.cast.68.sroa_idx, align 8
  %tmpv.71.sroa.3.0.cast.68.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.64, i64 0, i64 %tmpv.69.019, i32 1
  %tmpv.71.sroa.3.0.copyload = load i64, i64* %tmpv.71.sroa.3.0.cast.68.sroa_idx3, align 8
  %tmpv.73.sroa.0.0.cast.71.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.65, i64 0, i64 %tmpv.69.019, i32 0
  %tmpv.73.sroa.0.0.copyload = load i8*, i8** %tmpv.73.sroa.0.0.cast.71.sroa_idx, align 8
  %tmpv.73.sroa.3.0.cast.71.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.65, i64 0, i64 %tmpv.69.019, i32 1
  %tmpv.73.sroa.3.0.copyload = load i64, i64* %tmpv.73.sroa.3.0.cast.71.sroa_idx1, align 8
  %icmp.45 = icmp eq i64 %tmpv.71.sroa.3.0.copyload, %tmpv.73.sroa.3.0.copyload
  br i1 %icmp.45, label %then.39, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.17
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.30, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.18
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.31, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.32, i8* readonly %key1, i8* readonly %key2) #3 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.20
}

define void @__go_init_main(i8* nest nocapture readnone %nest.33) local_unnamed_addr #0 {
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
  call void @main.Escape(i8* nest undef, %__go_descriptor.1* bitcast (%functionDescriptor.0* @main.main..func1..f to %__go_descriptor.1*))
  ret void
}

define internal void @main.main..func1(i8* nest nocapture readnone %nest.1) #0 {
entry:
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printint(i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
