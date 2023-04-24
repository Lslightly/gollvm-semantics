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

$int..d = comdat any

$int..p = comdat any

$gcbits..ba = comdat any

@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C1, %uncommonType.0* @go..C4, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@const.1 = private constant [4 x i8] c"int\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C3 = internal constant [1 x %method.0] zeroinitializer
@go..C4 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C2, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C3, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C5, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.2 = private constant [5 x i8] c"*int\00", align 1
@go..C5 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.2, i32 0, i32 0), i64 4 }
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@const.3 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [1 x i8*] } { i64 1, [1 x i8*] [i8* bitcast (%PtrType.0* @int..p to i8*)] }
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
@go..typelists = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* @main..types]

define void @main.main..init0(i8* nest nocapture readnone %nest.2) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.3, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.29 = icmp eq i8* %key1, null
  br i1 %icmp.29, label %then.26, label %else.26, !make.implicit !3

then.26:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.26:                                          ; preds = %entry
  %icmp.30 = icmp eq i8* %key2, null
  br i1 %icmp.30, label %then.27, label %else.27, !make.implicit !3

then.27:                                          ; preds = %else.26
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.27:                                          ; preds = %else.26
  %tmpv.56.sroa.0.0.cast.65.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.56.sroa.0.0.copyload = load i64, i64* %tmpv.56.sroa.0.0.cast.65.sroa_idx, align 8
  %tmpv.57.sroa.0.0.cast.70.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.57.sroa.0.0.copyload = load i64, i64* %tmpv.57.sroa.0.0.cast.70.sroa_idx, align 8
  %icmp.31.not = icmp eq i64 %tmpv.56.sroa.0.0.copyload, %tmpv.57.sroa.0.0.copyload
  br i1 %icmp.31.not, label %else.30, label %common.ret

common.ret:                                       ; preds = %else.30, %else.27
  %common.ret.op = phi i8 [ 0, %else.27 ], [ %., %else.30 ]
  ret i8 %common.ret.op

else.30:                                          ; preds = %else.27
  %field.67 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.67 to i32*
  %.field.ld.5 = load i32, i32* %0, align 4
  %field.68 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.68 to i32*
  %.field.ld.6 = load i32, i32* %1, align 4
  %icmp.35.not = icmp eq i32 %.field.ld.5, %.field.ld.6
  %. = zext i1 %icmp.35.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

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
  %cast.75 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.76 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.38 = icmp eq i8* %key1, null
  br i1 %icmp.38, label %then.34.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.41 = icmp eq i8* %key2, null
  br i1 %icmp.41, label %then.36.split, label %then.40, !make.implicit !3

label.0:                                          ; preds = %then.40
  %add.7 = add nuw nsw i64 %tmpv.70.018, 1
  %exitcond.not = icmp eq i64 %add.7, 61
  br i1 %exitcond.not, label %common.ret, label %then.40

then.34.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.36.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.40, %label.0
  %common.ret.op = phi i8 [ 0, %then.40 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.40:                                          ; preds = %label.0, %entry.split
  %tmpv.70.018 = phi i64 [ %add.7, %label.0 ], [ 0, %entry.split ]
  %tmpv.72.sroa.4.0.cast.79.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.75, i64 0, i64 %tmpv.70.018, i32 2
  %tmpv.72.sroa.4.0.copyload = load i64, i64* %tmpv.72.sroa.4.0.cast.79.sroa_idx7, align 8
  %tmpv.72.sroa.3.0.cast.79.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.75, i64 0, i64 %tmpv.70.018, i32 1
  %tmpv.72.sroa.3.0.copyload = load i64, i64* %tmpv.72.sroa.3.0.cast.79.sroa_idx6, align 8
  %tmpv.72.sroa.0.0.cast.79.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.75, i64 0, i64 %tmpv.70.018, i32 0
  %tmpv.72.sroa.0.0.copyload = load i32, i32* %tmpv.72.sroa.0.0.cast.79.sroa_idx, align 8
  %tmpv.73.sroa.0.0.cast.84.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.70.018, i32 0
  %tmpv.73.sroa.0.0.copyload = load i32, i32* %tmpv.73.sroa.0.0.cast.84.sroa_idx, align 8
  %tmpv.73.sroa.3.0.cast.84.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.70.018, i32 1
  %tmpv.73.sroa.3.0.copyload = load i64, i64* %tmpv.73.sroa.3.0.cast.84.sroa_idx4, align 8
  %tmpv.73.sroa.4.0.cast.84.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.76, i64 0, i64 %tmpv.70.018, i32 2
  %tmpv.73.sroa.4.0.copyload = load i64, i64* %tmpv.73.sroa.4.0.cast.84.sroa_idx5, align 8
  %icmp.42 = icmp eq i32 %tmpv.72.sroa.0.0.copyload, %tmpv.73.sroa.0.0.copyload
  %icmp.43 = icmp eq i64 %tmpv.72.sroa.3.0.copyload, %tmpv.73.sroa.3.0.copyload
  %tmpv.79.0.in = select i1 %icmp.42, i1 %icmp.43, i1 false
  %icmp.44 = icmp eq i64 %tmpv.72.sroa.4.0.copyload, %tmpv.73.sroa.4.0.copyload
  %tmpv.80.0.in = select i1 %tmpv.79.0.in, i1 %icmp.44, i1 false
  br i1 %tmpv.80.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.47 = icmp eq i8* %key1, null
  br i1 %icmp.47, label %then.41, label %else.41, !make.implicit !3

then.41:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.41:                                          ; preds = %entry
  %icmp.48 = icmp eq i8* %key2, null
  br i1 %icmp.48, label %then.42, label %else.42, !make.implicit !3

then.42:                                          ; preds = %else.41
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.42:                                          ; preds = %else.41
  %field.75 = bitcast i8* %key1 to i32*
  %.field.ld.7 = load i32, i32* %field.75, align 4
  %field.76 = bitcast i8* %key2 to i32*
  %.field.ld.8 = load i32, i32* %field.76, align 4
  %icmp.49.not = icmp eq i32 %.field.ld.7, %.field.ld.8
  br i1 %icmp.49.not, label %else.45, label %common.ret

common.ret:                                       ; preds = %else.48, %else.45, %else.42
  %common.ret.op = phi i8 [ 0, %else.42 ], [ 0, %else.45 ], [ %., %else.48 ]
  ret i8 %common.ret.op

else.45:                                          ; preds = %else.42
  %field.77 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.77 to i64*
  %.field.ld.9 = load i64, i64* %0, align 8
  %field.78 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.78 to i64*
  %.field.ld.10 = load i64, i64* %1, align 8
  %icmp.52.not = icmp eq i64 %.field.ld.9, %.field.ld.10
  br i1 %icmp.52.not, label %else.48, label %common.ret

else.48:                                          ; preds = %else.45
  %field.79 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.79 to i64*
  %.field.ld.11 = load i64, i64* %2, align 8
  %field.80 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.80 to i64*
  %.field.ld.12 = load i64, i64* %3, align 8
  %icmp.55.not = icmp eq i64 %.field.ld.11, %.field.ld.12
  %. = zext i1 %icmp.55.not to i8
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
  %cast.95 = bitcast i8* %key1 to [33 x double]*
  %cast.96 = bitcast i8* %key2 to [33 x double]*
  %icmp.60 = icmp eq i8* %key1, null
  br i1 %icmp.60, label %then.52.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.61 = icmp eq i8* %key2, null
  br i1 %icmp.61, label %then.53.split, label %then.55, !make.implicit !3

label.0:                                          ; preds = %then.55
  %add.8 = add nuw nsw i64 %tmpv.97.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.95, i64 0, i64 %add.8
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %add.8
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.8.1 = add nuw nsw i64 %tmpv.97.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.95, i64 0, i64 %add.8.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %add.8.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.8.2 = add nuw nsw i64 %tmpv.97.011, 3
  %exitcond.not.2 = icmp eq i64 %add.8.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.55

then.52.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.53.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.55, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.55 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.55:                                          ; preds = %label.0.2, %entry.split
  %tmpv.97.011 = phi i64 [ %add.8.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.95, i64 0, i64 %tmpv.97.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.96, i64 0, i64 %tmpv.97.011
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
  %cast.99 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.100 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.67 = icmp eq i8* %key1, null
  br i1 %icmp.67, label %then.58.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.68 = icmp eq i8* %key2, null
  br i1 %icmp.68, label %then.59.split, label %then.63, !make.implicit !3

then.58.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.59.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.60:                                          ; preds = %then.63
  %icmp.70 = icmp eq i8* %tmpv.113.sroa.0.0.copyload, %tmpv.115.sroa.0.0.copyload
  br i1 %icmp.70, label %else.62, label %fallthrough.60

fallthrough.60:                                   ; preds = %then.60
  %call.18 = call i32 @memcmp(i8* %tmpv.113.sroa.0.0.copyload, i8* %tmpv.115.sroa.0.0.copyload, i64 %tmpv.113.sroa.3.0.copyload)
  %icmp.71 = icmp eq i32 %call.18, 0
  br i1 %icmp.71, label %else.62, label %common.ret

common.ret:                                       ; preds = %then.63, %else.62, %fallthrough.60
  %common.ret.op = phi i8 [ 0, %fallthrough.60 ], [ 1, %else.62 ], [ 0, %then.63 ]
  ret i8 %common.ret.op

else.62:                                          ; preds = %fallthrough.60, %then.60
  %add.9 = add nuw nsw i64 %tmpv.111.019, 1
  %exitcond.not = icmp eq i64 %add.9, 27
  br i1 %exitcond.not, label %common.ret, label %then.63

then.63:                                          ; preds = %else.62, %entry.split
  %tmpv.111.019 = phi i64 [ %add.9, %else.62 ], [ 0, %entry.split ]
  %tmpv.113.sroa.0.0.cast.103.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.99, i64 0, i64 %tmpv.111.019, i32 0
  %tmpv.113.sroa.0.0.copyload = load i8*, i8** %tmpv.113.sroa.0.0.cast.103.sroa_idx, align 8
  %tmpv.113.sroa.3.0.cast.103.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.99, i64 0, i64 %tmpv.111.019, i32 1
  %tmpv.113.sroa.3.0.copyload = load i64, i64* %tmpv.113.sroa.3.0.cast.103.sroa_idx3, align 8
  %tmpv.115.sroa.0.0.cast.106.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.100, i64 0, i64 %tmpv.111.019, i32 0
  %tmpv.115.sroa.0.0.copyload = load i8*, i8** %tmpv.115.sroa.0.0.cast.106.sroa_idx, align 8
  %tmpv.115.sroa.3.0.cast.106.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.100, i64 0, i64 %tmpv.111.019, i32 1
  %tmpv.115.sroa.3.0.copyload = load i64, i64* %tmpv.115.sroa.3.0.cast.106.sroa_idx1, align 8
  %icmp.69 = icmp eq i64 %tmpv.113.sroa.3.0.copyload, %tmpv.115.sroa.3.0.copyload
  br i1 %icmp.69, label %then.60, label %common.ret
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

define void @main.main(i8* nest nocapture readnone %nest.0) local_unnamed_addr #0 {
entry:
  %tmpv.0 = alloca [20 x i64*], align 8, !go_addrtaken !3
  %sret.actual.0 = alloca { i8**, i64, i64 }, align 8
  %sret.actual.1 = alloca { i8**, i64, i64 }, align 8
  %sret.actual.2 = alloca { i8**, i64, i64 }, align 8
  %cast.0 = bitcast [20 x i64*]* %tmpv.0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %cast.0, i8 0, i64 160, i1 false)
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.5 = bitcast i8* %call.0 to i64*
  store i64 100, i64* %cast.5, align 8
  %ptroff.0 = getelementptr inbounds [20 x i64*], [20 x i64*]* %tmpv.0, i64 0, i64 10
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.3, label %else.2, label %else.1

fallthrough.1:                                    ; preds = %else.2, %else.1
  %.ld.1 = phi i64 [ %phi.bo, %else.1 ], [ 105, %else.2 ]
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 %.ld.1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  %.ptroff.ld.0 = load i64*, i64** %ptroff.0, align 8
  %icmp.6 = icmp eq i64* %.ptroff.ld.0, null
  br i1 %icmp.6, label %then.4, label %else.4, !make.implicit !3

else.1:                                           ; preds = %entry
  %cast.7 = bitcast i64** %ptroff.0 to i8*
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %cast.7, i64 %pticast.0)
  %.ld.1.pre = load i64, i64* %cast.5, align 8
  %phi.bo = add i64 %.ld.1.pre, 5
  br label %fallthrough.1

else.2:                                           ; preds = %entry
  %0 = bitcast i64** %ptroff.0 to i8**
  store i8* %call.0, i8** %0, align 8
  br label %fallthrough.1

then.4:                                           ; preds = %fallthrough.1
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.4:                                           ; preds = %fallthrough.1
  %.ld.3 = load i64, i64* %.ptroff.ld.0, align 8
  store i64 %.ld.3, i64* %cast.5, align 8
  call void @runtime.growslice({ i8**, i64, i64 }* nonnull sret({ i8**, i64, i64 }) "go_sret" %sret.actual.0, i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* nonnull %cast.0, i64 20, i64 20, i64 21)
  %s.sroa.0.0.cast.16.sroa_idx = bitcast { i8**, i64, i64 }* %sret.actual.0 to i64***
  %s.sroa.0.0.copyload = load i64**, i64*** %s.sroa.0.0.cast.16.sroa_idx, align 8
  %1 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.0, i64 0, i32 1
  %s.sroa.20.0.copyload = load i64, i64* %1, align 8
  %2 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.0, i64 0, i32 2
  %s.sroa.35.0.copyload = load i64, i64* %2, align 8
  %ptroff.3 = getelementptr i64*, i64** %s.sroa.0.0.copyload, i64 20
  %deref.ld.1 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.10 = icmp eq i32 %deref.ld.1, 0
  br i1 %icmp.10, label %then.7, label %else.7

then.7:                                           ; preds = %else.4
  %icmp.9 = icmp eq i64** %ptroff.3, null
  br i1 %icmp.9, label %then.8, label %else.8, !make.implicit !3

fallthrough.7:                                    ; preds = %else.8, %else.7
  %add.3 = add i64 %s.sroa.20.0.copyload, 2
  %icmp.12 = icmp ugt i64 %add.3, %s.sroa.35.0.copyload
  br i1 %icmp.12, label %then.9, label %fallthrough.9

else.7:                                           ; preds = %else.4
  %cast.20 = bitcast i64** %ptroff.3 to i8*
  %pticast.1 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.20, i64 %pticast.1)
  br label %fallthrough.7

then.8:                                           ; preds = %then.7
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.8:                                           ; preds = %then.7
  %3 = bitcast i64** %ptroff.3 to i8**
  store i8* %call.0, i8** %3, align 8
  br label %fallthrough.7

then.9:                                           ; preds = %fallthrough.7
  %cast.26 = bitcast i64** %s.sroa.0.0.copyload to i8*
  call void @runtime.growslice({ i8**, i64, i64 }* nonnull sret({ i8**, i64, i64 }) "go_sret" %sret.actual.1, i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.26, i64 %s.sroa.20.0.copyload, i64 %s.sroa.35.0.copyload, i64 %add.3)
  %s.sroa.0.0.cast.29.sroa_idx = bitcast { i8**, i64, i64 }* %sret.actual.1 to i64***
  %s.sroa.0.0.copyload55 = load i64**, i64*** %s.sroa.0.0.cast.29.sroa_idx, align 8
  %4 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.1, i64 0, i32 1
  %s.sroa.20.0.copyload60 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.1, i64 0, i32 2
  %s.sroa.35.0.copyload66 = load i64, i64* %5, align 8
  br label %fallthrough.9

fallthrough.9:                                    ; preds = %then.9, %fallthrough.7
  %s.sroa.0.1 = phi i64** [ %s.sroa.0.0.copyload55, %then.9 ], [ %s.sroa.0.0.copyload, %fallthrough.7 ]
  %s.sroa.20.1 = phi i64 [ %s.sroa.20.0.copyload60, %then.9 ], [ %add.3, %fallthrough.7 ]
  %s.sroa.35.1 = phi i64 [ %s.sroa.35.0.copyload66, %then.9 ], [ %s.sroa.35.0.copyload, %fallthrough.7 ]
  %ptroff.5 = getelementptr i64*, i64** %s.sroa.0.1, i64 %s.sroa.20.0.copyload
  %deref.ld.2 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.14 = icmp eq i32 %deref.ld.2, 0
  br i1 %icmp.14, label %then.11, label %else.11

then.11:                                          ; preds = %fallthrough.9
  %icmp.13 = icmp eq i64** %ptroff.5, null
  br i1 %icmp.13, label %then.12, label %else.12, !make.implicit !3

fallthrough.11:                                   ; preds = %else.12, %else.11
  %add.5 = add i64 %s.sroa.20.0.copyload, 1
  %ptroff.6 = getelementptr i64*, i64** %s.sroa.0.1, i64 %add.5
  %deref.ld.3 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.16 = icmp eq i32 %deref.ld.3, 0
  br i1 %icmp.16, label %then.13, label %else.13

else.11:                                          ; preds = %fallthrough.9
  %cast.33 = bitcast i64** %ptroff.5 to i8*
  %pticast.2 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.33, i64 %pticast.2)
  br label %fallthrough.11

then.12:                                          ; preds = %then.11
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.12:                                          ; preds = %then.11
  %6 = bitcast i64** %ptroff.5 to i8**
  store i8* %call.0, i8** %6, align 8
  br label %fallthrough.11

then.13:                                          ; preds = %fallthrough.11
  %icmp.15 = icmp eq i64** %ptroff.6, null
  br i1 %icmp.15, label %then.14, label %else.14, !make.implicit !3

fallthrough.13:                                   ; preds = %else.14, %else.13
  %add.6 = shl i64 %s.sroa.20.1, 1
  %icmp.18 = icmp ugt i64 %add.6, %s.sroa.35.1
  br i1 %icmp.18, label %then.15, label %fallthrough.15

else.13:                                          ; preds = %fallthrough.11
  %cast.37 = bitcast i64** %ptroff.6 to i8*
  %pticast.3 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.37, i64 %pticast.3)
  br label %fallthrough.13

then.14:                                          ; preds = %then.13
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.14:                                          ; preds = %then.13
  %7 = bitcast i64** %ptroff.6 to i8**
  store i8* %call.0, i8** %7, align 8
  br label %fallthrough.13

then.15:                                          ; preds = %fallthrough.13
  %cast.45 = bitcast i64** %s.sroa.0.1 to i8*
  call void @runtime.growslice({ i8**, i64, i64 }* nonnull sret({ i8**, i64, i64 }) "go_sret" %sret.actual.2, i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.45, i64 %s.sroa.20.1, i64 %s.sroa.35.1, i64 %add.6)
  %s.sroa.0.0.cast.48.sroa_idx = bitcast { i8**, i64, i64 }* %sret.actual.2 to i64***
  %s.sroa.0.0.copyload56 = load i64**, i64*** %s.sroa.0.0.cast.48.sroa_idx, align 8
  %8 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.2, i64 0, i32 1
  %s.sroa.20.0.copyload62 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.2, i64 0, i32 2
  %s.sroa.35.0.copyload68 = load i64, i64* %9, align 8
  br label %fallthrough.15

fallthrough.15:                                   ; preds = %then.15, %fallthrough.13
  %s.sroa.0.2 = phi i64** [ %s.sroa.0.0.copyload56, %then.15 ], [ %s.sroa.0.1, %fallthrough.13 ]
  %s.sroa.20.2 = phi i64 [ %s.sroa.20.0.copyload62, %then.15 ], [ %add.6, %fallthrough.13 ]
  %s.sroa.35.2 = phi i64 [ %s.sroa.35.0.copyload68, %then.15 ], [ %s.sroa.35.1, %fallthrough.13 ]
  %cast.53.pre-phi = bitcast i64** %s.sroa.0.1 to i8*
  %icmp.19 = icmp eq i64 %s.sroa.35.2, %s.sroa.20.1
  %.s.sroa.20.1 = select i1 %icmp.19, i64 0, i64 %s.sroa.20.1
  %ptroff.8 = getelementptr i64*, i64** %s.sroa.0.2, i64 %.s.sroa.20.1
  %sub.10 = sub i64 %s.sroa.20.2, %s.sroa.20.1
  %cast.52 = bitcast i64** %ptroff.8 to i8*
  %call.1 = call i64 @runtime.typedslicecopy(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.52, i64 %sub.10, i8* %cast.53.pre-phi, i64 %s.sroa.20.1)
  %icmp.21 = icmp sgt i64 %s.sroa.35.2, 3
  br i1 %icmp.21, label %else.20, label %else.18

else.18:                                          ; preds = %fallthrough.15
  call void @runtime.goPanicSliceAcap(i8* nest undef, i64 4, i64 %s.sroa.35.2)
  unreachable

else.20:                                          ; preds = %fallthrough.15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printint(i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: cold
declare void @runtime.growslice({ i8**, i64, i64 }*, i8*, %_type.0*, i8*, i64, i64, i64) local_unnamed_addr #7

declare i64 @runtime.typedslicecopy(i8*, %_type.0*, i8*, i64, i8*, i64) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @runtime.goPanicSliceAcap(i8*, i64, i64) local_unnamed_addr #1

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "gc-leaf-function" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
