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
module asm "\09.ascii \22 33\22"
module asm "\09.ascii \22 21\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 12\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 \\\22unsafe.Pointer\\\22 <type 4>\\ntype 2 () <type -13>\\ntype 3 (? <type -16>)\\ntype 4 *any\\n\22"
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
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22$ret0\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type -13>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 <inl:213>\\n\22"
module asm "\09.ascii \22 // /home/lqw/semantic/gollvm-semantic/test/unsafeRetStackAddr.go:11\\n var a <type -11> = 1  //12\\n var b <type -13> = $convert(<type -13>, $convert(<type 1>, &a)) //13\\n { //14\\n  $ret0 = b //14\\n  return //14\\n } //0\\n\22"
module asm "\09.ascii \22checksum 39A447C60E9546634EFBB9D9EAB1B6059C52B147\\n\22"
module asm "\09.text"

%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%functionDescriptor.0 = type { i64 }

$gcbits..da = comdat any

@main.global = internal global { %_type.0*, i8* } zeroinitializer
@const.0 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [1 x i8*] } zeroinitializer
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
@gcbits..da = weak constant [1 x i8] c"\03", comdat
@go..C0 = internal global { i8*, i64, [1 x { i8*, i64, i64, i8* }] } { i8* null, i64 1, [1 x { i8*, i64, i64, i8* }] [{ i8*, i64, i64, i8* } { i8* bitcast ({ %_type.0*, i8* }* @main.global to i8*), i64 16, i64 16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..da, i32 0, i32 0) }] }

define void @main.main..init0(i8* nest nocapture readnone %nest.2) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.0, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.4 = icmp eq i8* %key1, null
  br i1 %icmp.4, label %then.5, label %else.5, !make.implicit !3

then.5:                                           ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.5:                                           ; preds = %entry
  %icmp.5 = icmp eq i8* %key2, null
  br i1 %icmp.5, label %then.6, label %else.6, !make.implicit !3

then.6:                                           ; preds = %else.5
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.6:                                           ; preds = %else.5
  %tmpv.9.sroa.0.0.cast.12.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.9.sroa.0.0.copyload = load i64, i64* %tmpv.9.sroa.0.0.cast.12.sroa_idx, align 8
  %tmpv.10.sroa.0.0.cast.17.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.10.sroa.0.0.copyload = load i64, i64* %tmpv.10.sroa.0.0.cast.17.sroa_idx, align 8
  %icmp.6.not = icmp eq i64 %tmpv.9.sroa.0.0.copyload, %tmpv.10.sroa.0.0.copyload
  br i1 %icmp.6.not, label %else.9, label %common.ret

common.ret:                                       ; preds = %else.9, %else.6
  %common.ret.op = phi i8 [ 0, %else.6 ], [ %., %else.9 ]
  ret i8 %common.ret.op

else.9:                                           ; preds = %else.6
  %field.8 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.8 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.9 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.9 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.10.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.10.not to i8
  br label %common.ret
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #1

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %nest.8, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.3 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.3
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %nest.9, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 2048)
  ret i8 %call.4
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.10, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.22 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.23 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.13 = icmp eq i8* %key1, null
  br i1 %icmp.13, label %then.13.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.16 = icmp eq i8* %key2, null
  br i1 %icmp.16, label %then.15.split, label %then.19, !make.implicit !3

label.0:                                          ; preds = %then.19
  %add.0 = add nuw nsw i64 %tmpv.23.018, 1
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
  %tmpv.23.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.25.sroa.4.0.cast.26.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.22, i64 0, i64 %tmpv.23.018, i32 2
  %tmpv.25.sroa.4.0.copyload = load i64, i64* %tmpv.25.sroa.4.0.cast.26.sroa_idx7, align 8
  %tmpv.25.sroa.3.0.cast.26.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.22, i64 0, i64 %tmpv.23.018, i32 1
  %tmpv.25.sroa.3.0.copyload = load i64, i64* %tmpv.25.sroa.3.0.cast.26.sroa_idx6, align 8
  %tmpv.25.sroa.0.0.cast.26.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.22, i64 0, i64 %tmpv.23.018, i32 0
  %tmpv.25.sroa.0.0.copyload = load i32, i32* %tmpv.25.sroa.0.0.cast.26.sroa_idx, align 8
  %tmpv.26.sroa.0.0.cast.31.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.23, i64 0, i64 %tmpv.23.018, i32 0
  %tmpv.26.sroa.0.0.copyload = load i32, i32* %tmpv.26.sroa.0.0.cast.31.sroa_idx, align 8
  %tmpv.26.sroa.3.0.cast.31.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.23, i64 0, i64 %tmpv.23.018, i32 1
  %tmpv.26.sroa.3.0.copyload = load i64, i64* %tmpv.26.sroa.3.0.cast.31.sroa_idx4, align 8
  %tmpv.26.sroa.4.0.cast.31.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.23, i64 0, i64 %tmpv.23.018, i32 2
  %tmpv.26.sroa.4.0.copyload = load i64, i64* %tmpv.26.sroa.4.0.cast.31.sroa_idx5, align 8
  %icmp.17 = icmp eq i32 %tmpv.25.sroa.0.0.copyload, %tmpv.26.sroa.0.0.copyload
  %icmp.18 = icmp eq i64 %tmpv.25.sroa.3.0.copyload, %tmpv.26.sroa.3.0.copyload
  %tmpv.32.0.in = select i1 %icmp.17, i1 %icmp.18, i1 false
  %icmp.19 = icmp eq i64 %tmpv.25.sroa.4.0.copyload, %tmpv.26.sroa.4.0.copyload
  %tmpv.33.0.in = select i1 %tmpv.32.0.in, i1 %icmp.19, i1 false
  br i1 %tmpv.33.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.22 = icmp eq i8* %key1, null
  br i1 %icmp.22, label %then.20, label %else.20, !make.implicit !3

then.20:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.20:                                          ; preds = %entry
  %icmp.23 = icmp eq i8* %key2, null
  br i1 %icmp.23, label %then.21, label %else.21, !make.implicit !3

then.21:                                          ; preds = %else.20
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.21:                                          ; preds = %else.20
  %field.16 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.16, align 4
  %field.17 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.17, align 4
  %icmp.24.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.24.not, label %else.24, label %common.ret

common.ret:                                       ; preds = %else.27, %else.24, %else.21
  %common.ret.op = phi i8 [ 0, %else.21 ], [ 0, %else.24 ], [ %., %else.27 ]
  ret i8 %common.ret.op

else.24:                                          ; preds = %else.21
  %field.18 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.18 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.19 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.19 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.27.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.27.not, label %else.27, label %common.ret

else.27:                                          ; preds = %else.24
  %field.20 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.20 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.21 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.21 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.30.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.30.not to i8
  br label %common.ret
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %nest.12, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 976)
  ret i8 %call.5
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %nest.13, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.6
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %nest.14, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 128)
  ret i8 %call.7
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %nest.15, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 4096)
  ret i8 %call.8
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %nest.16, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 136)
  ret i8 %call.9
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %nest.17, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.42 = bitcast i8* %key1 to [33 x double]*
  %cast.43 = bitcast i8* %key2 to [33 x double]*
  %icmp.35 = icmp eq i8* %key1, null
  br i1 %icmp.35, label %then.31.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.36 = icmp eq i8* %key2, null
  br i1 %icmp.36, label %then.32.split, label %then.34, !make.implicit !3

label.0:                                          ; preds = %then.34
  %add.1 = add nuw nsw i64 %tmpv.50.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.42, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.43, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.50.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.42, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.43, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.50.011, 3
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
  %tmpv.50.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.42, i64 0, i64 %tmpv.50.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.43, i64 0, i64 %tmpv.50.011
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  br i1 %fcmp.0, label %common.ret, label %label.0
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %nest.18, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 260)
  ret i8 %call.10
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %nest.19, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.11
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %nest.20, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 40)
  ret i8 %call.12
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %nest.21, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 512)
  ret i8 %call.13
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %nest.22, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 249)
  ret i8 %call.14
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %nest.23, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 129)
  ret i8 %call.15
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %nest.24, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.16 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 32)
  ret i8 %call.16
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %nest.25, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %cast.46 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.47 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.42 = icmp eq i8* %key1, null
  br i1 %icmp.42, label %then.37.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.43 = icmp eq i8* %key2, null
  br i1 %icmp.43, label %then.38.split, label %then.42, !make.implicit !3

then.37.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.38.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.39:                                          ; preds = %then.42
  %icmp.45 = icmp eq i8* %tmpv.66.sroa.0.0.copyload, %tmpv.68.sroa.0.0.copyload
  br i1 %icmp.45, label %else.41, label %fallthrough.39

fallthrough.39:                                   ; preds = %then.39
  %call.17 = call i32 @memcmp(i8* %tmpv.66.sroa.0.0.copyload, i8* %tmpv.68.sroa.0.0.copyload, i64 %tmpv.66.sroa.3.0.copyload)
  %icmp.46 = icmp eq i32 %call.17, 0
  br i1 %icmp.46, label %else.41, label %common.ret

common.ret:                                       ; preds = %then.42, %else.41, %fallthrough.39
  %common.ret.op = phi i8 [ 0, %fallthrough.39 ], [ 1, %else.41 ], [ 0, %then.42 ]
  ret i8 %common.ret.op

else.41:                                          ; preds = %fallthrough.39, %then.39
  %add.2 = add nuw nsw i64 %tmpv.64.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.42

then.42:                                          ; preds = %else.41, %entry.split
  %tmpv.64.019 = phi i64 [ %add.2, %else.41 ], [ 0, %entry.split ]
  %tmpv.66.sroa.0.0.cast.50.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.46, i64 0, i64 %tmpv.64.019, i32 0
  %tmpv.66.sroa.0.0.copyload = load i8*, i8** %tmpv.66.sroa.0.0.cast.50.sroa_idx, align 8
  %tmpv.66.sroa.3.0.cast.50.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.46, i64 0, i64 %tmpv.64.019, i32 1
  %tmpv.66.sroa.3.0.copyload = load i64, i64* %tmpv.66.sroa.3.0.cast.50.sroa_idx3, align 8
  %tmpv.68.sroa.0.0.cast.53.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.47, i64 0, i64 %tmpv.64.019, i32 0
  %tmpv.68.sroa.0.0.copyload = load i8*, i8** %tmpv.68.sroa.0.0.cast.53.sroa_idx, align 8
  %tmpv.68.sroa.3.0.cast.53.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.47, i64 0, i64 %tmpv.64.019, i32 1
  %tmpv.68.sroa.3.0.copyload = load i64, i64* %tmpv.68.sroa.3.0.cast.53.sroa_idx1, align 8
  %icmp.44 = icmp eq i64 %tmpv.66.sroa.3.0.copyload, %tmpv.68.sroa.3.0.copyload
  br i1 %icmp.44, label %then.39, label %common.ret
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %nest.26, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 1024)
  ret i8 %call.18
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %nest.27, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 8)
  ret i8 %call.19
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %nest.28, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 64)
  ret i8 %call.20
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %nest.29, i8* readonly %key1, i8* readonly %key2) #2 {
entry:
  %call.21 = call i8 @runtime.memequal(i8* nest undef, i8* %key1, i8* %key2, i64 256)
  ret i8 %call.21
}

define void @__go_init_main(i8* nest nocapture readnone %nest.30) local_unnamed_addr #0 {
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

define void @main.main(i8* nest nocapture readnone %nest.0) local_unnamed_addr #0 {
entry:
  %a.i = alloca i64, align 8, !go_addrtaken !3
  %0 = bitcast i64* %a.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %pticast.0.i = ptrtoint i64* %a.i to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printuint(i8* nest undef, i64 %pticast.0.i)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printuint(i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define i64 @main.f(i8* nest nocapture readnone %nest.1) local_unnamed_addr #6 {
entry:
  %a = alloca i64, align 8, !go_addrtaken !3
  %0 = bitcast i64* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %pticast.0 = ptrtoint i64* %a to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i64 %pticast.0
}

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
