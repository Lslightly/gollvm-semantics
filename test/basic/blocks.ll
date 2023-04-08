declare void @runtime.setmodinfo(i8*, i8*, i64) local_unnamed_addr #0

define i8 @main.struct_4runtime_0gList_cruntime_0n_bint32_5..eq(i8* nest nocapture readnone %nest.6, i8* readonly %key1, i8* readonly %key2) #0 {
entry:
  %icmp.5 = icmp eq i8* %key1, null
  br i1 %icmp.5, label %then.6, label %else.6, !make.implicit !3

then.6:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.6:                                           
  %icmp.6 = icmp eq i8* %key2, null
  br i1 %icmp.6, label %then.7, label %else.7, !make.implicit !3

then.7:                                           
  call void @runtime.panicmem(i8* nest undef)
  unreachable

else.7:                                           
  %tmpv.11.sroa.0.0.cast.15.sroa_idx = bitcast i8* %key1 to i64*
  %tmpv.11.sroa.0.0.copyload = load i64, i64* %tmpv.11.sroa.0.0.cast.15.sroa_idx, align 8
  %tmpv.12.sroa.0.0.cast.20.sroa_idx = bitcast i8* %key2 to i64*
  %tmpv.12.sroa.0.0.copyload = load i64, i64* %tmpv.12.sroa.0.0.cast.20.sroa_idx, align 8
  %icmp.7.not = icmp eq i64 %tmpv.11.sroa.0.0.copyload, %tmpv.12.sroa.0.0.copyload
  br i1 %icmp.7.not, label %else.10, label %common.ret

common.ret:                                       
  %common.ret.op = phi i8 [ 0, %else.7 ], [ %., %else.10 ]
  ret i8 %common.ret.op

else.10:                                          
  %field.8 = getelementptr inbounds i8, i8* %key1, i64 8
  %0 = bitcast i8* %field.8 to i32*
  %.field.ld.0 = load i32, i32* %0, align 4
  %field.9 = getelementptr inbounds i8, i8* %key2, i64 8
  %1 = bitcast i8* %field.9 to i32*
  %.field.ld.1 = load i32, i32* %1, align 4
  %icmp.11.not = icmp eq i32 %.field.ld.0, %.field.ld.1
  %. = zext i1 %icmp.11.not to i8
  br label %common.ret
}