source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


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
  %field.0 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %tmpv.1, i64 0, i32 0
  store i64 2, i64* %field.0, align 8
  %index.0 = getelementptr inbounds [1 x %functionDescriptor.0*], [1 x %functionDescriptor.0*]* %tmpv.2, i64 0, i64 0
  store %functionDescriptor.0* %tmpv.1, %functionDescriptor.0** %index.0, align 8
  %cast.14 = bitcast { i8*, i8*, i8*, i8*, i64, i8*, i64, i8, i8 }* %tmpv.3 to i8*
  %cast.10 = bitcast { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4 to i8*
  %tmp.0.sroa.0.0.cast.12.sroa_idx = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4, i64 0, i32 0, i32 0
  store %functionDescriptor.0** %index.0, %functionDescriptor.0*** %tmp.0.sroa.0.0.cast.12.sroa_idx, align 8
  %tmp.0.sroa.2.0.cast.12.sroa_idx1 = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4, i64 0, i32 0, i32 1
  store i64 1, i64* %tmp.0.sroa.2.0.cast.12.sroa_idx1, align 8
  %0 = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %tmpv.4, i64 0, i32 0, i32 2
  store i64 1, i64* %0, align 8
  invoke void @runtime.deferprocStack(i8* nest undef, i8* nonnull %cast.14, i8* nonnull %tmpv.0, i64 ptrtoint (void (i8*, { { %functionDescriptor.0**, i64, i64 } }*)* @main.go..thunk0 to i64), i8* nonnull %cast.10)
          to label cont.1 unwind label pad.1

pad.0:                                            
  %ehtmp.0.sroa.0.0 = phi i8* [ undef, cont.2 ], [ %ehtmp.0.sroa.0.1, finish.0 ]
  %ehtmp.0.sroa.2.0 = phi i32 [ undef, cont.2 ], [ %ehtmp.0.sroa.2.1, finish.0 ]
  %finvar.0.0 = phi i8 [ 1, cont.2 ], [ %finvar.0.1, finish.0 ]
  %ex.0 = landingpad { i8*, i32 }
          catch i8* null
  call void @runtime.checkdefer(i8* nest undef, i8* nonnull %tmpv.0)
  br label finish.0

finish.0:                                         
  %ehtmp.0.sroa.0.1 = phi i8* [ %ehtmp.0.sroa.0.0, pad.0 ], [ %ex2.0.fca.0.extract, catchpad.0 ], [ undef, pad.1 ]
  %ehtmp.0.sroa.2.1 = phi i32 [ %ehtmp.0.sroa.2.0, pad.0 ], [ %ex2.0.fca.1.extract, catchpad.0 ], [ undef, pad.1 ]
  %finvar.0.1 = phi i8 [ %finvar.0.0, pad.0 ], [ 0, catchpad.0 ], [ 1, pad.1 ]
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %tmpv.0)
          to label cont.0 unwind label pad.0

cont.0:                                           
  %icmp.0 = icmp eq i8 %finvar.0.1, 1
  br i1 %icmp.0, label finret.0, label finres.0

pad.1:                                            
  %ex.1 = landingpad { i8*, i32 }
          catch i8* null
  invoke void @runtime.checkdefer(i8* nest undef, i8* nonnull %tmpv.0)
          to label finish.0 unwind label catchpad.0

catchpad.0:                                       
  %ex2.0 = landingpad { i8*, i32 }
          cleanup
  %ex2.0.fca.0.extract = extractvalue { i8*, i32 } %ex2.0, 0
  %ex2.0.fca.1.extract = extractvalue { i8*, i32 } %ex2.0, 1
  br label finish.0

cont.1:                                           
  %1 = getelementptr %__go_descriptor.1, %__go_descriptor.1* %task, i64 0, i32 0
  %deref.ld.03 = load void (i8*)*, void (i8*)** %1, align 8
  %cast.18 = bitcast %__go_descriptor.1* %task to i8*
  invoke void %deref.ld.03(i8* nest nonnull %cast.18)
          to label cont.2 unwind label pad.1

cont.2:                                           
  invoke void @runtime.deferreturn(i8* nest undef, i8* nonnull %tmpv.0)
          to label finret.0 unwind label pad.0

finres.0:                                         
  %excv.0.fca.0.insert = insertvalue { i8*, i32 } poison, i8* %ehtmp.0.sroa.0.1, 0
  %excv.0.fca.1.insert = insertvalue { i8*, i32 } %excv.0.fca.0.insert, i32 %ehtmp.0.sroa.2.1, 1
  resume { i8*, i32 } %excv.0.fca.1.insert

finret.0:                                         
  ret void
}

declare i32 @__gccgo_personality_v0(i32, i32, i64, i8*, i8*)

define internal void @main.go..thunk0(i8* nest nocapture readnone %nest.9, { { %functionDescriptor.0**, i64, i64 } }* nocapture readonly %__go_thunk_parameter) #0 {
entry:
  %field.13 = getelementptr inbounds { { %functionDescriptor.0**, i64, i64 } }, { { %functionDescriptor.0**, i64, i64 } }* %__go_thunk_parameter, i64 0, i32 0
  call void @main.Recover(i8* nest undef, { %functionDescriptor.0**, i64, i64 }* byval({ %functionDescriptor.0**, i64, i64 }) %field.13)
  ret void
}

declare void @runtime.deferprocStack(i8*, i8*, i8*, i64, i8*) local_unnamed_addr #0

declare void @runtime.checkdefer(i8*, i8*) local_unnamed_addr #0

declare void @runtime.deferreturn(i8*, i8*) local_unnamed_addr #0

define void @main.Recover(i8* nest nocapture readnone %nest.3, { %functionDescriptor.0**, i64, i64 }* nocapture readonly byval({ %functionDescriptor.0**, i64, i64 }) %objs) #1 {
entry:
  %field.5 = getelementptr inbounds { %functionDescriptor.0**, i64, i64 }, { %functionDescriptor.0**, i64, i64 }* %objs, i64 0, i32 1
  %objs.field.ld.0 = load i64, i64* %field.5, align 8
  %icmp.2 = icmp sgt i64 %objs.field.ld.0, 0
  br i1 %icmp.2, label fallthrough.0, label else.0

fallthrough.0:                                    
  %field.7 = getelementptr inbounds { %functionDescriptor.0**, i64, i64 }, { %functionDescriptor.0**, i64, i64 }* %objs, i64 0, i32 0
  %objs.field.ld.2 = load %functionDescriptor.0**, %functionDescriptor.0*** %field.7, align 8
  %.ptroff.ld.0 = load %functionDescriptor.0*, %functionDescriptor.0** %objs.field.ld.2, align 8
  %icmp.3 = icmp eq %functionDescriptor.0* %.ptroff.ld.0, null
  br i1 %icmp.3, label then.1, label else.1, !make.implicit !3

else.0:                                           
  call void @runtime.goPanicIndex(i8* nest undef, i64 0, i64 %objs.field.ld.0)
  unreachable

then.1:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.1:                                           
  %field.8 = getelementptr inbounds %functionDescriptor.0, %functionDescriptor.0* %.ptroff.ld.0, i64 0, i32 0
  %.field.ld.0 = load i64, i64* %field.8, align 8
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 %.field.ld.0)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}

declare void @runtime.goPanicIndex(i8*, i64, i64) local_unnamed_addr #2

declare void @runtime.panicmem(i8*) local_unnamed_addr #2

declare void @runtime.printlock(i8*) local_unnamed_addr #0

declare void @runtime.printint(i8*, i64) local_unnamed_addr #0

declare void @runtime.printnl(i8*) local_unnamed_addr #0

declare void @runtime.printunlock(i8*) local_unnamed_addr #0

define void @main.main..init0(i8* nest nocapture readnone %nest.4) #0 {
entry:
  call void @runtime.setmodinfo(i8* nest undef, i8* getelementptr inbounds ([263 x i8], [263 x i8]* @const.9, i64 0, i64 0), i64 262)
  ret void
}

declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0



declare i8 @runtime.memequal(i8*, i8*, i8*, i64) local_unnamed_addr #4


















declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5





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


!llvm.module.flags = !{!0, !1, !2}


