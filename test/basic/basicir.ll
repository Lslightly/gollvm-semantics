define void @__go_init_main(i8* nest nocapture readnone %nest.29) local_unnamed_addr #0 {
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
  %call.0 = call i8* @runtime.newobject(i8* nest undef, %_type.0* nonnull @int..d)
  call void @runtime.printlock(i8* nest undef)
  call void @runtime.printint(i8* nest undef, i64 1)
  call void @runtime.printnl(i8* nest undef)
  call void @runtime.printunlock(i8* nest undef)
  ret void
}