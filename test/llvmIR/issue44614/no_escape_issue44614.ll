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
module asm "\09.ascii \22 29\22"
module asm "\09.ascii \22 22\22"
module asm "\09.ascii \22 19\22"
module asm "\09.ascii \22 21\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22type 1 (? <type 3>) <type 3>\\ntype 2 (? <type -16>)\\ntype 3 *<type -11>\\ntype 4 interface { }\\n\22"
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
module asm "\09.ascii \22p\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 3>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 (\22"
module asm "\09.ascii \22r\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 3>\22"
module asm "\09.ascii \22)\22"
module asm "\09.ascii \22 <inl:137>\\n\22"
module asm "\09.ascii \22 // /home/lqw/semantic/gollvm-semantic/test/issue44614.go:5\\n .global = $convert(<type 4>, &r) //6\\n { //7\\n  r = p //7\\n  return //7\\n } //0\\n\22"
module asm "\09.ascii \22var \22"
module asm "\09.ascii \22.\22"
module asm "\09.ascii \22global\22"
module asm "\09.ascii \22 \22"
module asm "\09.ascii \22<type 4>\22"
module asm "\09.ascii \22\\n\22"
module asm "\09.ascii \22checksum D5FADBA29BB60CE1D154B1BC8115AFAB1BEB5229\\n\22"
module asm "\09.text"

%_type.0 = type { i64, i64, i32, i8, i8, i8, i8, %__go_descriptor.6*, i8*, { i8*, i64 }*, %uncommonType.0*, %_type.0* }
%__go_descriptor.6 = type { i8 (i8*, i8*, i8*)* }
%uncommonType.0 = type { { i8*, i64 }*, { i8*, i64 }*, %IPST.9 }
%IPST.9 = type { %method.0*, i64, i64 }
%method.0 = type { { i8*, i64 }*, { i8*, i64 }*, %_type.0*, %_type.0*, i8* }
%PtrType.0 = type { %_type.0, %_type.0* }
%functionDescriptor.0 = type { i64 }

$type.._2_2int = comdat any

$gcbits..ba = comdat any

$int..p = comdat any

$int..d = comdat any

$gcbits..da = comdat any

@main.global = global { %_type.0*, i8* } zeroinitializer
@type.._2_2int = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1097933465, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C1, %uncommonType.0* null, %_type.0* null }, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@runtime.memequal64..f = external constant %functionDescriptor.0
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@const.0 = private constant [6 x i8] c"**int\00", align 1
@go..C1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @const.0, i32 0, i32 0), i64 5 }
@int..p = weak constant %PtrType.0 { %_type.0 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @go..C2, %uncommonType.0* null, %_type.0* null }, %_type.0* @int..d }, comdat
@const.1 = private constant [5 x i8] c"*int\00", align 1
@go..C2 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @const.1, i32 0, i32 0), i64 4 }
@int..d = weak constant %_type.0 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %__go_descriptor.6* bitcast (%functionDescriptor.0* @runtime.memequal64..f to %__go_descriptor.6*), i8* null, { i8*, i64 }* @go..C3, %uncommonType.0* @go..C6, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i32 0, i32 0) }, comdat
@const.2 = private constant [4 x i8] c"int\00", align 1
@go..C3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.2, i32 0, i32 0), i64 3 }
@go..C4 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @const.2, i32 0, i32 0), i64 3 }
@go..C5 = internal constant [1 x %method.0] zeroinitializer
@go..C6 = internal constant %uncommonType.0 { { i8*, i64 }* @go..C4, { i8*, i64 }* null, %IPST.9 { %method.0* getelementptr inbounds ([1 x %method.0], [1 x %method.0]* @go..C5, i32 0, i32 0), i64 0, i64 0 } }
@runtime.writeBarrier = external local_unnamed_addr externally_initialized global { i8, [3 x i8], i8, i8, i64 }
@const.3 = private constant [305 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09-gccgoflags=-fno-go-optimize-allocs\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
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
@main..types = constant { i64, [2 x i8*] } { i64 2, [2 x i8*] [i8* bitcast (%PtrType.0* @int..p to i8*), i8* bitcast (%PtrType.0* @type.._2_2int to i8*)] }
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
@gcbits..da = weak constant [1 x i8] c"\03", comdat
@go..C0 = internal global { i8*, i64, [1 x { i8*, i64, i64, i8* }] } { i8* null, i64 1, [1 x { i8*, i64, i64, i8* }] [{ i8*, i64, i64, i8* } { i8* bitcast ({ %_type.0*, i8* }* @main.global to i8*), i64 16, i64 16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..da, i32 0, i32 0) }] }

define void @main.main..init0(i8* nest nocapture readnone %nest.2) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @const.3, i64 0, i64 0), i64 304)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.7, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.10 = icmp eq i8* %key1, null
  br i1 %icmp.10, label %then.11, label %else.11, !make.implicit !3

then.11:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.11:                                          ; preds = %entry
  %icmp.11 = icmp eq i8* %key2, null
  br i1 %icmp.11, label %then.12, label %else.12, !make.implicit !3

then.12:                                          ; preds = %else.11
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.12:                                          ; preds = %else.11
  %tmpv.17.sroa.0.0.cast.31.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.17.sroa.0.0.copyload = load i64, i64* %tmpv.17.sroa.0.0.cast.31.sroa_idx, align 8
  %tmpv.18.sroa.0.0.cast.36.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.18.sroa.0.0.copyload = load i64, i64* %tmpv.18.sroa.0.0.cast.36.sroa_idx, align 8
  %icmp.12.not = icmp eq i64 %tmpv.17.sroa.0.0.copyload, %tmpv.18.sroa.0.0.copyload
  br i1 %icmp.12.not, label %else.15, label %common.ret

common.ret:                                       ; preds = %else.15, %else.12
  %common.ret.op = phi i8 [ 0, %else.12 ], [ %., %else.15 ]
  ret i8 %common.ret.op

else.15:                                          ; preds = %else.12
  %field.16 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.16 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.17 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.17 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.16.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.16.not to i8
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
  %cast.41 = bitcast i8* %key1 to [61 x { i32, i64, i64 }]*
  %cast.42 = bitcast i8* %key2 to [61 x { i32, i64, i64 }]*
  %icmp.19 = icmp eq i8* %key1, null
  br i1 %icmp.19, label %then.19.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.22 = icmp eq i8* %key2, null
  br i1 %icmp.22, label %then.21.split, label %then.25, !make.implicit !3

label.0:                                          ; preds = %then.25
  %add.0 = add nuw nsw i64 %tmpv.31.018, 1
  %exitcond.not = icmp eq i64 %add.0, 61
  br i1 %exitcond.not, label %common.ret, label %then.25

then.19.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.21.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.25, %label.0
  %common.ret.op = phi i8 [ 0, %then.25 ], [ 1, %label.0 ]
  ret i8 %common.ret.op

then.25:                                          ; preds = %label.0, %entry.split
  %tmpv.31.018 = phi i64 [ %add.0, %label.0 ], [ 0, %entry.split ]
  %tmpv.33.sroa.4.0.cast.45.sroa_idx7 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.31.018, i32 2
  %tmpv.33.sroa.4.0.copyload = load i64, i64* %tmpv.33.sroa.4.0.cast.45.sroa_idx7, align 8
  %tmpv.33.sroa.3.0.cast.45.sroa_idx6 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.31.018, i32 1
  %tmpv.33.sroa.3.0.copyload = load i64, i64* %tmpv.33.sroa.3.0.cast.45.sroa_idx6, align 8
  %tmpv.33.sroa.0.0.cast.45.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.41, i64 0, i64 %tmpv.31.018, i32 0
  %tmpv.33.sroa.0.0.copyload = load i32, i32* %tmpv.33.sroa.0.0.cast.45.sroa_idx, align 8
  %tmpv.34.sroa.0.0.cast.50.sroa_idx = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.42, i64 0, i64 %tmpv.31.018, i32 0
  %tmpv.34.sroa.0.0.copyload = load i32, i32* %tmpv.34.sroa.0.0.cast.50.sroa_idx, align 8
  %tmpv.34.sroa.3.0.cast.50.sroa_idx4 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.42, i64 0, i64 %tmpv.31.018, i32 1
  %tmpv.34.sroa.3.0.copyload = load i64, i64* %tmpv.34.sroa.3.0.cast.50.sroa_idx4, align 8
  %tmpv.34.sroa.4.0.cast.50.sroa_idx5 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %cast.42, i64 0, i64 %tmpv.31.018, i32 2
  %tmpv.34.sroa.4.0.copyload = load i64, i64* %tmpv.34.sroa.4.0.cast.50.sroa_idx5, align 8
  %icmp.23 = icmp eq i32 %tmpv.33.sroa.0.0.copyload, %tmpv.34.sroa.0.0.copyload
  %icmp.24 = icmp eq i64 %tmpv.33.sroa.3.0.copyload, %tmpv.34.sroa.3.0.copyload
  %tmpv.40.0.in = select i1 %icmp.23, i1 %icmp.24, i1 false
  %icmp.25 = icmp eq i64 %tmpv.33.sroa.4.0.copyload, %tmpv.34.sroa.4.0.copyload
  %tmpv.41.0.in = select i1 %tmpv.40.0.in, i1 %icmp.25, i1 false
  br i1 %tmpv.41.0.in, label %label.0, label %common.ret
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %nest.11, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.28 = icmp eq i8* %key1, null
  br i1 %icmp.28, label %then.26, label %else.26, !make.implicit !3

then.26:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.26:                                          ; preds = %entry
  %icmp.29 = icmp eq i8* %key2, null
  br i1 %icmp.29, label %then.27, label %else.27, !make.implicit !3

then.27:                                          ; preds = %else.26
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.27:                                          ; preds = %else.26
  %field.24 = bitcast i8* %key1 to i32*
  %.field.ld.2 = load i32, i32* %field.24, align 4
  %field.25 = bitcast i8* %key2 to i32*
  %.field.ld.3 = load i32, i32* %field.25, align 4
  %icmp.30.not = icmp eq i32 %.field.ld.2, %.field.ld.3
  br i1 %icmp.30.not, label %else.30, label %common.ret

common.ret:                                       ; preds = %else.33, %else.30, %else.27
  %common.ret.op = phi i8 [ 0, %else.27 ], [ 0, %else.30 ], [ %., %else.33 ]
  ret i8 %common.ret.op

else.30:                                          ; preds = %else.27
  %field.26 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.26 to i64*
  %.field.ld.4 = load i64, i64* %0, align 8
  %field.27 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.27 to i64*
  %.field.ld.5 = load i64, i64* %1, align 8
  %icmp.33.not = icmp eq i64 %.field.ld.4, %.field.ld.5
  br i1 %icmp.33.not, label %else.33, label %common.ret

else.33:                                          ; preds = %else.30
  %field.28 = getelementptr inbounds i8, i8* %key1, i64 16
  %2 = bitcast i8* %field.28 to i64*
  %.field.ld.6 = load i64, i64* %2, align 8
  %field.29 = getelementptr inbounds i8, i8* %key2, i64 16
  %3 = bitcast i8* %field.29 to i64*
  %.field.ld.7 = load i64, i64* %3, align 8
  %icmp.36.not = icmp eq i64 %.field.ld.6, %.field.ld.7
  %. = zext i1 %icmp.36.not to i8
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
  %cast.61 = bitcast i8* %key1 to [33 x double]*
  %cast.62 = bitcast i8* %key2 to [33 x double]*
  %icmp.41 = icmp eq i8* %key1, null
  br i1 %icmp.41, label %then.37.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.42 = icmp eq i8* %key2, null
  br i1 %icmp.42, label %then.38.split, label %then.40, !make.implicit !3

label.0:                                          ; preds = %then.40
  %add.1 = add nuw nsw i64 %tmpv.58.011, 1
  %index.2.1 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %add.1
  %.index.ld.0.1 = load double, double* %index.2.1, align 8
  %index.3.1 = getelementptr [33 x double], [33 x double]* %cast.62, i64 0, i64 %add.1
  %.index.ld.1.1 = load double, double* %index.3.1, align 8
  %fcmp.0.1 = fcmp une double %.index.ld.0.1, %.index.ld.1.1
  br i1 %fcmp.0.1, label %common.ret, label %label.0.1

label.0.1:                                        ; preds = %label.0
  %add.1.1 = add nuw nsw i64 %tmpv.58.011, 2
  %index.2.2 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %add.1.1
  %.index.ld.0.2 = load double, double* %index.2.2, align 8
  %index.3.2 = getelementptr [33 x double], [33 x double]* %cast.62, i64 0, i64 %add.1.1
  %.index.ld.1.2 = load double, double* %index.3.2, align 8
  %fcmp.0.2 = fcmp une double %.index.ld.0.2, %.index.ld.1.2
  br i1 %fcmp.0.2, label %common.ret, label %label.0.2

label.0.2:                                        ; preds = %label.0.1
  %add.1.2 = add nuw nsw i64 %tmpv.58.011, 3
  %exitcond.not.2 = icmp eq i64 %add.1.2, 33
  br i1 %exitcond.not.2, label %common.ret, label %then.40

then.37.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.38.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

common.ret:                                       ; preds = %then.40, %label.0.2, %label.0.1, %label.0
  %common.ret.op = phi i8 [ 0, %then.40 ], [ 0, %label.0 ], [ 0, %label.0.1 ], [ 1, %label.0.2 ]
  ret i8 %common.ret.op

then.40:                                          ; preds = %label.0.2, %entry.split
  %tmpv.58.011 = phi i64 [ %add.1.2, %label.0.2 ], [ 0, %entry.split ]
  %index.2 = getelementptr [33 x double], [33 x double]* %cast.61, i64 0, i64 %tmpv.58.011
  %.index.ld.0 = load double, double* %index.2, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %cast.62, i64 0, i64 %tmpv.58.011
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
  %cast.65 = bitcast i8* %key1 to [27 x { i8*, i64 }]*
  %cast.66 = bitcast i8* %key2 to [27 x { i8*, i64 }]*
  %icmp.48 = icmp eq i8* %key1, null
  br i1 %icmp.48, label %then.43.split, label %entry.split, !make.implicit !3

entry.split:                                      ; preds = %entry
  %icmp.49 = icmp eq i8* %key2, null
  br i1 %icmp.49, label %then.44.split, label %then.48, !make.implicit !3

then.43.split:                                    ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.44.split:                                    ; preds = %entry.split
  call void @runtime.panicmem(i8* nest undef)
  unreachable

then.45:                                          ; preds = %then.48
  %icmp.51 = icmp eq i8* %tmpv.74.sroa.0.0.copyload, %tmpv.76.sroa.0.0.copyload
  br i1 %icmp.51, label %else.47, label %fallthrough.45

fallthrough.45:                                   ; preds = %then.45
  %call.19 = call i32 @memcmp(i8* %tmpv.74.sroa.0.0.copyload, i8* %tmpv.76.sroa.0.0.copyload, i64 %tmpv.74.sroa.3.0.copyload)
  %icmp.52 = icmp eq i32 %call.19, 0
  br i1 %icmp.52, label %else.47, label %common.ret

common.ret:                                       ; preds = %then.48, %else.47, %fallthrough.45
  %common.ret.op = phi i8 [ 0, %fallthrough.45 ], [ 1, %else.47 ], [ 0, %then.48 ]
  ret i8 %common.ret.op

else.47:                                          ; preds = %fallthrough.45, %then.45
  %add.2 = add nuw nsw i64 %tmpv.72.019, 1
  %exitcond.not = icmp eq i64 %add.2, 27
  br i1 %exitcond.not, label %common.ret, label %then.48

then.48:                                          ; preds = %else.47, %entry.split
  %tmpv.72.019 = phi i64 [ %add.2, %else.47 ], [ 0, %entry.split ]
  %tmpv.74.sroa.0.0.cast.69.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.65, i64 0, i64 %tmpv.72.019, i32 0
  %tmpv.74.sroa.0.0.copyload = load i8*, i8** %tmpv.74.sroa.0.0.cast.69.sroa_idx, align 8
  %tmpv.74.sroa.3.0.cast.69.sroa_idx3 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.65, i64 0, i64 %tmpv.72.019, i32 1
  %tmpv.74.sroa.3.0.copyload = load i64, i64* %tmpv.74.sroa.3.0.cast.69.sroa_idx3, align 8
  %tmpv.76.sroa.0.0.cast.72.sroa_idx = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.66, i64 0, i64 %tmpv.72.019, i32 0
  %tmpv.76.sroa.0.0.copyload = load i8*, i8** %tmpv.76.sroa.0.0.cast.72.sroa_idx, align 8
  %tmpv.76.sroa.3.0.cast.72.sroa_idx1 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %cast.66, i64 0, i64 %tmpv.72.019, i32 1
  %tmpv.76.sroa.3.0.copyload = load i64, i64* %tmpv.76.sroa.3.0.cast.72.sroa_idx1, align 8
  %icmp.50 = icmp eq i64 %tmpv.74.sroa.3.0.copyload, %tmpv.76.sroa.3.0.copyload
  br i1 %icmp.50, label %then.45, label %common.ret
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
  call void @runtime.registerGCRoots(i8* nest undef, i8* bitcast ({ i8*, i64, [1 x { i8*, i64, i64, i8* }] }* @go..C0 to i8*))
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) local_unnamed_addr #0

declare void @internal_1cpu..import(i8*) local_unnamed_addr #0

declare void @runtime..import(i8*) local_unnamed_addr #0

declare void @runtime.registerGCRoots(i8*, i8*) local_unnamed_addr #0

define i64* @main.f(i8* nest nocapture readnone %nest.0, i64* %p) local_unnamed_addr #0 {
entry:
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0))
  %cast.18 = bitcast i8* %call.0 to i64**
  store %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2int, i64 0, i32 0), %_type.0** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 0), align 8
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.3, label %fallthrough.1.thread, label %fallthrough.1

fallthrough.1:                                    ; preds = %entry
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* bitcast (i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 1) to i8*), i64 %pticast.0)
  %deref.ld.1.pr = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.5 = icmp eq i32 %deref.ld.1.pr, 0
  br i1 %icmp.5, label %else.5, label %else.4

fallthrough.1.thread:                             ; preds = %entry
  store i8* %call.0, i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 1), align 8
  br label %else.5

fallthrough.4:                                    ; preds = %else.5, %else.4
  %.ld.4 = phi i64* [ %.ld.4.pre, %else.4 ], [ %p, %else.5 ]
  ret i64* %.ld.4

else.4:                                           ; preds = %fallthrough.1
  %pticast.1 = ptrtoint i64* %p to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.0, i64 %pticast.1)
  %.ld.4.pre = load i64*, i64** %cast.18, align 8
  br label %fallthrough.4

else.5:                                           ; preds = %fallthrough.1.thread, %fallthrough.1
  store i64* %p, i64** %cast.18, align 8
  br label %fallthrough.4
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

; Function Attrs: cold
declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #5

define void @main.main(i8* nest nocapture readnone %nest.1) local_unnamed_addr #0 {
entry:
  %call.1 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.19 = bitcast i8* %call.1 to i64*
  store i64 1, i64* %cast.19, align 8
  %call.2 = call i64* @main.f(i8* nest undef, i64* nonnull %cast.19)
  ret void
}

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
