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
  %r = alloca i64*, align 8
  %call.0 = bitcast i64** %r to i8*
  %cast.18 = bitcast i8* %call.0 to i64**
  store %_type.0* getelementptr inbounds (%PtrType.0, %PtrType.0* @type.._2_2int, i64 0, i32 0), %_type.0** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 0), align 8
  %deref.ld.0 = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.3 = icmp eq i32 %deref.ld.0, 0
  br i1 %icmp.3, label fallthrough.1.thread, label fallthrough.1

fallthrough.1:                                    
  %pticast.0 = ptrtoint i8* %call.0 to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* bitcast (i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 1) to i8*), i64 %pticast.0)
  %deref.ld.1.pr = load i32, i32* bitcast ({ i8, [3 x i8], i8, i8, i64 }* @runtime.writeBarrier to i32*), align 8
  %icmp.5 = icmp eq i32 %deref.ld.1.pr, 0
  br i1 %icmp.5, label else.5, label else.4

fallthrough.1.thread:                             
  store i8* %call.0, i8** getelementptr inbounds ({ %_type.0*, i8* }, { %_type.0*, i8* }* @main.global, i64 0, i32 1), align 8
  br label else.5

fallthrough.4:                                    
  %.ld.4 = phi i64* [ %.ld.4.pre, else.4 ], [ %p, else.5 ]
  ret i64* %.ld.4

else.4:                                           
  %pticast.1 = ptrtoint i64* %p to i64
  call void @runtime.gcWriteBarrier(i8* nest undef, i8* nonnull %call.0, i64 %pticast.1)
  %.ld.4.pre = load i64*, i64** %cast.18, align 8
  br label fallthrough.4

else.5:                                           
  store i64* %p, i64** %cast.18, align 8
  br label fallthrough.4
}

declare noalias nonnull i8* @runtime.newobject(i8*, %_type.0*) local_unnamed_addr #0

declare void @runtime.gcWriteBarrier(i8*, i8*, i64) local_unnamed_addr #5

define void @main.main(i8* nest nocapture readnone %nest.1) local_unnamed_addr #0 {
entry:
  %call.1 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  %cast.19 = bitcast i8* %call.1 to i64*
  store i64 1, i64* %cast.19, align 8
  %call.2 = call i64* @main.f(i8* nest undef, i64* nonnull %cast.19)
  ret void
}


!llvm.module.flags = !{!0, !1, !2}


