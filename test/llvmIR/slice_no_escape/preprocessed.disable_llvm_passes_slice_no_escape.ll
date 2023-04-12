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

@const.0 = private constant [20 x i64] zeroinitializer
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
@const.3 = private constant [302 x i8] c"0w\AF\0C\92t\08\02A\E1\C1\07\E6\D6\18\E6path\09command-line-arguments\0Abuild\09-compiler=gccgo\0Abuild\09-gccgoflags=-disable-llvm-passes\0Abuild\09CGO_ENABLED=1\0Abuild\09CGO_CFLAGS=\0Abuild\09CGO_CPPFLAGS=\0Abuild\09CGO_CXXFLAGS=\0Abuild\09CGO_LDFLAGS=\0Abuild\09GOARCH=amd64\0Abuild\09GOEXPERIMENT=fieldtrack\0Abuild\09GOOS=linux\0Abuild\09GOAMD64=v1\0A\F92C1\86\18 r\00\82B\10A\16\D8\F2\00", align 1
@const.4 = private constant { i8*, i64 } { i8* getelementptr inbounds ([302 x i8], [302 x i8]* @const.3, i32 0, i32 0), i64 301 }
@main.main..init0..f = constant %functionDescriptor.0 { i64 ptrtoint (void (i8*)* @main.main..init0 to i64) }
@main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq to i64) }
@main._632_7uintptr..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uintptr..eq to i64) }
@main._6256_7uint64..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint64..eq to i64) }
@main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq to i64) }
@main._6122_7uintptr..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6122_7uintptr..eq to i64) }
@main._68_7uint64..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._68_7uint64..eq to i64) }
@main._6128_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6128_7uint8..eq to i64) }
@main._64096_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64096_7uint8..eq to i64) }
@main._668_7uint16..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._668_7uint16..eq to i64) }
@main._633_7float64..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._633_7float64..eq to i64) }
@main._665_7uint32..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._665_7uint32..eq to i64) }
@main._64_7uintptr..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._64_7uintptr..eq to i64) }
@main._65_7uint..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._65_7uint..eq to i64) }
@main._6512_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6512_7uint8..eq to i64) }
@main._6249_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6249_7uint8..eq to i64) }
@main._6129_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6129_7uint8..eq to i64) }
@main._632_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._632_7uint8..eq to i64) }
@main._627_7string..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._627_7string..eq to i64) }
@main._61024_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._61024_7uint8..eq to i64) }
@main._62_7int32..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._62_7int32..eq to i64) }
@main._664_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._664_7uint8..eq to i64) }
@main._6256_7uint8..eq..f = constant %functionDescriptor.0 { i64 ptrtoint (i8 (i8*, i8*, i8*)* @main._6256_7uint8..eq to i64) }
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

define void @main.main..init0(i8* nest %nest.1) #0 {
entry:
  %ld.0 = load i8*, i8** getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* @const.4, i32 0, i32 0), align 8
  %ld.1 = load i64, i64* getelementptr inbounds ({ i8*, i64 }, { i8*, i64 }* @const.4, i32 0, i32 1), align 8
  call void @runtime.setmodinfo(i8* nest undef, i8* %ld.0, i64 %ld.1)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) #0


declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @runtime.panicmem(i8*) #2

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1


declare i8 @runtime.memequal(i8*, i8*, i8*, i64) #4



declare void @runtime.goPanicIndex(i8*, i64, i64) #2
















declare i32 @memcmp(i8*, i8*, i64) #0





define void @__go_init_main(i8* nest %nest.29) #0 {
entry:
  call void @runtime.registerTypeDescriptors(i8* nest undef, i64 11, i8* bitcast ([11 x { i64, [1 x i8*] }*]* @go..typelists to i8*))
  call void @internal_1cpu..import(i8* nest undef)
  call void @runtime..import(i8* nest undef)
  call void @main.main..init0(i8* nest undef)
  ret void
}

declare void @runtime.registerTypeDescriptors(i8*, i64, i8*) #0

declare void @internal_1cpu..import(i8*) #0

declare void @runtime..import(i8*) #0

define void @main.main(i8* nest %nest.0) #0 {
entry:
  %s = alloca { i64*, i64, i64 }, align 8
  %tmpv.0 = alloca [20 x i64], align 8, !go_addrtaken !3
  %tmpv.1 = alloca i64, align 8
  %tmpv.2 = alloca i64, align 8
  %tmpv.3 = alloca { i64*, i64, i64 }, align 8
  %tmpv.4 = alloca i64, align 8
  %tmpv.5 = alloca i64, align 8
  %tmpv.6 = alloca i64, align 8
  %sret.actual.0 = alloca { i8**, i64, i64 }, align 8
  %tmpv.7 = alloca i64, align 8
  %tmpv.8 = alloca i64, align 8
  %tmpv.9 = alloca i64, align 8
  %tmpv.10 = alloca i64, align 8
  %tmpv.11 = alloca i64, align 8
  %0 = bitcast { i64*, i64, i64 }* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0)
  %cast.0 = bitcast [20 x i64]* %tmpv.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.0, i8* align 8 bitcast ([20 x i64]* @const.0 to i8*), i64 160, i1 false)
  %cast.1 = bitcast [20 x i64]* %tmpv.0 to i64*
  %field.0 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 0
  store i64* %cast.1, i64** %field.0, align 8
  %field.1 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 1
  store i64 1, i64* %field.1, align 8
  %field.2 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 2
  store i64 20, i64* %field.2, align 8
  %field.3 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 1
  %s.field.ld.0 = load i64, i64* %field.3, align 8
  store i64 %s.field.ld.0, i64* %tmpv.1, align 8
  %field.4 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 2
  %s.field.ld.1 = load i64, i64* %field.4, align 8
  store i64 %s.field.ld.1, i64* %tmpv.2, align 8
  %tmpv.1.ld.0 = load i64, i64* %tmpv.1, align 8
  %icmp.1 = icmp slt i64 0, %tmpv.1.ld.0
  %zext.1 = zext i1 %icmp.1 to i8
  %iand.0 = and i8 1, %zext.1
  %trunc.0 = trunc i8 %iand.0 to i1
  br i1 %trunc.0, label then.0, label else.0

then.0:                                           
  br label fallthrough.0

fallthrough.0:                                    
  %field.5 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 0
  %s.field.ld.2 = load i64*, i64** %field.5, align 8
  %ptroff.0 = getelementptr i64, i64* %s.field.ld.2, i64 0
  store i64 2, i64* %ptroff.0, align 8
  %cast.2 = bitcast { i64*, i64, i64 }* %tmpv.3 to i8*
  %cast.3 = bitcast { i64*, i64, i64 }* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.2, i8* align 8 %cast.3, i64 24, i1 false)
  %field.6 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 1
  %tmpv.3.field.ld.0 = load i64, i64* %field.6, align 8
  store i64 %tmpv.3.field.ld.0, i64* %tmpv.4, align 8
  %tmpv.4.ld.0 = load i64, i64* %tmpv.4, align 8
  %add.0 = add i64 %tmpv.4.ld.0, 1
  store i64 %add.0, i64* %tmpv.5, align 8
  %field.7 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 2
  %tmpv.3.field.ld.1 = load i64, i64* %field.7, align 8
  store i64 %tmpv.3.field.ld.1, i64* %tmpv.6, align 8
  %tmpv.5.ld.2 = load i64, i64* %tmpv.5, align 8
  %tmpv.6.ld.1 = load i64, i64* %tmpv.6, align 8
  %icmp.3 = icmp ugt i64 %tmpv.5.ld.2, %tmpv.6.ld.1
  %zext.3 = zext i1 %icmp.3 to i8
  %trunc.2 = trunc i8 %zext.3 to i1
  br i1 %trunc.2, label then.1, label else.1

else.0:                                           
  %tmpv.1.ld.1 = load i64, i64* %tmpv.1, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 0, i64 %tmpv.1.ld.1)
  unreachable

then.1:                                           
  %field.8 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 0
  %tmpv.3.field.ld.2 = load i64*, i64** %field.8, align 8
  %cast.7 = bitcast i64* %tmpv.3.field.ld.2 to i8*
  %tmpv.4.ld.1 = load i64, i64* %tmpv.4, align 8
  %tmpv.6.ld.0 = load i64, i64* %tmpv.6, align 8
  %tmpv.5.ld.0 = load i64, i64* %tmpv.5, align 8
  call void @runtime.growslice({ i8**, i64, i64 }* sret({ i8**, i64, i64 }) "go_sret" %sret.actual.0, i8* nest undef, %_type.0* @int..d, i8* %cast.7, i64 %tmpv.4.ld.1, i64 %tmpv.6.ld.0, i64 %tmpv.5.ld.0)
  %cast.8 = bitcast { i8**, i64, i64 }* %sret.actual.0 to { i64*, i64, i64 }*
  %cast.9 = bitcast { i64*, i64, i64 }* %s to i8*
  %cast.10 = bitcast { i64*, i64, i64 }* %cast.8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.9, i8* align 8 %cast.10, i64 24, i1 false)
  br label fallthrough.1

fallthrough.1:                                    
  %cast.11 = bitcast { i64*, i64, i64 }* %tmpv.3 to i8*
  %cast.12 = bitcast { i64*, i64, i64 }* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.11, i8* align 8 %cast.12, i64 24, i1 false)
  %tmpv.4.ld.2 = load i64, i64* %tmpv.4, align 8
  %add.1 = add i64 %tmpv.4.ld.2, 0
  store i64 %add.1, i64* %tmpv.8, align 8
  %field.15 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 0
  %tmpv.3.field.ld.5 = load i64*, i64** %field.15, align 8
  %tmpv.8.ld.0 = load i64, i64* %tmpv.8, align 8
  %ptroff.2 = getelementptr i64, i64* %tmpv.3.field.ld.5, i64 %tmpv.8.ld.0
  store i64 14, i64* %ptroff.2, align 8
  %field.16 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 1
  %s.field.ld.3 = load i64, i64* %field.16, align 8
  store i64 %s.field.ld.3, i64* %tmpv.9, align 8
  %field.17 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 2
  %s.field.ld.4 = load i64, i64* %field.17, align 8
  store i64 %s.field.ld.4, i64* %tmpv.10, align 8
  %tmpv.9.ld.0 = load i64, i64* %tmpv.9, align 8
  %icmp.5 = icmp slt i64 1, %tmpv.9.ld.0
  %zext.5 = zext i1 %icmp.5 to i8
  %iand.1 = and i8 1, %zext.5
  %trunc.3 = trunc i8 %iand.1 to i1
  br i1 %trunc.3, label then.3, label else.3

else.1:                                           
  %field.9 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 0
  %tmpv.3.field.ld.4 = load i64*, i64** %field.9, align 8
  %field.10 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 2
  %tmpv.3.field.ld.3 = load i64, i64* %field.10, align 8
  %sub.0 = sub i64 %tmpv.3.field.ld.3, 0
  %icmp.2 = icmp eq i64 %sub.0, 0
  %zext.2 = zext i1 %icmp.2 to i8
  %trunc.1 = trunc i8 %zext.2 to i1
  br i1 %trunc.1, label then.2, label else.2

then.2:                                           
  store i64 0, i64* %tmpv.7, align 8
  br label fallthrough.2

fallthrough.2:                                    
  %tmpv.7.ld.0 = load i64, i64* %tmpv.7, align 8
  %ptroff.1 = getelementptr i64, i64* %tmpv.3.field.ld.4, i64 %tmpv.7.ld.0
  %tmpv.5.ld.1 = load i64, i64* %tmpv.5, align 8
  %sub.1 = sub i64 %tmpv.5.ld.1, 0
  %field.11 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 2
  %.field.ld.0 = load i64, i64* %field.11, align 8
  %sub.2 = sub i64 %.field.ld.0, 0
  %field.12 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 0
  store i64* %ptroff.1, i64** %field.12, align 8
  %field.13 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 1
  store i64 %sub.1, i64* %field.13, align 8
  %field.14 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 2
  store i64 %sub.2, i64* %field.14, align 8
  br label fallthrough.1

else.2:                                           
  store i64 0, i64* %tmpv.7, align 8
  br label fallthrough.2

then.3:                                           
  br label fallthrough.3

fallthrough.3:                                    
  %field.18 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %s, i32 0, i32 0
  %s.field.ld.5 = load i64*, i64** %field.18, align 8
  %ptroff.3 = getelementptr i64, i64* %s.field.ld.5, i64 1
  %.ptroff.ld.0 = load i64, i64* %ptroff.3, align 8
  store i64 %.ptroff.ld.0, i64* %tmpv.11, align 8
  call void @runtime.printlock(i8* nest undef)
  %tmpv.11.ld.0 = load i64, i64* %tmpv.11, align 8
  call void @runtime.printint(i8* nest undef, i64 %tmpv.11.ld.0)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  %1 = bitcast { i64*, i64, i64 }* %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %1)
  ret void

else.3:                                           
  %tmpv.9.ld.1 = load i64, i64* %tmpv.9, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 1, i64 %tmpv.9.ld.1)
  unreachable
}

declare void @runtime.growslice({ i8**, i64, i64 }*, i8*, %_type.0*, i8*, i64, i64, i64) #5

declare void @runtime.printlock(i8*) #0

declare void @runtime.printint(i8*, i64) #0

declare void @runtime.printnl(i8*) #0

declare void @runtime.printunlock(i8*) #0


!llvm.module.flags = !{!0, !1, !2}


