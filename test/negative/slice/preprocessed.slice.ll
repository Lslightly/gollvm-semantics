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


declare void @runtime.panicmem(i8*) local_unnamed_addr #1


declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #3


















declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4





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
  %a = alloca i64, align 8
  %call.0 = bitcast i64* %a to i8*
  %cast.5 = bitcast i8* %call.0 to i64*
  store i64 100, i64* %cast.5, align 8
  %ptroff.0 = getelementptr inbounds [20 x i64*], [20 x i64*]* %tmpv.0, i64 0, i64 10
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.3, label else.2, label else.1

fallthrough.1:                                    
  %.ld.1 = phi i64 [ %phi.bo, else.1 ], [ 105, else.2 ]
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 %.ld.1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  %.ptroff.ld.0 = load i64*, i64** %ptroff.0, align 8
  %icmp.6 = icmp eq i64* %.ptroff.ld.0, null
  br i1 %icmp.6, label then.4, label else.4, !make.implicit !3

else.1:                                           
  %cast.7 = bitcast i64** %ptroff.0 to i8*
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %cast.7, i64 %pticast.0)
  %.ld.1.pre = load i64, i64* %cast.5, align 8
  %phi.bo = add i64 %.ld.1.pre, 5
  br label fallthrough.1

else.2:                                           
  %0 = bitcast i64** %ptroff.0 to i8**
  store i8* %call.0, i8** %0, align 8
  br label fallthrough.1

then.4:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.4:                                           
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
  br i1 %icmp.10, label then.7, label else.7

then.7:                                           
  %icmp.9 = icmp eq i64** %ptroff.3, null
  br i1 %icmp.9, label then.8, label else.8, !make.implicit !3

fallthrough.7:                                    
  %add.3 = add i64 %s.sroa.20.0.copyload, 2
  %icmp.12 = icmp ugt i64 %add.3, %s.sroa.35.0.copyload
  br i1 %icmp.12, label then.9, label fallthrough.9

else.7:                                           
  %cast.20 = bitcast i64** %ptroff.3 to i8*
  %pticast.1 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.20, i64 %pticast.1)
  br label fallthrough.7

then.8:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.8:                                           
  %3 = bitcast i64** %ptroff.3 to i8**
  store i8* %call.0, i8** %3, align 8
  br label fallthrough.7

then.9:                                           
  %cast.26 = bitcast i64** %s.sroa.0.0.copyload to i8*
  call void @runtime.growslice({ i8**, i64, i64 }* nonnull sret({ i8**, i64, i64 }) "go_sret" %sret.actual.1, i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.26, i64 %s.sroa.20.0.copyload, i64 %s.sroa.35.0.copyload, i64 %add.3)
  %s.sroa.0.0.cast.29.sroa_idx = bitcast { i8**, i64, i64 }* %sret.actual.1 to i64***
  %s.sroa.0.0.copyload55 = load i64**, i64*** %s.sroa.0.0.cast.29.sroa_idx, align 8
  %4 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.1, i64 0, i32 1
  %s.sroa.20.0.copyload60 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.1, i64 0, i32 2
  %s.sroa.35.0.copyload66 = load i64, i64* %5, align 8
  br label fallthrough.9

fallthrough.9:                                    
  %s.sroa.0.1 = phi i64** [ %s.sroa.0.0.copyload55, then.9 ], [ %s.sroa.0.0.copyload, fallthrough.7 ]
  %s.sroa.20.1 = phi i64 [ %s.sroa.20.0.copyload60, then.9 ], [ %add.3, fallthrough.7 ]
  %s.sroa.35.1 = phi i64 [ %s.sroa.35.0.copyload66, then.9 ], [ %s.sroa.35.0.copyload, fallthrough.7 ]
  %ptroff.5 = getelementptr i64*, i64** %s.sroa.0.1, i64 %s.sroa.20.0.copyload
  %deref.ld.2 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.14 = icmp eq i32 %deref.ld.2, 0
  br i1 %icmp.14, label then.11, label else.11

then.11:                                          
  %icmp.13 = icmp eq i64** %ptroff.5, null
  br i1 %icmp.13, label then.12, label else.12, !make.implicit !3

fallthrough.11:                                   
  %add.5 = add i64 %s.sroa.20.0.copyload, 1
  %ptroff.6 = getelementptr i64*, i64** %s.sroa.0.1, i64 %add.5
  %deref.ld.3 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.16 = icmp eq i32 %deref.ld.3, 0
  br i1 %icmp.16, label then.13, label else.13

else.11:                                          
  %cast.33 = bitcast i64** %ptroff.5 to i8*
  %pticast.2 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.33, i64 %pticast.2)
  br label fallthrough.11

then.12:                                          
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.12:                                          
  %6 = bitcast i64** %ptroff.5 to i8**
  store i8* %call.0, i8** %6, align 8
  br label fallthrough.11

then.13:                                          
  %icmp.15 = icmp eq i64** %ptroff.6, null
  br i1 %icmp.15, label then.14, label else.14, !make.implicit !3

fallthrough.13:                                   
  %add.6 = shl i64 %s.sroa.20.1, 1
  %icmp.18 = icmp ugt i64 %add.6, %s.sroa.35.1
  br i1 %icmp.18, label then.15, label fallthrough.15

else.13:                                          
  %cast.37 = bitcast i64** %ptroff.6 to i8*
  %pticast.3 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* %cast.37, i64 %pticast.3)
  br label fallthrough.13

then.14:                                          
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.14:                                          
  %7 = bitcast i64** %ptroff.6 to i8**
  store i8* %call.0, i8** %7, align 8
  br label fallthrough.13

then.15:                                          
  %cast.45 = bitcast i64** %s.sroa.0.1 to i8*
  call void @runtime.growslice({ i8**, i64, i64 }* nonnull sret({ i8**, i64, i64 }) "go_sret" %sret.actual.2, i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.45, i64 %s.sroa.20.1, i64 %s.sroa.35.1, i64 %add.6)
  %s.sroa.0.0.cast.48.sroa_idx = bitcast { i8**, i64, i64 }* %sret.actual.2 to i64***
  %s.sroa.0.0.copyload56 = load i64**, i64*** %s.sroa.0.0.cast.48.sroa_idx, align 8
  %8 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.2, i64 0, i32 1
  %s.sroa.20.0.copyload62 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i8**, i64, i64 }, { i8**, i64, i64 }* %sret.actual.2, i64 0, i32 2
  %s.sroa.35.0.copyload68 = load i64, i64* %9, align 8
  br label fallthrough.15

fallthrough.15:                                   
  %s.sroa.0.2 = phi i64** [ %s.sroa.0.0.copyload56, then.15 ], [ %s.sroa.0.1, fallthrough.13 ]
  %s.sroa.20.2 = phi i64 [ %s.sroa.20.0.copyload62, then.15 ], [ %add.6, fallthrough.13 ]
  %s.sroa.35.2 = phi i64 [ %s.sroa.35.0.copyload68, then.15 ], [ %s.sroa.35.1, fallthrough.13 ]
  %cast.53.pre-phi = bitcast i64** %s.sroa.0.1 to i8*
  %icmp.19 = icmp eq i64 %s.sroa.35.2, %s.sroa.20.1
  %.s.sroa.20.1 = select i1 %icmp.19, i64 0, i64 %s.sroa.20.1
  %ptroff.8 = getelementptr i64*, i64** %s.sroa.0.2, i64 %.s.sroa.20.1
  %sub.10 = sub i64 %s.sroa.20.2, %s.sroa.20.1
  %cast.52 = bitcast i64** %ptroff.8 to i8*
  %call.1 = call i64 @runtime.typedslicecopy(i8* nest undef, %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @int..p, i64 0, i32 0), i8* %cast.52, i64 %sub.10, i8* %cast.53.pre-phi, i64 %s.sroa.20.1)
  %icmp.21 = icmp sgt i64 %s.sroa.35.2, 3
  br i1 %icmp.21, label else.20, label else.18

else.18:                                          
  call void @runtime.goPanicSliceAcap(i8* nest undef, i64 4, i64 %s.sroa.35.2)
  unreachable

else.20:                                          
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printint(i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #6

declare void @runtime.growslice({ i8**, i64, i64 }*, i8*, %_type.0*, i8*, i64, i64, i64) local_unnamed_addr #7

declare i64 @runtime.typedslicecopy(i8*, %_type.0*, i8*, i64, i8*, i64) local_unnamed_addr #0

declare void @runtime.goPanicSliceAcap(i8*, i64, i64) local_unnamed_addr #1


!llvm.module.flags = !{!0, !1, !2}


