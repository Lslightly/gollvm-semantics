; ModuleID = 'issue54247.ll'
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

%0 = type { %1, %6 }
%1 = type { i64, i64, i32, i8, i8, i8, i8, %2*, i8*, { i8*, i64 }*, %3*, %1* }
%2 = type { i8 (i8*, i8*, i8*)* }
%3 = type { { i8*, i64 }*, { i8*, i64 }*, %4 }
%4 = type { %5*, i64, i64 }
%5 = type { { i8*, i64 }*, { i8*, i64 }*, %1*, %1*, i8* }
%6 = type { %7*, i64, i64 }
%7 = type { { i8*, i64 }*, { i8*, i64 }*, %1*, { i8*, i64 }*, i64 }
%8 = type { %1, %1* }
%9 = type { i64 }
%10 = type { void (i8*)* }

$main.obj..p = comdat any

$gcbits..ba = comdat any

$int..d = comdat any

$int..p = comdat any

@main.obj..d = constant %0 { %1 { i64 8, i64 0, i32 -1212222547, i8 8, i8 8, i8 8, i8 -103, %2* bitcast (%9* @runtime.memequal64..f to %2*), i8* null, { i8*, i64 }* @1, %3* @7, %1* getelementptr inbounds (%8, %8* @main.obj..p, i32 0, i32 0) }, %6 { %7* getelementptr inbounds ([1 x %7], [1 x %7]* @20, i32 0, i32 0), i64 1, i64 1 } }
@runtime.memequal64..f = external constant %9
@0 = private constant [15 x i8] c"\09main\09main.obj\00", align 1
@1 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i64 14 }
@2 = private constant [4 x i8] c"obj\00", align 1
@3 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i64 3 }
@4 = private constant [5 x i8] c"main\00", align 1
@5 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i64 4 }
@6 = internal constant [1 x %5] zeroinitializer
@7 = internal constant %3 { { i8*, i64 }* @3, { i8*, i64 }* @5, %4 { %5* getelementptr inbounds ([1 x %5], [1 x %5]* @6, i32 0, i32 0), i64 0, i64 0 } }
@main.obj..p = weak constant %8 { %1 { i64 8, i64 8, i32 2079275737, i8 8, i8 8, i8 8, i8 54, %2* bitcast (%9* @runtime.memequal64..f to %2*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @9, %3* null, %1* null }, %1* getelementptr inbounds (%0, %0* @main.obj..d, i32 0, i32 0) }, comdat
@gcbits..ba = weak constant [1 x i8] c"\01", comdat
@8 = private constant [16 x i8] c"*\09main\09main.obj\00", align 1
@9 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @8, i32 0, i32 0), i64 15 }
@10 = private constant [3 x i8] c"id\00", align 1
@11 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @10, i32 0, i32 0), i64 2 }
@12 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i64 4 }
@int..d = weak constant %1 { i64 8, i64 0, i32 876704034, i8 8, i8 8, i8 8, i8 -126, %2* bitcast (%9* @runtime.memequal64..f to %2*), i8* null, { i8*, i64 }* @14, %3* @17, %1* getelementptr inbounds (%8, %8* @int..p, i32 0, i32 0) }, comdat
@13 = private constant [4 x i8] c"int\00", align 1
@14 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0), i64 3 }
@15 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0), i64 3 }
@16 = internal constant [1 x %5] zeroinitializer
@17 = internal constant %3 { { i8*, i64 }* @15, { i8*, i64 }* null, %4 { %5* getelementptr inbounds ([1 x %5], [1 x %5]* @16, i32 0, i32 0), i64 0, i64 0 } }
@int..p = weak constant %8 { %1 { i64 8, i64 8, i32 1142362665, i8 8, i8 8, i8 8, i8 54, %2* bitcast (%9* @runtime.memequal64..f to %2*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gcbits..ba, i32 0, i32 0), { i8*, i64 }* @19, %3* null, %1* null }, %1* @int..d }, comdat
@18 = private constant [5 x i8] c"*int\00", align 1
@19 = internal constant { i8*, i64 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i64 4 }
@20 = internal constant [1 x %7] [%7 { { i8*, i64 }* @11, { i8*, i64 }* @12, %1* @int..d, { i8*, i64 }* null, i64 0 }]
@21 = internal constant %9 { i64 ptrtoint (void (i8*)* @25 to i64) }
@main.Escape..f = local_unnamed_addr constant %9 { i64 ptrtoint (void (i8*, %10*)* @main.Escape to i64) }
@main.Recover..f = local_unnamed_addr constant %9 { i64 ptrtoint (void (i8*, { %9**, i64, i64 }*)* @main.Recover to i64) }
@22 = private constant [263 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
@main.main..init0..f = local_unnamed_addr constant %9 { i64 ptrtoint (void (i8*)* @main.main..init0 to i64) }
@main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq to i64) }
@main._632_7uintptr..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uintptr..eq to i64) }
@main._6256_7uint64..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint64..eq to i64) }
@main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main._6122_7uintptr..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6122_7uintptr..eq to i64) }
@main._68_7uint64..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._68_7uint64..eq to i64) }
@main._6128_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6128_7uint8..eq to i64) }
@main._64096_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64096_7uint8..eq to i64) }
@main._668_7uint16..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._668_7uint16..eq to i64) }
@main._633_7float64..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._633_7float64..eq to i64) }
@main._665_7uint32..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._665_7uint32..eq to i64) }
@main._64_7uintptr..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64_7uintptr..eq to i64) }
@main._65_7uint..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._65_7uint..eq to i64) }
@main._6512_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6512_7uint8..eq to i64) }
@main._6249_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6249_7uint8..eq to i64) }
@main._6129_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6129_7uint8..eq to i64) }
@main._632_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uint8..eq to i64) }
@main._627_7string..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._627_7string..eq to i64) }
@main._61024_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._61024_7uint8..eq to i64) }
@main._62_7int32..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._62_7int32..eq to i64) }
@main._664_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._664_7uint8..eq to i64) }
@main._6256_7uint8..eq..f = local_unnamed_addr constant %9 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint8..eq to i64) }
@main..types = constant { i64, [2 x i8*] } { i64 2, [2 x i8*] [i8* bitcast (%8* @main.obj..p to i8*), i8* bitcast (%8* @int..p to i8*)] }
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
@23 = internal constant [11 x { i64, [1 x i8*] }*] [{ i64, [1 x i8*] }* @internal_1cpu..types, { i64, [1 x i8*] }* @runtime..types, { i64, [1 x i8*] }* @internal_1abi..types, { i64, [1 x i8*] }* @internal_1bytealg..types, { i64, [1 x i8*] }* @internal_1goarch..types, { i64, [1 x i8*] }* @internal_1goexperiment..types, { i64, [1 x i8*] }* @internal_1goos..types, { i64, [1 x i8*] }* @runtime_1internal_1atomic..types, { i64, [1 x i8*] }* @runtime_1internal_1math..types, { i64, [1 x i8*] }* @runtime_1internal_1sys..types, { i64, [1 x i8*] }* bitcast ({ i64, [2 x i8*] }* @main..types to { i64, [1 x i8*] }*)]

define void @main.Escape(i8* nest nocapture readnone %0, %10* %1) #0 personality i32 (i32, i32, i64, i8*, i8*)* @__gccgo_personality_v0 {
  %3 = alloca i8, align 1, !go_addrtaken !3
  %4 = alloca %9, align 8, !go_addrtaken !3
  %5 = alloca [1 x %9*], align 8
  %6 = alloca { i8*, i8*, i8*, i8*, i64, i8*, i64, i8, i8 }, align 8, !go_addrtaken !3
  %7 = alloca { { %9**, i64, i64 } }, align 8, !go_addrtaken !3
  store i8 0, i8* %3, align 1
  %8 = getelementptr inbounds %9, %9* %4, i64 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds [1 x %9*], [1 x %9*]* %5, i64 0, i64 0
  store %9* %4, %9** %9, align 8
  %10 = bitcast { i8*, i8*, i8*, i8*, i64, i8*, i64, i8, i8 }* %6 to i8*
  %11 = bitcast { { %9**, i64, i64 } }* %7 to i8*
  %12 = getelementptr inbounds { { %9**, i64, i64 } }, { { %9**, i64, i64 } }* %7, i64 0, i32 0, i32 0
  store %9** %9, %9*** %12, align 8
  %13 = getelementptr inbounds { { %9**, i64, i64 } }, { { %9**, i64, i64 } }* %7, i64 0, i32 0, i32 1
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %14, align 8
  invoke void @runtime.deferprocStack(i8* nest undef, i8* nonnull %10, i8* nonnull %3, i64 ptrtoint (void (i8*, { { %9**, i64, i64 } }*)* @24 to i64), i8* nonnull %11)
          to label %32 unwind label %26

15:                                               ; preds = %36, %20
  %16 = phi i8* [ undef, %36 ], [ %21, %20 ]
  %17 = phi i32 [ undef, %36 ], [ %22, %20 ]
  %18 = phi i8 [ 1, %36 ], [ %23, %20 ]
  %19 = landingpad { i8*, i32 }
          catch i8* null
  call void @runtime.checkdefer(i8* nest undef, i8* nonnull %3)
  br label %20

20:                                               ; preds = %28, %26, %15
  %21 = phi i8* [ %16, %15 ], [ %30, %28 ], [ undef, %26 ]
  %22 = phi i32 [ %17, %15 ], [ %31, %28 ], [ undef, %26 ]
  %23 = phi i8 [ %18, %15 ], [ 0, %28 ], [ 1, %26 ]
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %3)
          to label %24 unwind label %15

24:                                               ; preds = %20
  %25 = icmp eq i8 %23, 1
  br i1 %25, label %40, label %37

26:                                               ; preds = %32, %2
  %27 = landingpad { i8*, i32 }
          catch i8* null
  invoke void @runtime.checkdefer(i8* nest undef, i8* nonnull %3)
          to label %20 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = extractvalue { i8*, i32 } %29, 1
  br label %20

32:                                               ; preds = %2
  %33 = getelementptr %10, %10* %1, i64 0, i32 0
  %34 = load void (i8*)*, void (i8*)** %33, align 8
  %35 = bitcast %10* %1 to i8*
  invoke void %34(i8* nest nonnull %35)
          to label %36 unwind label %26

36:                                               ; preds = %32
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %3)
          to label %40 unwind label %15

37:                                               ; preds = %24
  %38 = insertvalue { i8*, i32 } poison, i8* %21, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %22, 1
  resume { i8*, i32 } %39

40:                                               ; preds = %36, %24
  ret void
}

declare i32 @__gccgo_personality_v0(i32, i32, i64, i8*, i8*)

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define internal void @24(i8* nest nocapture %0, { { %9**, i64, i64 } }* nocapture %1) #1 {
  ret void
}

declare void @runtime.deferprocStack(i8*, i8*, i8*, i64, i8*) local_unnamed_addr #0

declare void @runtime.checkdefer(i8*, i8*) local_unnamed_addr #0

declare void @runtime.deferreturn(i8*, i8*) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define void @main.Recover(i8* nest nocapture %0, { %9**, i64, i64 }* nocapture byval({ %9**, i64, i64 }) %1) #1 {
  ret void
}

define void @main.main..init0(i8* nest nocapture readnone %0) #0 {
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @22, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #0 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6, !make.implicit !3

5:                                                ; preds = %3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i8* %2, null
  br i1 %7, label %8, label %9, !make.implicit !3

8:                                                ; preds = %6
  call void @runtime.panicmem(i8* nest undef)
  unreachable

9:                                                ; preds = %6
  %10 = bitcast i8* %1 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = bitcast i8* %2 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %17, %9
  %16 = phi i8 [ 0, %9 ], [ %25, %17 ]
  ret i8 %16

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, i8* %1, i64 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  %25 = zext i1 %24 to i8
  br label %15
}

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) local_unnamed_addr #2

; Function Attrs: nofree readonly
define i8 @main._632_7uintptr..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 256)
  ret i8 %4
}

; Function Attrs: argmemonly nofree readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nofree readonly
define i8 @main._6256_7uint64..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 2048)
  ret i8 %4
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #0 {
  %4 = bitcast i8* %1 to [61 x { i32, i64, i64 }]*
  %5 = bitcast i8* %2 to [61 x { i32, i64, i64 }]*
  %6 = icmp eq i8* %1, null
  br i1 %6, label %12, label %7, !make.implicit !3

7:                                                ; preds = %3
  %8 = icmp eq i8* %2, null
  br i1 %8, label %13, label %16, !make.implicit !3

9:                                                ; preds = %16
  %10 = add nuw nsw i64 %17, 1
  %11 = icmp eq i64 %10, 61
  br i1 %11, label %14, label %16

12:                                               ; preds = %3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

13:                                               ; preds = %7
  call void @runtime.panicmem(i8* nest undef)
  unreachable

14:                                               ; preds = %16, %9
  %15 = phi i8 [ 0, %16 ], [ 1, %9 ]
  ret i8 %15

16:                                               ; preds = %9, %7
  %17 = phi i64 [ %10, %9 ], [ 0, %7 ]
  %18 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %4, i64 0, i64 %17, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %4, i64 0, i64 %17, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %4, i64 0, i64 %17, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %5, i64 0, i64 %17, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %5, i64 0, i64 %17, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %5, i64 0, i64 %17, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i32 %23, %25
  %31 = icmp eq i64 %21, %27
  %32 = select i1 %30, i1 %31, i1 false
  %33 = icmp eq i64 %19, %29
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %9, label %14
}

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #0 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6, !make.implicit !3

5:                                                ; preds = %3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i8* %2, null
  br i1 %7, label %8, label %9, !make.implicit !3

8:                                                ; preds = %6
  call void @runtime.panicmem(i8* nest undef)
  unreachable

9:                                                ; preds = %6
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast i8* %2 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %25, %17, %9
  %16 = phi i8 [ 0, %9 ], [ 0, %17 ], [ %33, %25 ]
  ret i8 %16

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, i8* %1, i64 8
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %15

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, i8* %1, i64 16
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %2, i64 16
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i8
  br label %15
}

; Function Attrs: nofree readonly
define i8 @main._6122_7uintptr..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 976)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._68_7uint64..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 64)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._6128_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 128)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._64096_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 4096)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._668_7uint16..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 136)
  ret i8 %4
}

define i8 @main._633_7float64..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #0 {
  %4 = bitcast i8* %1 to [33 x double]*
  %5 = bitcast i8* %2 to [33 x double]*
  %6 = icmp eq i8* %1, null
  br i1 %6, label %26, label %7, !make.implicit !3

7:                                                ; preds = %3
  %8 = icmp eq i8* %2, null
  br i1 %8, label %27, label %30, !make.implicit !3

9:                                                ; preds = %30
  %10 = add nuw nsw i64 %31, 1
  %11 = getelementptr [33 x double], [33 x double]* %4, i64 0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = getelementptr [33 x double], [33 x double]* %5, i64 0, i64 %10
  %14 = load double, double* %13, align 8
  %15 = fcmp une double %12, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = add nuw nsw i64 %31, 2
  %18 = getelementptr [33 x double], [33 x double]* %4, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = getelementptr [33 x double], [33 x double]* %5, i64 0, i64 %17
  %21 = load double, double* %20, align 8
  %22 = fcmp une double %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = add nuw nsw i64 %31, 3
  %25 = icmp eq i64 %24, 33
  br i1 %25, label %28, label %30

26:                                               ; preds = %3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

27:                                               ; preds = %7
  call void @runtime.panicmem(i8* nest undef)
  unreachable

28:                                               ; preds = %30, %23, %16, %9
  %29 = phi i8 [ 0, %30 ], [ 0, %9 ], [ 0, %16 ], [ 1, %23 ]
  ret i8 %29

30:                                               ; preds = %23, %7
  %31 = phi i64 [ %24, %23 ], [ 0, %7 ]
  %32 = getelementptr [33 x double], [33 x double]* %4, i64 0, i64 %31
  %33 = load double, double* %32, align 8
  %34 = getelementptr [33 x double], [33 x double]* %5, i64 0, i64 %31
  %35 = load double, double* %34, align 8
  %36 = fcmp une double %33, %35
  br i1 %36, label %28, label %9
}

; Function Attrs: nofree readonly
define i8 @main._665_7uint32..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 260)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._64_7uintptr..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 32)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._65_7uint..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 40)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._6512_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 512)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._6249_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 249)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._6129_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 129)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._632_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 32)
  ret i8 %4
}

define i8 @main._627_7string..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #0 {
  %4 = bitcast i8* %1 to [27 x { i8*, i64 }]*
  %5 = bitcast i8* %2 to [27 x { i8*, i64 }]*
  %6 = icmp eq i8* %1, null
  br i1 %6, label %9, label %7, !make.implicit !3

7:                                                ; preds = %3
  %8 = icmp eq i8* %2, null
  br i1 %8, label %10, label %21, !make.implicit !3

9:                                                ; preds = %3
  call void @runtime.panicmem(i8* nest undef)
  unreachable

10:                                               ; preds = %7
  call void @runtime.panicmem(i8* nest undef)
  unreachable

11:                                               ; preds = %21
  %12 = icmp eq i8* %24, %28
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @memcmp(i8* %24, i8* %28, i64 %26)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %21, %18, %13
  %17 = phi i8 [ 0, %13 ], [ 1, %18 ], [ 0, %21 ]
  ret i8 %17

18:                                               ; preds = %13, %11
  %19 = add nuw nsw i64 %22, 1
  %20 = icmp eq i64 %19, 27
  br i1 %20, label %16, label %21

21:                                               ; preds = %18, %7
  %22 = phi i64 [ %19, %18 ], [ 0, %7 ]
  %23 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %4, i64 0, i64 %22, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %4, i64 0, i64 %22, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %5, i64 0, i64 %22, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %5, i64 0, i64 %22, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %11, label %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree readonly
define i8 @main._61024_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 1024)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._62_7int32..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 8)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._664_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 64)
  ret i8 %4
}

; Function Attrs: nofree readonly
define i8 @main._6256_7uint8..eq(i8* nest nocapture readnone %0, i8* readonly %1, i8* readonly %2) #3 {
  %4 = call i8 @runtime.memequal(i8* nest undef, i8* %1, i8* %2, i64 256)
  ret i8 %4
}

define void @__go_init_main(i8* nest nocapture readnone %0) local_unnamed_addr #0 {
  call void @runtime.registerTypeDescriptors(i8* nest undef, i64 11, i8* bitcast ([11 x { i64, [1 x i8*] }*]* @23 to i8*))
  call void @internal_1cpu..import(i8* nest undef)
  call void @runtime..import(i8* nest undef)
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) local_unnamed_addr #0

declare void @internal_1cpu..import(i8*) local_unnamed_addr #0

declare void @runtime..import(i8*) local_unnamed_addr #0

define void @main.main(i8* nest nocapture readnone %0) local_unnamed_addr #0 {
  call void @main.Escape(i8* nest undef, %10* bitcast (%9* @21 to %10*))
  ret void
}

define internal void @25(i8* nest nocapture readnone %0) #0 {
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
