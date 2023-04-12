; ModuleID = 'main.ll'
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

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest %nest.6, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret2" = alloca i8, align 1
  %tmpv.18 = alloca { %functionDescriptor.0, i32 }*, align 8
  %tmpv.19 = alloca { %functionDescriptor.0, i32 }*, align 8
  %tmpv.20 = alloca %functionDescriptor.0, align 8
  %tmpv.21 = alloca %functionDescriptor.0, align 8
  %tmpv.22 = alloca i8, align 1
  %tmpv.23 = alloca { %functionDescriptor.0, i32 }*, align 8
  %tmpv.24 = alloca %functionDescriptor.0, align 8
  %tmpv.25 = alloca { %functionDescriptor.0, i32 }*, align 8
  %tmpv.26 = alloca %functionDescriptor.0, align 8
  %tmpv.27 = alloca { %functionDescriptor.0, i32 }*, align 8
  %tmpv.28 = alloca { %functionDescriptor.0, i32 }*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret2")
  store i8 0, i8* %"$ret2", align 1
  %key1.ld.0 = load i8*, i8** %key1.addr, align 8
  %cast.20 = bitcast i8* %key1.ld.0 to { %functionDescriptor.0, i32 }*
  store { %functionDescriptor.0, i32 }* %cast.20, { %functionDescriptor.0, i32 }** %tmpv.18, align 8
  %key2.ld.0 = load i8*, i8** %key2.addr, align 8
  %cast.21 = bitcast i8* %key2.ld.0 to { %functionDescriptor.0, i32 }*
  store { %functionDescriptor.0, i32 }* %cast.21, { %functionDescriptor.0, i32 }** %tmpv.19, align 8
  store i8 1, i8* %tmpv.22, align 1
  %tmpv.22.ld.0 = load i8, i8* %tmpv.22, align 1
  %trunc.10 = trunc i8 %tmpv.22.ld.0 to i1
  br i1 %trunc.10, label %then.8, label %else.8

then.8:                                           ; preds = %entry
  %tmpv.18.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.18, align 8
  %icmp.10 = icmp eq { %functionDescriptor.0, i32 }* %tmpv.18.ld.0, null
  %zext.10 = zext i1 %icmp.10 to i8
  %trunc.8 = trunc i8 %zext.10 to i1
  br i1 %trunc.8, label %then.9, label %else.9, !make.implicit !3

fallthrough.8:                                    ; preds = %fallthrough.10, %else.8
  %tmpv.22.ld.1 = load i8, i8* %tmpv.22, align 1
  %icmp.13 = icmp ne i8 %tmpv.22.ld.1, 0
  %xor.0 = xor i1 %icmp.13, true
  %zext.13 = zext i1 %xor.0 to i8
  %trunc.11 = trunc i8 %zext.13 to i1
  br i1 %trunc.11, label %then.11, label %else.11

else.8:                                           ; preds = %entry
  br label %fallthrough.8

then.9:                                           ; preds = %then.8
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.9:                                    ; preds = %else.9
  %tmpv.23.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.23, align 8
  %field.23 = getelementptr inbounds { %functionDescriptor.0, i32 }, { %functionDescriptor.0, i32 }* %tmpv.23.ld.0, i32 0, i32 0
  %cast.23 = bitcast %functionDescriptor.0* %tmpv.20 to i8*
  %cast.24 = bitcast %functionDescriptor.0* %field.23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.23, i8* align 8 %cast.24, i64 8, i1 false)
  %cast.25 = bitcast %functionDescriptor.0* %tmpv.24 to i8*
  %cast.26 = bitcast %functionDescriptor.0* %tmpv.20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.25, i8* align 8 %cast.26, i64 8, i1 false)
  %tmpv.19.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.19, align 8
  %icmp.11 = icmp eq { %functionDescriptor.0, i32 }* %tmpv.19.ld.0, null
  %zext.11 = zext i1 %icmp.11 to i8
  %trunc.9 = trunc i8 %zext.11 to i1
  br i1 %trunc.9, label %then.10, label %else.10, !make.implicit !3

else.9:                                           ; preds = %then.8
  %.ld.4 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.18, align 8
  store { %functionDescriptor.0, i32 }* %.ld.4, { %functionDescriptor.0, i32 }** %tmpv.23, align 8
  br label %fallthrough.9

then.10:                                          ; preds = %fallthrough.9
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.10:                                   ; preds = %else.10
  %tmpv.25.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.25, align 8
  %field.24 = getelementptr inbounds { %functionDescriptor.0, i32 }, { %functionDescriptor.0, i32 }* %tmpv.25.ld.0, i32 0, i32 0
  %cast.28 = bitcast %functionDescriptor.0* %tmpv.21 to i8*
  %cast.29 = bitcast %functionDescriptor.0* %field.24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.28, i8* align 8 %cast.29, i64 8, i1 false)
  %cast.30 = bitcast %functionDescriptor.0* %tmpv.26 to i8*
  %cast.31 = bitcast %functionDescriptor.0* %tmpv.21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.30, i8* align 8 %cast.31, i64 8, i1 false)
  %field.25 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.24, i32 0, i32 0
  %tmpv.24.field.ld.0 = load i64, i64* %field.25, align 8
  %field.26 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.26, i32 0, i32 0
  %tmpv.26.field.ld.0 = load i64, i64* %field.26, align 8
  %icmp.12 = icmp eq i64 %tmpv.24.field.ld.0, %tmpv.26.field.ld.0
  %zext.12 = zext i1 %icmp.12 to i8
  store i8 %zext.12, i8* %tmpv.22, align 1
  br label %fallthrough.8

else.10:                                          ; preds = %fallthrough.9
  %.ld.5 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.19, align 8
  store { %functionDescriptor.0, i32 }* %.ld.5, { %functionDescriptor.0, i32 }** %tmpv.25, align 8
  br label %fallthrough.10

then.11:                                          ; preds = %fallthrough.8
  store i8 0, i8* %"$ret2", align 1
  %"$ret2.ld.0" = load i8, i8* %"$ret2", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret2")
  ret i8 %"$ret2.ld.0"

fallthrough.11:                                   ; preds = %else.11
  %tmpv.18.ld.1 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.18, align 8
  %icmp.14 = icmp eq { %functionDescriptor.0, i32 }* %tmpv.18.ld.1, null
  %zext.14 = zext i1 %icmp.14 to i8
  %trunc.12 = trunc i8 %zext.14 to i1
  br i1 %trunc.12, label %then.12, label %else.12, !make.implicit !3

else.11:                                          ; preds = %fallthrough.8
  br label %fallthrough.11

then.12:                                          ; preds = %fallthrough.11
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.12:                                   ; preds = %else.12
  %tmpv.27.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.27, align 8
  %field.27 = getelementptr inbounds { %functionDescriptor.0, i32 }, { %functionDescriptor.0, i32 }* %tmpv.27.ld.0, i32 0, i32 1
  %.field.ld.1 = load i32, i32* %field.27, align 4
  %tmpv.19.ld.1 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.19, align 8
  %icmp.15 = icmp eq { %functionDescriptor.0, i32 }* %tmpv.19.ld.1, null
  %zext.15 = zext i1 %icmp.15 to i8
  %trunc.13 = trunc i8 %zext.15 to i1
  br i1 %trunc.13, label %then.13, label %else.13, !make.implicit !3

else.12:                                          ; preds = %fallthrough.11
  %.ld.6 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.18, align 8
  store { %functionDescriptor.0, i32 }* %.ld.6, { %functionDescriptor.0, i32 }** %tmpv.27, align 8
  br label %fallthrough.12

then.13:                                          ; preds = %fallthrough.12
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.13:                                   ; preds = %else.13
  %tmpv.28.ld.0 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.28, align 8
  %field.28 = getelementptr inbounds { %functionDescriptor.0, i32 }, { %functionDescriptor.0, i32 }* %tmpv.28.ld.0, i32 0, i32 1
  %.field.ld.2 = load i32, i32* %field.28, align 4
  %icmp.16 = icmp ne i32 %.field.ld.1, %.field.ld.2
  %zext.16 = zext i1 %icmp.16 to i8
  %trunc.14 = trunc i8 %zext.16 to i1
  br i1 %trunc.14, label %then.14, label %else.14

else.13:                                          ; preds = %fallthrough.12
  %.ld.7 = load { %functionDescriptor.0, i32 }*, { %functionDescriptor.0, i32 }** %tmpv.19, align 8
  store { %functionDescriptor.0, i32 }* %.ld.7, { %functionDescriptor.0, i32 }** %tmpv.28, align 8
  br label %fallthrough.13

then.14:                                          ; preds = %fallthrough.13
  store i8 0, i8* %"$ret2", align 1
  %"$ret2.ld.1" = load i8, i8* %"$ret2", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret2")
  ret i8 %"$ret2.ld.1"

fallthrough.14:                                   ; preds = %else.14
  store i8 1, i8* %"$ret2", align 1
  %"$ret2.ld.2" = load i8, i8* %"$ret2", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret2")
  ret i8 %"$ret2.ld.2"

else.14:                                          ; preds = %fallthrough.13
  br label %fallthrough.14
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noreturn
declare void @runtime.panicmem(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

define i8 @main._632_7uintptr..eq(i8* nest %nest.7, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret3" = alloca i8, align 1
  %tmpv.29 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret3")
  store i8 0, i8* %"$ret3", align 1
  %key1.ld.1 = load i8*, i8** %key1.addr, align 8
  %key2.ld.1 = load i8*, i8** %key2.addr, align 8
  %call.2 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.1, i8* %key2.ld.1, i64 256)
  store i8 %call.2, i8* %tmpv.29, align 1
  %tmpv.29.ld.0 = load i8, i8* %tmpv.29, align 1
  store i8 %tmpv.29.ld.0, i8* %"$ret3", align 1
  %"$ret3.ld.0" = load i8, i8* %"$ret3", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret3")
  ret i8 %"$ret3.ld.0"
}

; Function Attrs: argmemonly readonly
declare i8 @runtime.memequal(i8*, i8*, i8*, i64) #4

define i8 @main._6256_7uint64..eq(i8* nest %nest.8, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret4" = alloca i8, align 1
  %tmpv.30 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret4")
  store i8 0, i8* %"$ret4", align 1
  %key1.ld.2 = load i8*, i8** %key1.addr, align 8
  %key2.ld.2 = load i8*, i8** %key2.addr, align 8
  %call.3 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.2, i8* %key2.ld.2, i64 2048)
  store i8 %call.3, i8* %tmpv.30, align 1
  %tmpv.30.ld.0 = load i8, i8* %tmpv.30, align 1
  store i8 %tmpv.30.ld.0, i8* %"$ret4", align 1
  %"$ret4.ld.0" = load i8, i8* %"$ret4", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret4")
  ret i8 %"$ret4.ld.0"
}

define i8 @main._661_7struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest %nest.9, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret5" = alloca i8, align 1
  %tmpv.31 = alloca [61 x { i32, i64, i64 }]*, align 8
  %tmpv.32 = alloca [61 x { i32, i64, i64 }]*, align 8
  %tmpv.33 = alloca i64, align 8
  %tmpv.34 = alloca i64, align 8
  %tmpv.35 = alloca i64, align 8
  %tmpv.36 = alloca { i32, i64, i64 }, align 8
  %tmpv.37 = alloca { i32, i64, i64 }, align 8
  %tmpv.38 = alloca i8, align 1
  %tmpv.39 = alloca [61 x { i32, i64, i64 }]*, align 8
  %tmpv.40 = alloca { i32, i64, i64 }, align 8
  %tmpv.41 = alloca [61 x { i32, i64, i64 }]*, align 8
  %tmpv.42 = alloca { i32, i64, i64 }, align 8
  %tmpv.43 = alloca i8, align 1
  %tmpv.44 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret5")
  store i8 0, i8* %"$ret5", align 1
  %key1.ld.3 = load i8*, i8** %key1.addr, align 8
  %cast.34 = bitcast i8* %key1.ld.3 to [61 x { i32, i64, i64 }]*
  store [61 x { i32, i64, i64 }]* %cast.34, [61 x { i32, i64, i64 }]** %tmpv.31, align 8
  %key2.ld.3 = load i8*, i8** %key2.addr, align 8
  %cast.35 = bitcast i8* %key2.ld.3 to [61 x { i32, i64, i64 }]*
  store [61 x { i32, i64, i64 }]* %cast.35, [61 x { i32, i64, i64 }]** %tmpv.32, align 8
  store i64 61, i64* %tmpv.35, align 8
  store i64 0, i64* %tmpv.34, align 8
  br label %label.0

label.0:                                          ; preds = %fallthrough.22, %entry
  %tmpv.34.ld.2 = load i64, i64* %tmpv.34, align 8
  %tmpv.35.ld.0 = load i64, i64* %tmpv.35, align 8
  %icmp.27 = icmp slt i64 %tmpv.34.ld.2, %tmpv.35.ld.0
  %zext.27 = zext i1 %icmp.27 to i8
  %trunc.23 = trunc i8 %zext.27 to i1
  br i1 %trunc.23, label %then.23, label %else.23

label.1:                                          ; preds = %then.23
  %tmpv.34.ld.0 = load i64, i64* %tmpv.34, align 8
  store i64 %tmpv.34.ld.0, i64* %tmpv.33, align 8
  store i8 1, i8* %tmpv.38, align 1
  %tmpv.38.ld.0 = load i8, i8* %tmpv.38, align 1
  %trunc.19 = trunc i8 %tmpv.38.ld.0 to i1
  br i1 %trunc.19, label %then.15, label %else.15

then.15:                                          ; preds = %label.1
  %tmpv.33.ld.0 = load i64, i64* %tmpv.33, align 8
  %icmp.17 = icmp sge i64 %tmpv.33.ld.0, 0
  %zext.17 = zext i1 %icmp.17 to i8
  %tmpv.33.ld.1 = load i64, i64* %tmpv.33, align 8
  %icmp.18 = icmp slt i64 %tmpv.33.ld.1, 61
  %zext.18 = zext i1 %icmp.18 to i8
  %iand.2 = and i8 %zext.17, %zext.18
  %trunc.15 = trunc i8 %iand.2 to i1
  br i1 %trunc.15, label %then.16, label %else.16

fallthrough.15:                                   ; preds = %fallthrough.19, %else.15
  %tmpv.38.ld.1 = load i8, i8* %tmpv.38, align 1
  store i8 %tmpv.38.ld.1, i8* %tmpv.43, align 1
  %tmpv.43.ld.0 = load i8, i8* %tmpv.43, align 1
  %trunc.20 = trunc i8 %tmpv.43.ld.0 to i1
  br i1 %trunc.20, label %then.20, label %else.20

else.15:                                          ; preds = %label.1
  br label %fallthrough.15

then.16:                                          ; preds = %then.15
  br label %fallthrough.16

fallthrough.16:                                   ; preds = %then.16
  %tmpv.31.ld.0 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.31, align 8
  %icmp.19 = icmp eq [61 x { i32, i64, i64 }]* %tmpv.31.ld.0, null
  %zext.19 = zext i1 %icmp.19 to i8
  %trunc.16 = trunc i8 %zext.19 to i1
  br i1 %trunc.16, label %then.17, label %else.17, !make.implicit !3

else.16:                                          ; preds = %then.15
  %tmpv.33.ld.2 = load i64, i64* %tmpv.33, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.33.ld.2, i64 61)
  unreachable

then.17:                                          ; preds = %fallthrough.16
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.17:                                   ; preds = %else.17
  %tmpv.39.ld.0 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.39, align 8
  %tmpv.33.ld.3 = load i64, i64* %tmpv.33, align 8
  %index.0 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %tmpv.39.ld.0, i32 0, i64 %tmpv.33.ld.3
  %cast.37 = bitcast { i32, i64, i64 }* %tmpv.36 to i8*
  %cast.38 = bitcast { i32, i64, i64 }* %index.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.37, i8* align 8 %cast.38, i64 24, i1 false)
  %cast.39 = bitcast { i32, i64, i64 }* %tmpv.40 to i8*
  %cast.40 = bitcast { i32, i64, i64 }* %tmpv.36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.39, i8* align 8 %cast.40, i64 24, i1 false)
  %tmpv.33.ld.4 = load i64, i64* %tmpv.33, align 8
  %icmp.20 = icmp sge i64 %tmpv.33.ld.4, 0
  %zext.20 = zext i1 %icmp.20 to i8
  %tmpv.33.ld.5 = load i64, i64* %tmpv.33, align 8
  %icmp.21 = icmp slt i64 %tmpv.33.ld.5, 61
  %zext.21 = zext i1 %icmp.21 to i8
  %iand.3 = and i8 %zext.20, %zext.21
  %trunc.17 = trunc i8 %iand.3 to i1
  br i1 %trunc.17, label %then.18, label %else.18

else.17:                                          ; preds = %fallthrough.16
  %.ld.8 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.31, align 8
  store [61 x { i32, i64, i64 }]* %.ld.8, [61 x { i32, i64, i64 }]** %tmpv.39, align 8
  br label %fallthrough.17

then.18:                                          ; preds = %fallthrough.17
  br label %fallthrough.18

fallthrough.18:                                   ; preds = %then.18
  %tmpv.32.ld.0 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.32, align 8
  %icmp.22 = icmp eq [61 x { i32, i64, i64 }]* %tmpv.32.ld.0, null
  %zext.22 = zext i1 %icmp.22 to i8
  %trunc.18 = trunc i8 %zext.22 to i1
  br i1 %trunc.18, label %then.19, label %else.19, !make.implicit !3

else.18:                                          ; preds = %fallthrough.17
  %tmpv.33.ld.6 = load i64, i64* %tmpv.33, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.33.ld.6, i64 61)
  unreachable

then.19:                                          ; preds = %fallthrough.18
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.19:                                   ; preds = %else.19
  %tmpv.41.ld.0 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.41, align 8
  %tmpv.33.ld.7 = load i64, i64* %tmpv.33, align 8
  %index.1 = getelementptr [61 x { i32, i64, i64 }], [61 x { i32, i64, i64 }]* %tmpv.41.ld.0, i32 0, i64 %tmpv.33.ld.7
  %cast.42 = bitcast { i32, i64, i64 }* %tmpv.37 to i8*
  %cast.43 = bitcast { i32, i64, i64 }* %index.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.42, i8* align 8 %cast.43, i64 24, i1 false)
  %cast.44 = bitcast { i32, i64, i64 }* %tmpv.42 to i8*
  %cast.45 = bitcast { i32, i64, i64 }* %tmpv.37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.44, i8* align 8 %cast.45, i64 24, i1 false)
  %field.29 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.40, i32 0, i32 0
  %tmpv.40.field.ld.0 = load i32, i32* %field.29, align 4
  %field.30 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.42, i32 0, i32 0
  %tmpv.42.field.ld.0 = load i32, i32* %field.30, align 4
  %icmp.23 = icmp eq i32 %tmpv.40.field.ld.0, %tmpv.42.field.ld.0
  %zext.23 = zext i1 %icmp.23 to i8
  store i8 %zext.23, i8* %tmpv.38, align 1
  br label %fallthrough.15

else.19:                                          ; preds = %fallthrough.18
  %.ld.9 = load [61 x { i32, i64, i64 }]*, [61 x { i32, i64, i64 }]** %tmpv.32, align 8
  store [61 x { i32, i64, i64 }]* %.ld.9, [61 x { i32, i64, i64 }]** %tmpv.41, align 8
  br label %fallthrough.19

then.20:                                          ; preds = %fallthrough.15
  %field.31 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.36, i32 0, i32 1
  %tmpv.36.field.ld.0 = load i64, i64* %field.31, align 8
  %field.32 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.37, i32 0, i32 1
  %tmpv.37.field.ld.0 = load i64, i64* %field.32, align 8
  %icmp.24 = icmp eq i64 %tmpv.36.field.ld.0, %tmpv.37.field.ld.0
  %zext.24 = zext i1 %icmp.24 to i8
  store i8 %zext.24, i8* %tmpv.43, align 1
  br label %fallthrough.20

fallthrough.20:                                   ; preds = %else.20, %then.20
  %tmpv.43.ld.1 = load i8, i8* %tmpv.43, align 1
  store i8 %tmpv.43.ld.1, i8* %tmpv.44, align 1
  %tmpv.44.ld.0 = load i8, i8* %tmpv.44, align 1
  %trunc.21 = trunc i8 %tmpv.44.ld.0 to i1
  br i1 %trunc.21, label %then.21, label %else.21

else.20:                                          ; preds = %fallthrough.15
  br label %fallthrough.20

then.21:                                          ; preds = %fallthrough.20
  %field.33 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.36, i32 0, i32 2
  %tmpv.36.field.ld.1 = load i64, i64* %field.33, align 8
  %field.34 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.37, i32 0, i32 2
  %tmpv.37.field.ld.1 = load i64, i64* %field.34, align 8
  %icmp.25 = icmp eq i64 %tmpv.36.field.ld.1, %tmpv.37.field.ld.1
  %zext.25 = zext i1 %icmp.25 to i8
  store i8 %zext.25, i8* %tmpv.44, align 1
  br label %fallthrough.21

fallthrough.21:                                   ; preds = %else.21, %then.21
  %tmpv.44.ld.1 = load i8, i8* %tmpv.44, align 1
  %icmp.26 = icmp ne i8 %tmpv.44.ld.1, 0
  %xor.1 = xor i1 %icmp.26, true
  %zext.26 = zext i1 %xor.1 to i8
  %trunc.22 = trunc i8 %zext.26 to i1
  br i1 %trunc.22, label %then.22, label %else.22

else.21:                                          ; preds = %fallthrough.20
  br label %fallthrough.21

then.22:                                          ; preds = %fallthrough.21
  store i8 0, i8* %"$ret5", align 1
  %"$ret5.ld.0" = load i8, i8* %"$ret5", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret5")
  ret i8 %"$ret5.ld.0"

fallthrough.22:                                   ; preds = %else.22
  %tmpv.34.ld.1 = load i64, i64* %tmpv.34, align 8
  %add.2 = add i64 %tmpv.34.ld.1, 1
  store i64 %add.2, i64* %tmpv.34, align 8
  br label %label.0

else.22:                                          ; preds = %fallthrough.21
  br label %fallthrough.22

then.23:                                          ; preds = %label.0
  br label %label.1

fallthrough.23:                                   ; preds = %else.23
  store i8 1, i8* %"$ret5", align 1
  %"$ret5.ld.1" = load i8, i8* %"$ret5", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret5")
  ret i8 %"$ret5.ld.1"

else.23:                                          ; preds = %label.0
  br label %fallthrough.23
}

; Function Attrs: noreturn
declare void @runtime.goPanicIndex(i8*, i64, i64) #2

define i8 @main.struct_4Size_buint32_cMallocs_buint64_cFrees_buint64_5..eq(i8* nest %nest.10, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret6" = alloca i8, align 1
  %tmpv.45 = alloca { i32, i64, i64 }*, align 8
  %tmpv.46 = alloca { i32, i64, i64 }*, align 8
  %tmpv.47 = alloca { i32, i64, i64 }*, align 8
  %tmpv.48 = alloca { i32, i64, i64 }*, align 8
  %tmpv.49 = alloca { i32, i64, i64 }*, align 8
  %tmpv.50 = alloca { i32, i64, i64 }*, align 8
  %tmpv.51 = alloca { i32, i64, i64 }*, align 8
  %tmpv.52 = alloca { i32, i64, i64 }*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret6")
  store i8 0, i8* %"$ret6", align 1
  %key1.ld.4 = load i8*, i8** %key1.addr, align 8
  %cast.46 = bitcast i8* %key1.ld.4 to { i32, i64, i64 }*
  store { i32, i64, i64 }* %cast.46, { i32, i64, i64 }** %tmpv.45, align 8
  %key2.ld.4 = load i8*, i8** %key2.addr, align 8
  %cast.47 = bitcast i8* %key2.ld.4 to { i32, i64, i64 }*
  store { i32, i64, i64 }* %cast.47, { i32, i64, i64 }** %tmpv.46, align 8
  %tmpv.45.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  %icmp.28 = icmp eq { i32, i64, i64 }* %tmpv.45.ld.0, null
  %zext.28 = zext i1 %icmp.28 to i8
  %trunc.24 = trunc i8 %zext.28 to i1
  br i1 %trunc.24, label %then.24, label %else.24, !make.implicit !3

then.24:                                          ; preds = %entry
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.24:                                   ; preds = %else.24
  %tmpv.47.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.47, align 8
  %field.35 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.47.ld.0, i32 0, i32 0
  %.field.ld.3 = load i32, i32* %field.35, align 4
  %tmpv.46.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  %icmp.29 = icmp eq { i32, i64, i64 }* %tmpv.46.ld.0, null
  %zext.29 = zext i1 %icmp.29 to i8
  %trunc.25 = trunc i8 %zext.29 to i1
  br i1 %trunc.25, label %then.25, label %else.25, !make.implicit !3

else.24:                                          ; preds = %entry
  %.ld.10 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  store { i32, i64, i64 }* %.ld.10, { i32, i64, i64 }** %tmpv.47, align 8
  br label %fallthrough.24

then.25:                                          ; preds = %fallthrough.24
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.25:                                   ; preds = %else.25
  %tmpv.48.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.48, align 8
  %field.36 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.48.ld.0, i32 0, i32 0
  %.field.ld.4 = load i32, i32* %field.36, align 4
  %icmp.30 = icmp ne i32 %.field.ld.3, %.field.ld.4
  %zext.30 = zext i1 %icmp.30 to i8
  %trunc.26 = trunc i8 %zext.30 to i1
  br i1 %trunc.26, label %then.26, label %else.26

else.25:                                          ; preds = %fallthrough.24
  %.ld.11 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  store { i32, i64, i64 }* %.ld.11, { i32, i64, i64 }** %tmpv.48, align 8
  br label %fallthrough.25

then.26:                                          ; preds = %fallthrough.25
  store i8 0, i8* %"$ret6", align 1
  %"$ret6.ld.0" = load i8, i8* %"$ret6", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret6")
  ret i8 %"$ret6.ld.0"

fallthrough.26:                                   ; preds = %else.26
  %tmpv.45.ld.1 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  %icmp.31 = icmp eq { i32, i64, i64 }* %tmpv.45.ld.1, null
  %zext.31 = zext i1 %icmp.31 to i8
  %trunc.27 = trunc i8 %zext.31 to i1
  br i1 %trunc.27, label %then.27, label %else.27, !make.implicit !3

else.26:                                          ; preds = %fallthrough.25
  br label %fallthrough.26

then.27:                                          ; preds = %fallthrough.26
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.27:                                   ; preds = %else.27
  %tmpv.49.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.49, align 8
  %field.37 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.49.ld.0, i32 0, i32 1
  %.field.ld.5 = load i64, i64* %field.37, align 8
  %tmpv.46.ld.1 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  %icmp.32 = icmp eq { i32, i64, i64 }* %tmpv.46.ld.1, null
  %zext.32 = zext i1 %icmp.32 to i8
  %trunc.28 = trunc i8 %zext.32 to i1
  br i1 %trunc.28, label %then.28, label %else.28, !make.implicit !3

else.27:                                          ; preds = %fallthrough.26
  %.ld.12 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  store { i32, i64, i64 }* %.ld.12, { i32, i64, i64 }** %tmpv.49, align 8
  br label %fallthrough.27

then.28:                                          ; preds = %fallthrough.27
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.28:                                   ; preds = %else.28
  %tmpv.50.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.50, align 8
  %field.38 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.50.ld.0, i32 0, i32 1
  %.field.ld.6 = load i64, i64* %field.38, align 8
  %icmp.33 = icmp ne i64 %.field.ld.5, %.field.ld.6
  %zext.33 = zext i1 %icmp.33 to i8
  %trunc.29 = trunc i8 %zext.33 to i1
  br i1 %trunc.29, label %then.29, label %else.29

else.28:                                          ; preds = %fallthrough.27
  %.ld.13 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  store { i32, i64, i64 }* %.ld.13, { i32, i64, i64 }** %tmpv.50, align 8
  br label %fallthrough.28

then.29:                                          ; preds = %fallthrough.28
  store i8 0, i8* %"$ret6", align 1
  %"$ret6.ld.1" = load i8, i8* %"$ret6", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret6")
  ret i8 %"$ret6.ld.1"

fallthrough.29:                                   ; preds = %else.29
  %tmpv.45.ld.2 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  %icmp.34 = icmp eq { i32, i64, i64 }* %tmpv.45.ld.2, null
  %zext.34 = zext i1 %icmp.34 to i8
  %trunc.30 = trunc i8 %zext.34 to i1
  br i1 %trunc.30, label %then.30, label %else.30, !make.implicit !3

else.29:                                          ; preds = %fallthrough.28
  br label %fallthrough.29

then.30:                                          ; preds = %fallthrough.29
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.30:                                   ; preds = %else.30
  %tmpv.51.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.51, align 8
  %field.39 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.51.ld.0, i32 0, i32 2
  %.field.ld.7 = load i64, i64* %field.39, align 8
  %tmpv.46.ld.2 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  %icmp.35 = icmp eq { i32, i64, i64 }* %tmpv.46.ld.2, null
  %zext.35 = zext i1 %icmp.35 to i8
  %trunc.31 = trunc i8 %zext.35 to i1
  br i1 %trunc.31, label %then.31, label %else.31, !make.implicit !3

else.30:                                          ; preds = %fallthrough.29
  %.ld.14 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.45, align 8
  store { i32, i64, i64 }* %.ld.14, { i32, i64, i64 }** %tmpv.51, align 8
  br label %fallthrough.30

then.31:                                          ; preds = %fallthrough.30
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.31:                                   ; preds = %else.31
  %tmpv.52.ld.0 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.52, align 8
  %field.40 = getelementptr inbounds { i32, i64, i64 }, { i32, i64, i64 }* %tmpv.52.ld.0, i32 0, i32 2
  %.field.ld.8 = load i64, i64* %field.40, align 8
  %icmp.36 = icmp ne i64 %.field.ld.7, %.field.ld.8
  %zext.36 = zext i1 %icmp.36 to i8
  %trunc.32 = trunc i8 %zext.36 to i1
  br i1 %trunc.32, label %then.32, label %else.32

else.31:                                          ; preds = %fallthrough.30
  %.ld.15 = load { i32, i64, i64 }*, { i32, i64, i64 }** %tmpv.46, align 8
  store { i32, i64, i64 }* %.ld.15, { i32, i64, i64 }** %tmpv.52, align 8
  br label %fallthrough.31

then.32:                                          ; preds = %fallthrough.31
  store i8 0, i8* %"$ret6", align 1
  %"$ret6.ld.2" = load i8, i8* %"$ret6", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret6")
  ret i8 %"$ret6.ld.2"

fallthrough.32:                                   ; preds = %else.32
  store i8 1, i8* %"$ret6", align 1
  %"$ret6.ld.3" = load i8, i8* %"$ret6", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret6")
  ret i8 %"$ret6.ld.3"

else.32:                                          ; preds = %fallthrough.31
  br label %fallthrough.32
}

define i8 @main._6122_7uintptr..eq(i8* nest %nest.11, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret7" = alloca i8, align 1
  %tmpv.53 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret7")
  store i8 0, i8* %"$ret7", align 1
  %key1.ld.5 = load i8*, i8** %key1.addr, align 8
  %key2.ld.5 = load i8*, i8** %key2.addr, align 8
  %call.4 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.5, i8* %key2.ld.5, i64 976)
  store i8 %call.4, i8* %tmpv.53, align 1
  %tmpv.53.ld.0 = load i8, i8* %tmpv.53, align 1
  store i8 %tmpv.53.ld.0, i8* %"$ret7", align 1
  %"$ret7.ld.0" = load i8, i8* %"$ret7", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret7")
  ret i8 %"$ret7.ld.0"
}

define i8 @main._68_7uint64..eq(i8* nest %nest.12, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret8" = alloca i8, align 1
  %tmpv.54 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret8")
  store i8 0, i8* %"$ret8", align 1
  %key1.ld.6 = load i8*, i8** %key1.addr, align 8
  %key2.ld.6 = load i8*, i8** %key2.addr, align 8
  %call.5 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.6, i8* %key2.ld.6, i64 64)
  store i8 %call.5, i8* %tmpv.54, align 1
  %tmpv.54.ld.0 = load i8, i8* %tmpv.54, align 1
  store i8 %tmpv.54.ld.0, i8* %"$ret8", align 1
  %"$ret8.ld.0" = load i8, i8* %"$ret8", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret8")
  ret i8 %"$ret8.ld.0"
}

define i8 @main._6128_7uint8..eq(i8* nest %nest.13, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret9" = alloca i8, align 1
  %tmpv.55 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret9")
  store i8 0, i8* %"$ret9", align 1
  %key1.ld.7 = load i8*, i8** %key1.addr, align 8
  %key2.ld.7 = load i8*, i8** %key2.addr, align 8
  %call.6 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.7, i8* %key2.ld.7, i64 128)
  store i8 %call.6, i8* %tmpv.55, align 1
  %tmpv.55.ld.0 = load i8, i8* %tmpv.55, align 1
  store i8 %tmpv.55.ld.0, i8* %"$ret9", align 1
  %"$ret9.ld.0" = load i8, i8* %"$ret9", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret9")
  ret i8 %"$ret9.ld.0"
}

define i8 @main._64096_7uint8..eq(i8* nest %nest.14, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret10" = alloca i8, align 1
  %tmpv.56 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret10")
  store i8 0, i8* %"$ret10", align 1
  %key1.ld.8 = load i8*, i8** %key1.addr, align 8
  %key2.ld.8 = load i8*, i8** %key2.addr, align 8
  %call.7 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.8, i8* %key2.ld.8, i64 4096)
  store i8 %call.7, i8* %tmpv.56, align 1
  %tmpv.56.ld.0 = load i8, i8* %tmpv.56, align 1
  store i8 %tmpv.56.ld.0, i8* %"$ret10", align 1
  %"$ret10.ld.0" = load i8, i8* %"$ret10", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret10")
  ret i8 %"$ret10.ld.0"
}

define i8 @main._668_7uint16..eq(i8* nest %nest.15, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret11" = alloca i8, align 1
  %tmpv.57 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret11")
  store i8 0, i8* %"$ret11", align 1
  %key1.ld.9 = load i8*, i8** %key1.addr, align 8
  %key2.ld.9 = load i8*, i8** %key2.addr, align 8
  %call.8 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.9, i8* %key2.ld.9, i64 136)
  store i8 %call.8, i8* %tmpv.57, align 1
  %tmpv.57.ld.0 = load i8, i8* %tmpv.57, align 1
  store i8 %tmpv.57.ld.0, i8* %"$ret11", align 1
  %"$ret11.ld.0" = load i8, i8* %"$ret11", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret11")
  ret i8 %"$ret11.ld.0"
}

define i8 @main._633_7float64..eq(i8* nest %nest.16, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret12" = alloca i8, align 1
  %tmpv.58 = alloca [33 x double]*, align 8
  %tmpv.59 = alloca [33 x double]*, align 8
  %tmpv.60 = alloca i64, align 8
  %tmpv.61 = alloca i64, align 8
  %tmpv.62 = alloca i64, align 8
  %tmpv.63 = alloca [33 x double]*, align 8
  %tmpv.64 = alloca [33 x double]*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret12")
  store i8 0, i8* %"$ret12", align 1
  %key1.ld.10 = load i8*, i8** %key1.addr, align 8
  %cast.54 = bitcast i8* %key1.ld.10 to [33 x double]*
  store [33 x double]* %cast.54, [33 x double]** %tmpv.58, align 8
  %key2.ld.10 = load i8*, i8** %key2.addr, align 8
  %cast.55 = bitcast i8* %key2.ld.10 to [33 x double]*
  store [33 x double]* %cast.55, [33 x double]** %tmpv.59, align 8
  store i64 33, i64* %tmpv.62, align 8
  store i64 0, i64* %tmpv.61, align 8
  br label %label.0

label.0:                                          ; preds = %fallthrough.37, %entry
  %tmpv.61.ld.2 = load i64, i64* %tmpv.61, align 8
  %tmpv.62.ld.0 = load i64, i64* %tmpv.62, align 8
  %icmp.43 = icmp slt i64 %tmpv.61.ld.2, %tmpv.62.ld.0
  %zext.44 = zext i1 %icmp.43 to i8
  %trunc.38 = trunc i8 %zext.44 to i1
  br i1 %trunc.38, label %then.38, label %else.38

label.1:                                          ; preds = %then.38
  %tmpv.61.ld.0 = load i64, i64* %tmpv.61, align 8
  store i64 %tmpv.61.ld.0, i64* %tmpv.60, align 8
  %tmpv.60.ld.0 = load i64, i64* %tmpv.60, align 8
  %icmp.37 = icmp sge i64 %tmpv.60.ld.0, 0
  %zext.37 = zext i1 %icmp.37 to i8
  %tmpv.60.ld.1 = load i64, i64* %tmpv.60, align 8
  %icmp.38 = icmp slt i64 %tmpv.60.ld.1, 33
  %zext.38 = zext i1 %icmp.38 to i8
  %iand.4 = and i8 %zext.37, %zext.38
  %trunc.33 = trunc i8 %iand.4 to i1
  br i1 %trunc.33, label %then.33, label %else.33

then.33:                                          ; preds = %label.1
  br label %fallthrough.33

fallthrough.33:                                   ; preds = %then.33
  %tmpv.60.ld.3 = load i64, i64* %tmpv.60, align 8
  %icmp.39 = icmp sge i64 %tmpv.60.ld.3, 0
  %zext.39 = zext i1 %icmp.39 to i8
  %tmpv.60.ld.4 = load i64, i64* %tmpv.60, align 8
  %icmp.40 = icmp slt i64 %tmpv.60.ld.4, 33
  %zext.40 = zext i1 %icmp.40 to i8
  %iand.5 = and i8 %zext.39, %zext.40
  %trunc.34 = trunc i8 %iand.5 to i1
  br i1 %trunc.34, label %then.34, label %else.34

else.33:                                          ; preds = %label.1
  %tmpv.60.ld.2 = load i64, i64* %tmpv.60, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.60.ld.2, i64 33)
  unreachable

then.34:                                          ; preds = %fallthrough.33
  br label %fallthrough.34

fallthrough.34:                                   ; preds = %then.34
  %tmpv.58.ld.0 = load [33 x double]*, [33 x double]** %tmpv.58, align 8
  %icmp.41 = icmp eq [33 x double]* %tmpv.58.ld.0, null
  %zext.41 = zext i1 %icmp.41 to i8
  %trunc.35 = trunc i8 %zext.41 to i1
  br i1 %trunc.35, label %then.35, label %else.35, !make.implicit !3

else.34:                                          ; preds = %fallthrough.33
  %tmpv.60.ld.5 = load i64, i64* %tmpv.60, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.60.ld.5, i64 33)
  unreachable

then.35:                                          ; preds = %fallthrough.34
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.35:                                   ; preds = %else.35
  %tmpv.63.ld.0 = load [33 x double]*, [33 x double]** %tmpv.63, align 8
  %tmpv.60.ld.6 = load i64, i64* %tmpv.60, align 8
  %index.2 = getelementptr [33 x double], [33 x double]* %tmpv.63.ld.0, i32 0, i64 %tmpv.60.ld.6
  %.index.ld.0 = load double, double* %index.2, align 8
  %tmpv.59.ld.0 = load [33 x double]*, [33 x double]** %tmpv.59, align 8
  %icmp.42 = icmp eq [33 x double]* %tmpv.59.ld.0, null
  %zext.42 = zext i1 %icmp.42 to i8
  %trunc.36 = trunc i8 %zext.42 to i1
  br i1 %trunc.36, label %then.36, label %else.36, !make.implicit !3

else.35:                                          ; preds = %fallthrough.34
  %.ld.16 = load [33 x double]*, [33 x double]** %tmpv.58, align 8
  store [33 x double]* %.ld.16, [33 x double]** %tmpv.63, align 8
  br label %fallthrough.35

then.36:                                          ; preds = %fallthrough.35
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.36:                                   ; preds = %else.36
  %tmpv.64.ld.0 = load [33 x double]*, [33 x double]** %tmpv.64, align 8
  %tmpv.60.ld.7 = load i64, i64* %tmpv.60, align 8
  %index.3 = getelementptr [33 x double], [33 x double]* %tmpv.64.ld.0, i32 0, i64 %tmpv.60.ld.7
  %.index.ld.1 = load double, double* %index.3, align 8
  %fcmp.0 = fcmp une double %.index.ld.0, %.index.ld.1
  %zext.43 = zext i1 %fcmp.0 to i8
  %trunc.37 = trunc i8 %zext.43 to i1
  br i1 %trunc.37, label %then.37, label %else.37

else.36:                                          ; preds = %fallthrough.35
  %.ld.17 = load [33 x double]*, [33 x double]** %tmpv.59, align 8
  store [33 x double]* %.ld.17, [33 x double]** %tmpv.64, align 8
  br label %fallthrough.36

then.37:                                          ; preds = %fallthrough.36
  store i8 0, i8* %"$ret12", align 1
  %"$ret12.ld.0" = load i8, i8* %"$ret12", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret12")
  ret i8 %"$ret12.ld.0"

fallthrough.37:                                   ; preds = %else.37
  %tmpv.61.ld.1 = load i64, i64* %tmpv.61, align 8
  %add.3 = add i64 %tmpv.61.ld.1, 1
  store i64 %add.3, i64* %tmpv.61, align 8
  br label %label.0

else.37:                                          ; preds = %fallthrough.36
  br label %fallthrough.37

then.38:                                          ; preds = %label.0
  br label %label.1

fallthrough.38:                                   ; preds = %else.38
  store i8 1, i8* %"$ret12", align 1
  %"$ret12.ld.1" = load i8, i8* %"$ret12", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret12")
  ret i8 %"$ret12.ld.1"

else.38:                                          ; preds = %label.0
  br label %fallthrough.38
}

define i8 @main._665_7uint32..eq(i8* nest %nest.17, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret13" = alloca i8, align 1
  %tmpv.65 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret13")
  store i8 0, i8* %"$ret13", align 1
  %key1.ld.11 = load i8*, i8** %key1.addr, align 8
  %key2.ld.11 = load i8*, i8** %key2.addr, align 8
  %call.9 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.11, i8* %key2.ld.11, i64 260)
  store i8 %call.9, i8* %tmpv.65, align 1
  %tmpv.65.ld.0 = load i8, i8* %tmpv.65, align 1
  store i8 %tmpv.65.ld.0, i8* %"$ret13", align 1
  %"$ret13.ld.0" = load i8, i8* %"$ret13", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret13")
  ret i8 %"$ret13.ld.0"
}

define i8 @main._64_7uintptr..eq(i8* nest %nest.18, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret14" = alloca i8, align 1
  %tmpv.66 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret14")
  store i8 0, i8* %"$ret14", align 1
  %key1.ld.12 = load i8*, i8** %key1.addr, align 8
  %key2.ld.12 = load i8*, i8** %key2.addr, align 8
  %call.10 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.12, i8* %key2.ld.12, i64 32)
  store i8 %call.10, i8* %tmpv.66, align 1
  %tmpv.66.ld.0 = load i8, i8* %tmpv.66, align 1
  store i8 %tmpv.66.ld.0, i8* %"$ret14", align 1
  %"$ret14.ld.0" = load i8, i8* %"$ret14", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret14")
  ret i8 %"$ret14.ld.0"
}

define i8 @main._65_7uint..eq(i8* nest %nest.19, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret15" = alloca i8, align 1
  %tmpv.67 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret15")
  store i8 0, i8* %"$ret15", align 1
  %key1.ld.13 = load i8*, i8** %key1.addr, align 8
  %key2.ld.13 = load i8*, i8** %key2.addr, align 8
  %call.11 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.13, i8* %key2.ld.13, i64 40)
  store i8 %call.11, i8* %tmpv.67, align 1
  %tmpv.67.ld.0 = load i8, i8* %tmpv.67, align 1
  store i8 %tmpv.67.ld.0, i8* %"$ret15", align 1
  %"$ret15.ld.0" = load i8, i8* %"$ret15", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret15")
  ret i8 %"$ret15.ld.0"
}

define i8 @main._6512_7uint8..eq(i8* nest %nest.20, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret16" = alloca i8, align 1
  %tmpv.68 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret16")
  store i8 0, i8* %"$ret16", align 1
  %key1.ld.14 = load i8*, i8** %key1.addr, align 8
  %key2.ld.14 = load i8*, i8** %key2.addr, align 8
  %call.12 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.14, i8* %key2.ld.14, i64 512)
  store i8 %call.12, i8* %tmpv.68, align 1
  %tmpv.68.ld.0 = load i8, i8* %tmpv.68, align 1
  store i8 %tmpv.68.ld.0, i8* %"$ret16", align 1
  %"$ret16.ld.0" = load i8, i8* %"$ret16", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret16")
  ret i8 %"$ret16.ld.0"
}

define i8 @main._6249_7uint8..eq(i8* nest %nest.21, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret17" = alloca i8, align 1
  %tmpv.69 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret17")
  store i8 0, i8* %"$ret17", align 1
  %key1.ld.15 = load i8*, i8** %key1.addr, align 8
  %key2.ld.15 = load i8*, i8** %key2.addr, align 8
  %call.13 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.15, i8* %key2.ld.15, i64 249)
  store i8 %call.13, i8* %tmpv.69, align 1
  %tmpv.69.ld.0 = load i8, i8* %tmpv.69, align 1
  store i8 %tmpv.69.ld.0, i8* %"$ret17", align 1
  %"$ret17.ld.0" = load i8, i8* %"$ret17", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret17")
  ret i8 %"$ret17.ld.0"
}

define i8 @main._6129_7uint8..eq(i8* nest %nest.22, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret18" = alloca i8, align 1
  %tmpv.70 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret18")
  store i8 0, i8* %"$ret18", align 1
  %key1.ld.16 = load i8*, i8** %key1.addr, align 8
  %key2.ld.16 = load i8*, i8** %key2.addr, align 8
  %call.14 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.16, i8* %key2.ld.16, i64 129)
  store i8 %call.14, i8* %tmpv.70, align 1
  %tmpv.70.ld.0 = load i8, i8* %tmpv.70, align 1
  store i8 %tmpv.70.ld.0, i8* %"$ret18", align 1
  %"$ret18.ld.0" = load i8, i8* %"$ret18", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret18")
  ret i8 %"$ret18.ld.0"
}

define i8 @main._632_7uint8..eq(i8* nest %nest.23, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret19" = alloca i8, align 1
  %tmpv.71 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret19")
  store i8 0, i8* %"$ret19", align 1
  %key1.ld.17 = load i8*, i8** %key1.addr, align 8
  %key2.ld.17 = load i8*, i8** %key2.addr, align 8
  %call.15 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.17, i8* %key2.ld.17, i64 32)
  store i8 %call.15, i8* %tmpv.71, align 1
  %tmpv.71.ld.0 = load i8, i8* %tmpv.71, align 1
  store i8 %tmpv.71.ld.0, i8* %"$ret19", align 1
  %"$ret19.ld.0" = load i8, i8* %"$ret19", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret19")
  ret i8 %"$ret19.ld.0"
}

define i8 @main._627_7string..eq(i8* nest %nest.24, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret20" = alloca i8, align 1
  %tmpv.72 = alloca [27 x { i8*, i64 }]*, align 8
  %tmpv.73 = alloca [27 x { i8*, i64 }]*, align 8
  %tmpv.74 = alloca i64, align 8
  %tmpv.75 = alloca i64, align 8
  %tmpv.76 = alloca i64, align 8
  %tmpv.77 = alloca { i8*, i64 }, align 8
  %tmpv.78 = alloca [27 x { i8*, i64 }]*, align 8
  %tmpv.79 = alloca { i8*, i64 }, align 8
  %tmpv.80 = alloca [27 x { i8*, i64 }]*, align 8
  %tmpv.81 = alloca i8, align 1
  %tmpv.82 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret20")
  store i8 0, i8* %"$ret20", align 1
  %key1.ld.18 = load i8*, i8** %key1.addr, align 8
  %cast.58 = bitcast i8* %key1.ld.18 to [27 x { i8*, i64 }]*
  store [27 x { i8*, i64 }]* %cast.58, [27 x { i8*, i64 }]** %tmpv.72, align 8
  %key2.ld.18 = load i8*, i8** %key2.addr, align 8
  %cast.59 = bitcast i8* %key2.ld.18 to [27 x { i8*, i64 }]*
  store [27 x { i8*, i64 }]* %cast.59, [27 x { i8*, i64 }]** %tmpv.73, align 8
  store i64 27, i64* %tmpv.76, align 8
  store i64 0, i64* %tmpv.75, align 8
  br label %label.0

label.0:                                          ; preds = %fallthrough.45, %entry
  %tmpv.75.ld.2 = load i64, i64* %tmpv.75, align 8
  %tmpv.76.ld.0 = load i64, i64* %tmpv.76, align 8
  %icmp.54 = icmp slt i64 %tmpv.75.ld.2, %tmpv.76.ld.0
  %zext.55 = zext i1 %icmp.54 to i8
  %trunc.46 = trunc i8 %zext.55 to i1
  br i1 %trunc.46, label %then.46, label %else.46

label.1:                                          ; preds = %then.46
  %tmpv.75.ld.0 = load i64, i64* %tmpv.75, align 8
  store i64 %tmpv.75.ld.0, i64* %tmpv.74, align 8
  %tmpv.74.ld.0 = load i64, i64* %tmpv.74, align 8
  %icmp.44 = icmp sge i64 %tmpv.74.ld.0, 0
  %zext.45 = zext i1 %icmp.44 to i8
  %tmpv.74.ld.1 = load i64, i64* %tmpv.74, align 8
  %icmp.45 = icmp slt i64 %tmpv.74.ld.1, 27
  %zext.46 = zext i1 %icmp.45 to i8
  %iand.6 = and i8 %zext.45, %zext.46
  %trunc.39 = trunc i8 %iand.6 to i1
  br i1 %trunc.39, label %then.39, label %else.39

then.39:                                          ; preds = %label.1
  br label %fallthrough.39

fallthrough.39:                                   ; preds = %then.39
  %tmpv.74.ld.3 = load i64, i64* %tmpv.74, align 8
  %icmp.46 = icmp sge i64 %tmpv.74.ld.3, 0
  %zext.47 = zext i1 %icmp.46 to i8
  %tmpv.74.ld.4 = load i64, i64* %tmpv.74, align 8
  %icmp.47 = icmp slt i64 %tmpv.74.ld.4, 27
  %zext.48 = zext i1 %icmp.47 to i8
  %iand.7 = and i8 %zext.47, %zext.48
  %trunc.40 = trunc i8 %iand.7 to i1
  br i1 %trunc.40, label %then.40, label %else.40

else.39:                                          ; preds = %label.1
  %tmpv.74.ld.2 = load i64, i64* %tmpv.74, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.74.ld.2, i64 27)
  unreachable

then.40:                                          ; preds = %fallthrough.39
  br label %fallthrough.40

fallthrough.40:                                   ; preds = %then.40
  %tmpv.72.ld.0 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.72, align 8
  %icmp.48 = icmp eq [27 x { i8*, i64 }]* %tmpv.72.ld.0, null
  %zext.49 = zext i1 %icmp.48 to i8
  %trunc.41 = trunc i8 %zext.49 to i1
  br i1 %trunc.41, label %then.41, label %else.41, !make.implicit !3

else.40:                                          ; preds = %fallthrough.39
  %tmpv.74.ld.5 = load i64, i64* %tmpv.74, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 %tmpv.74.ld.5, i64 27)
  unreachable

then.41:                                          ; preds = %fallthrough.40
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.41:                                   ; preds = %else.41
  %tmpv.78.ld.0 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.78, align 8
  %tmpv.74.ld.6 = load i64, i64* %tmpv.74, align 8
  %index.4 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %tmpv.78.ld.0, i32 0, i64 %tmpv.74.ld.6
  %cast.61 = bitcast { i8*, i64 }* %tmpv.77 to i8*
  %cast.62 = bitcast { i8*, i64 }* %index.4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.61, i8* align 8 %cast.62, i64 16, i1 false)
  %tmpv.73.ld.0 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.73, align 8
  %icmp.49 = icmp eq [27 x { i8*, i64 }]* %tmpv.73.ld.0, null
  %zext.50 = zext i1 %icmp.49 to i8
  %trunc.42 = trunc i8 %zext.50 to i1
  br i1 %trunc.42, label %then.42, label %else.42, !make.implicit !3

else.41:                                          ; preds = %fallthrough.40
  %.ld.18 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.72, align 8
  store [27 x { i8*, i64 }]* %.ld.18, [27 x { i8*, i64 }]** %tmpv.78, align 8
  br label %fallthrough.41

then.42:                                          ; preds = %fallthrough.41
  call void @runtime.panicmem(i8* nest undef)
  unreachable

fallthrough.42:                                   ; preds = %else.42
  %tmpv.80.ld.0 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.80, align 8
  %tmpv.74.ld.7 = load i64, i64* %tmpv.74, align 8
  %index.5 = getelementptr [27 x { i8*, i64 }], [27 x { i8*, i64 }]* %tmpv.80.ld.0, i32 0, i64 %tmpv.74.ld.7
  %cast.64 = bitcast { i8*, i64 }* %tmpv.79 to i8*
  %cast.65 = bitcast { i8*, i64 }* %index.5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %cast.64, i8* align 8 %cast.65, i64 16, i1 false)
  %field.41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.77, i32 0, i32 1
  %tmpv.77.field.ld.0 = load i64, i64* %field.41, align 8
  %field.42 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.79, i32 0, i32 1
  %tmpv.79.field.ld.0 = load i64, i64* %field.42, align 8
  %icmp.50 = icmp eq i64 %tmpv.77.field.ld.0, %tmpv.79.field.ld.0
  %zext.51 = zext i1 %icmp.50 to i8
  %trunc.44 = trunc i8 %zext.51 to i1
  br i1 %trunc.44, label %then.43, label %else.43

else.42:                                          ; preds = %fallthrough.41
  %.ld.19 = load [27 x { i8*, i64 }]*, [27 x { i8*, i64 }]** %tmpv.73, align 8
  store [27 x { i8*, i64 }]* %.ld.19, [27 x { i8*, i64 }]** %tmpv.80, align 8
  br label %fallthrough.42

then.43:                                          ; preds = %fallthrough.42
  %field.43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.77, i32 0, i32 0
  %tmpv.77.field.ld.1 = load i8*, i8** %field.43, align 8
  %field.44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.79, i32 0, i32 0
  %tmpv.79.field.ld.1 = load i8*, i8** %field.44, align 8
  %icmp.51 = icmp eq i8* %tmpv.77.field.ld.1, %tmpv.79.field.ld.1
  %zext.52 = zext i1 %icmp.51 to i8
  %trunc.43 = trunc i8 %zext.52 to i1
  br i1 %trunc.43, label %then.44, label %else.44

fallthrough.43:                                   ; preds = %fallthrough.44, %else.43
  %tmpv.82.ld.0 = load i8, i8* %tmpv.82, align 1
  %icmp.53 = icmp ne i8 %tmpv.82.ld.0, 1
  %zext.54 = zext i1 %icmp.53 to i8
  %trunc.45 = trunc i8 %zext.54 to i1
  br i1 %trunc.45, label %then.45, label %else.45

else.43:                                          ; preds = %fallthrough.42
  store i8 0, i8* %tmpv.82, align 1
  br label %fallthrough.43

then.44:                                          ; preds = %then.43
  store i8 1, i8* %tmpv.81, align 1
  br label %fallthrough.44

fallthrough.44:                                   ; preds = %else.44, %then.44
  %tmpv.81.ld.0 = load i8, i8* %tmpv.81, align 1
  store i8 %tmpv.81.ld.0, i8* %tmpv.82, align 1
  br label %fallthrough.43

else.44:                                          ; preds = %then.43
  %field.45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.77, i32 0, i32 0
  %tmpv.77.field.ld.2 = load i8*, i8** %field.45, align 8
  %field.46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.79, i32 0, i32 0
  %tmpv.79.field.ld.2 = load i8*, i8** %field.46, align 8
  %field.47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmpv.79, i32 0, i32 1
  %tmpv.79.field.ld.3 = load i64, i64* %field.47, align 8
  %call.16 = call i32 @memcmp(i8* %tmpv.77.field.ld.2, i8* %tmpv.79.field.ld.2, i64 %tmpv.79.field.ld.3)
  %icmp.52 = icmp eq i32 %call.16, 0
  %zext.53 = zext i1 %icmp.52 to i8
  store i8 %zext.53, i8* %tmpv.81, align 1
  br label %fallthrough.44

then.45:                                          ; preds = %fallthrough.43
  store i8 0, i8* %"$ret20", align 1
  %"$ret20.ld.0" = load i8, i8* %"$ret20", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret20")
  ret i8 %"$ret20.ld.0"

fallthrough.45:                                   ; preds = %else.45
  %tmpv.75.ld.1 = load i64, i64* %tmpv.75, align 8
  %add.4 = add i64 %tmpv.75.ld.1, 1
  store i64 %add.4, i64* %tmpv.75, align 8
  br label %label.0

else.45:                                          ; preds = %fallthrough.43
  br label %fallthrough.45

then.46:                                          ; preds = %label.0
  br label %label.1

fallthrough.46:                                   ; preds = %else.46
  store i8 1, i8* %"$ret20", align 1
  %"$ret20.ld.1" = load i8, i8* %"$ret20", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret20")
  ret i8 %"$ret20.ld.1"

else.46:                                          ; preds = %label.0
  br label %fallthrough.46
}

declare i32 @memcmp(i8*, i8*, i64) #0

define i8 @main._61024_7uint8..eq(i8* nest %nest.25, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret21" = alloca i8, align 1
  %tmpv.83 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret21")
  store i8 0, i8* %"$ret21", align 1
  %key1.ld.19 = load i8*, i8** %key1.addr, align 8
  %key2.ld.19 = load i8*, i8** %key2.addr, align 8
  %call.17 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.19, i8* %key2.ld.19, i64 1024)
  store i8 %call.17, i8* %tmpv.83, align 1
  %tmpv.83.ld.0 = load i8, i8* %tmpv.83, align 1
  store i8 %tmpv.83.ld.0, i8* %"$ret21", align 1
  %"$ret21.ld.0" = load i8, i8* %"$ret21", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret21")
  ret i8 %"$ret21.ld.0"
}

define i8 @main._62_7int32..eq(i8* nest %nest.26, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret22" = alloca i8, align 1
  %tmpv.84 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret22")
  store i8 0, i8* %"$ret22", align 1
  %key1.ld.20 = load i8*, i8** %key1.addr, align 8
  %key2.ld.20 = load i8*, i8** %key2.addr, align 8
  %call.18 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.20, i8* %key2.ld.20, i64 8)
  store i8 %call.18, i8* %tmpv.84, align 1
  %tmpv.84.ld.0 = load i8, i8* %tmpv.84, align 1
  store i8 %tmpv.84.ld.0, i8* %"$ret22", align 1
  %"$ret22.ld.0" = load i8, i8* %"$ret22", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret22")
  ret i8 %"$ret22.ld.0"
}

define i8 @main._664_7uint8..eq(i8* nest %nest.27, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret23" = alloca i8, align 1
  %tmpv.85 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret23")
  store i8 0, i8* %"$ret23", align 1
  %key1.ld.21 = load i8*, i8** %key1.addr, align 8
  %key2.ld.21 = load i8*, i8** %key2.addr, align 8
  %call.19 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.21, i8* %key2.ld.21, i64 64)
  store i8 %call.19, i8* %tmpv.85, align 1
  %tmpv.85.ld.0 = load i8, i8* %tmpv.85, align 1
  store i8 %tmpv.85.ld.0, i8* %"$ret23", align 1
  %"$ret23.ld.0" = load i8, i8* %"$ret23", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret23")
  ret i8 %"$ret23.ld.0"
}

define i8 @main._6256_7uint8..eq(i8* nest %nest.28, i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %"$ret24" = alloca i8, align 1
  %tmpv.86 = alloca i8, align 1
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %"$ret24")
  store i8 0, i8* %"$ret24", align 1
  %key1.ld.22 = load i8*, i8** %key1.addr, align 8
  %key2.ld.22 = load i8*, i8** %key2.addr, align 8
  %call.20 = call i8 @runtime.memequal(i8* nest undef, i8* %key1.ld.22, i8* %key2.ld.22, i64 256)
  store i8 %call.20, i8* %tmpv.86, align 1
  %tmpv.86.ld.0 = load i8, i8* %tmpv.86, align 1
  store i8 %tmpv.86.ld.0, i8* %"$ret24", align 1
  %"$ret24.ld.0" = load i8, i8* %"$ret24", align 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %"$ret24")
  ret i8 %"$ret24.ld.0"
}

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
  br i1 %trunc.0, label %then.0, label %else.0

then.0:                                           ; preds = %entry
  br label %fallthrough.0

fallthrough.0:                                    ; preds = %then.0
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
  br i1 %trunc.2, label %then.1, label %else.1

else.0:                                           ; preds = %entry
  %tmpv.1.ld.1 = load i64, i64* %tmpv.1, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 0, i64 %tmpv.1.ld.1)
  unreachable

then.1:                                           ; preds = %fallthrough.0
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
  br label %fallthrough.1

fallthrough.1:                                    ; preds = %fallthrough.2, %then.1
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
  br i1 %trunc.3, label %then.3, label %else.3

else.1:                                           ; preds = %fallthrough.0
  %field.9 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 0
  %tmpv.3.field.ld.4 = load i64*, i64** %field.9, align 8
  %field.10 = getelementptr inbounds { i64*, i64, i64 }, { i64*, i64, i64 }* %tmpv.3, i32 0, i32 2
  %tmpv.3.field.ld.3 = load i64, i64* %field.10, align 8
  %sub.0 = sub i64 %tmpv.3.field.ld.3, 0
  %icmp.2 = icmp eq i64 %sub.0, 0
  %zext.2 = zext i1 %icmp.2 to i8
  %trunc.1 = trunc i8 %zext.2 to i1
  br i1 %trunc.1, label %then.2, label %else.2

then.2:                                           ; preds = %else.1
  store i64 0, i64* %tmpv.7, align 8
  br label %fallthrough.2

fallthrough.2:                                    ; preds = %else.2, %then.2
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
  br label %fallthrough.1

else.2:                                           ; preds = %else.1
  store i64 0, i64* %tmpv.7, align 8
  br label %fallthrough.2

then.3:                                           ; preds = %fallthrough.1
  br label %fallthrough.3

fallthrough.3:                                    ; preds = %then.3
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

else.3:                                           ; preds = %fallthrough.1
  %tmpv.9.ld.1 = load i64, i64* %tmpv.9, align 8
  call void @runtime.goPanicIndex(i8* nest undef, i64 1, i64 %tmpv.9.ld.1)
  unreachable
}

; Function Attrs: cold
declare void @runtime.growslice({ i8**, i64, i64 }*, i8*, %_type.0*, i8*, i64, i64, i64) #5

declare void @runtime.printlock(i8*) #0

declare void @runtime.printint(i8*, i64) #0

declare void @runtime.printnl(i8*) #0

declare void @runtime.printunlock(i8*) #0

attributes #0 = { "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noreturn "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly readonly "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold "disable-tail-calls"="true" "frame-pointer"="none" "null-pointer-is-valid"="true" "split-stack" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 0}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{}
