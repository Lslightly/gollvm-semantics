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
module asm "\09.ascii \22types 5 1\22"
module asm "\09.ascii \22 20\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 17\22"
module asm "\09.ascii \22 19\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 (? <type 3>)\\ntype 2 (? <type -16>)\\ntype 3 *<type 4>\\ntype 4 *<type -11>\\n\22"
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
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22f\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22a\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 3>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22checksum 12D3C4731DAC6A3989E9F963F08BA6C41DB24F6F\\n\22"
module asm "\09.text"

%PtrType.0 = type { %_type.0, %_type.0* }
%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%functionDescriptor.0 = type { i64 }

$int..p = comdat any

$gcbits..ba = comdat any

$int..d = comdat any

@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C1, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.0 = private constant [5 x i8] c"*int\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.0, i32 0, i32 0), i64 4 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C2, %uncommonType.0* @go..C5, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.1 = private constant [4 x i8] c"int\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.1, i32 0, i32 0), i64 3 }
@go..C4 = internal constant [1 x %method.0] zeroinitializer
@go..C5 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C3, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C4, i32 0, i32 0), i64 0, i64 0 } }
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@const.2 = private constant [305 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09-gccgoflags=-fno-go-optimize-allocs\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @const.2, i64 0, i64 0), i64 304)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.8 = icmp eq i8* %key1, null
  br i1 %icmp.8, label %then.9, label %else.9, !make.implicit !3

then.9:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.9:                                           ; preds = %entry
  %icmp.9 = icmp eq i8* %key2, null
  br i1 %icmp.9, label %then.10, label %else.10, !make.implicit !3

then.10:                                          ; preds = %else.9
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.10:                                          ; preds = %else.9
  %tmpv.17.sroa.0.0.cast.26.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.17.sroa.0.0.copyload = load i64, i64* %tmpv.17.sroa.0.0.cast.26.sroa_idx, align 8
  %tmpv.18.sroa.0.0.cast.31.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.18.sroa.0.0.copyload = load i64, i64* %tmpv.18.sroa.0.0.cast.31.sroa_idx, align 8
  %icmp.10.not = icmp eq i64 %tmpv.17.sroa.0.0.copyload, %tmpv.18.sroa.0.0.copyload
  br i1 %icmp.10.not, label %else.13, label %common.ret

common.ret:                                       ; preds = %else.13, %else.10
  %common.ret.op = phi i8 [ 0, %else.10 ], [ %., %else.13 ]
  ret i8 %common.ret.op

else.13:                                          ; preds = %else.10
  %field.8 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.8 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.9 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.9 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.14.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.14.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.5
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.6
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.36 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.37 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.17 = icmp eq i8* %key1, null
  br i1 %icmp.17, label %then.17.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.20 = icmp eq i8* %key2, null
  br i1 %icmp.20, label %then.19.split, label %then.23, !make.implicit !3

label.0:                                          ; preds = %then.23
  %add.0 = add nuw nsw i64 %tmpv.31.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.23

then.17.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.19.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.23, %label.0
  %common.ret.op = phi i8 [ 0, %then.23 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.23:                                          ; preds = %label.0, %entry.split
  %tmpv.31.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.33.sroa.4.0.cast.40.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.36, i64 0, i64 %tmpv.31.018, i32 2
  %tmpv.33.sroa.4.0.copyload = load i64, i64* %tmpv.33.sroa.4.0.cast.40.sroa_idx7, align 8
  %tmpv.33.sroa.3.0.cast.40.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.36, i64 0, i64 %tmpv.31.018, i32 1
  %tmpv.33.sroa.3.0.copyload = load i64, i64* %tmpv.33.sroa.3.0.cast.40.sroa_idx6, align 8
  %tmpv.33.sroa.0.0.cast.40.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.36, i64 0, i64 %tmpv.31.018, i32 0
  %tmpv.33.sroa.0.0.copyload = load i32, i32* %tmpv.33.sroa.0.0.cast.40.sroa_idx, align 8
  %tmpv.34.sroa.0.0.cast.45.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.37, i64 0, i64 %tmpv.31.018, i32 0
  %tmpv.34.sroa.0.0.copyload = load i32, i32* %tmpv.34.sroa.0.0.cast.45.sroa_idx, align 8
  %tmpv.34.sroa.3.0.cast.45.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.37, i64 0, i64 %tmpv.31.018, i32 1
  %tmpv.34.sroa.3.0.copyload = load i64, i64* %tmpv.34.sroa.3.0.cast.45.sroa_idx4, align 8
  %tmpv.34.sroa.4.0.cast.45.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.37, i64 0, i64 %tmpv.31.018, i32 2
  %tmpv.34.sroa.4.0.copyload = load i64, i64* %tmpv.34.sroa.4.0.cast.45.sroa_idx5, align 8
  %icmp.21 = icmp eq i32 %tmpv.33.sroa.0.0.copyload, %tmpv.34.sroa.0.0.copyload
  %icmp.22 = icmp eq i64 %tmpv.33.sroa.3.0.copyload, %tmpv.34.sroa.3.0.copyload
  %tmpv.40.0.in = select i1 %icmp.21, i1 %icmp.22, i1 false
  %icmp.23 = icmp eq i64 %tmpv.33.sroa.4.0.copyload, %tmpv.34.sroa.4.0.copyload
  %tmpv.41.0.in = select i1 %tmpv.40.0.in, i1 %icmp.23, i1 false
  br i1 %tmpv.41.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.26 = icmp eq i8* %key1, null
  br i1 %icmp.26, label %then.24, label %else.24, !make.implicit !3

then.24:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.24:                                          ; preds = %entry
  %icmp.27 = icmp eq i8* %key2, null
  br i1 %icmp.27, label %then.25, label %else.25, !make.implicit !3

then.25:                                          ; preds = %else.24
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.25:                                          ; preds = %else.24
  %field.16 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.16, align 4
  %field.17 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.17, align 4
  %icmp.28.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.28.not, label %else.28, label %common.ret

common.ret:                                       ; preds = %else.31, %else.28, %else.25
  %common.ret.op = phi i8 [ 0, %else.25 ], [ 0, %else.28 ], [ %., %else.31 ]
  ret i8 %common.ret.op

else.28:                                          ; preds = %else.25
  %field.18 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.18 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.19 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.19 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.31.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.31.not, label %else.31, label %common.ret

else.31:                                          ; preds = %else.28
  %field.20 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.20 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.21 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.21 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.34.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.34.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.9
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.10
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.11
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.56 = bitcast i8* %key1 to [33 x double]*
  %cast.57 = bitcast i8* %key2 to [33 x double]*
  %icmp.39 = icmp eq i8* %key1, null
  br i1 %icmp.39, label %then.35.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.40 = icmp eq i8* %key2, null
  br i1 %icmp.40, label %then.36.split, label %then.38, !make.implicit !3

label.0:                                          ; preds = %then.38
  %add.1 = add nuw nsw i64 %tmpv.58.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.56, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.57, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.58.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.56, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.57, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.58.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.38

then.35.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.36.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.38, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.38 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.38:                                          ; preds = %label.0.2, %entry.split
  %tmpv.58.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.56, i64 0, i64 %tmpv.58.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.57, i64 0, i64 %tmpv.58.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.16
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.17
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.18
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.60 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.61 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.46 = icmp eq i8* %key1, null
  br i1 %icmp.46, label %then.41.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.47 = icmp eq i8* %key2, null
  br i1 %icmp.47, label %then.42.split, label %then.46, !make.implicit !3

then.41.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.42.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.43:                                          ; preds = %then.46
  %icmp.49 = icmp eq i8* %tmpv.74.sroa.0.0.copyload, %tmpv.76.sroa.0.0.copyload
  br i1 %icmp.49, label %else.45, label %fallthrough.43

fallthrough.43:                                   ; preds = %then.43
  %call.19 = call i32 @memcmp(i8* %tmpv.74.sroa.0.0.copyload, i8* %tmpv.76.sroa.0.0.copyload, i64 %tmpv.74.sroa.3.0.copyload)
  %icmp.50 = icmp eq i32 %call.19, 0
  br i1 %icmp.50, label %else.45, label %common.ret

common.ret:                                       ; preds = %then.46, %else.45, %fallthrough.43
  %common.ret.op = phi i8 [ 0, %fallthrough.43 ], [ 1, %else.45 ], [ 0, %then.46 ]
  ret i8 %common.ret.op

else.45:                                          ; preds = %fallthrough.43, %then.43
  %add.2 = add nuw nsw i64 %tmpv.72.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.46

then.46:                                          ; preds = %else.45, %entry.split
  %tmpv.72.019 = phi i64 [ %add.2, %else.45 ], [ 0, %entry.split ]
  %tmpv.74.sroa.0.0.cast.64.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.60, i64 0, i64 %tmpv.72.019, i32 0
  %tmpv.74.sroa.0.0.copyload = load i8*, i8** %tmpv.74.sroa.0.0.cast.64.sroa_idx, align 8
  %tmpv.74.sroa.3.0.cast.64.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.60, i64 0, i64 %tmpv.72.019, i32 1
  %tmpv.74.sroa.3.0.copyload = load i64, i64* %tmpv.74.sroa.3.0.cast.64.sroa_idx3, align 8
  %tmpv.76.sroa.0.0.cast.67.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.61, i64 0, i64 %tmpv.72.019, i32 0
  %tmpv.76.sroa.0.0.copyload = load i8*, i8** %tmpv.76.sroa.0.0.cast.67.sroa_idx, align 8
  %tmpv.76.sroa.3.0.cast.67.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.61, i64 0, i64 %tmpv.72.019, i32 1
  %tmpv.76.sroa.3.0.copyload = load i64, i64* %tmpv.76.sroa.3.0.cast.67.sroa_idx1, align 8
  %icmp.48 = icmp eq i64 %tmpv.74.sroa.3.0.copyload, %tmpv.76.sroa.3.0.copyload
  br i1 %icmp.48, label %then.43, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.21
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.22 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.22
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.23 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.23
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
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %call.1 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.5 = bitcast i8* %call.1 to i64*
  store i64 1, i64* %cast.5, align 8
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.1 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.1, label %else.1, label %else.0

fallthrough.0:                                    ; preds = %else.1, %else.0
  %cast.4 = bitcast i8* %call.0 to i64**
  call void @main.f(i8* nest undef, i64** nonnull %cast.4)
  ret void

else.0:                                           ; preds = %entry
  %pticast.0 = ptrtoint i8* %call.1 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.0, i64 %pticast.0)
  br label %fallthrough.0

else.1:                                           ; preds = %entry
  %0 = bitcast i8* %call.0 to i8**
  store i8* %call.1, i8** %0, align 8
  br label %fallthrough.0
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

; Function Attrs: noinline
define void @main.f(i8* nest nocapture readnone %nest.1, i64** %a) local_unnamed_addr #5 {
entry:
  %call.2 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %deref.ld.1 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.1, 0
  br i1 %icmp.3, label %then.2, label %else.2

then.2:                                           ; preds = %entry
  %icmp.2 = icmp eq i64** %a, null
  br i1 %icmp.2, label %then.3, label %else.3, !make.implicit !3

fallthrough.2:                                    ; preds = %else.3, %else.2
  ret void

else.2:                                           ; preds = %entry
  %cast.12 = bitcast i64** %a to i8*
  %pticast.1 = ptrtoint i8* %call.2 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.12, i64 %pticast.1)
  br label %fallthrough.2

then.3:                                           ; preds = %then.2
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.3:                                           ; preds = %then.2
  %0 = bitcast i64** %a to i8**
  store i8* %call.2, i8** %0, align 8
  br label %fallthrough.2
}

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #6

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { noinline "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "gc-leaf-function" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
