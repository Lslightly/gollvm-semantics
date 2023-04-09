define void @main.main(i8* nest nocapture readnone %nest.0) local_unnamed_addr #0 {
entry:
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}