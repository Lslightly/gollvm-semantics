requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-call.k"
requires "gollvm-dyn-insts.k"
requires "gollvm-mem.k"
requires "gollvm-object.k"

/*
    运行时函数用到的抽象语法结构和函数
*/
module GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-MEM-SYNTAX
    imports OBJECT-SYNTAX
    syntax KItem ::= newobject(LocalName, ObjectType)
                    |makemap(LocalName, MapType)
                    //  mapassign(Dst, MapTypeValueRef, Hmap, Key)
                    |mapassign(LocalName, ValueRef, LocalName, ValueRef)
                    //  memcpy(DstPtr, SrcPtr, Size)
                    |memcpy(SymbolicValueRef, SymbolicValueRef, Int)
                    //  growslice(RetPtr, ElemType, OldArray, Cap)
                    |growslice(LocalName, ValueRef, LocalName, ValueRef)
                    //  typedslicecopy(CopyLen, Ty, DstPtr, DstLen, SrcPtr, SrcLen)
                    |typedslicecopy(LocalName, ValueRef, LocalName, ValueRef, LocalName, ValueRef)
                    //  makeslice(Dst, ElemTD, Len, Cap)
                    |makeslice(LocalName, ValueRef, ValueRef, ValueRef)
                    //  ifaceE2T2(Convertable, ToTD, FromTD, FromData, ToData)
                    |ifaceE2T2(LocalName, ValueRef, ValueRef, LocalName, LocalName)
                    //  ifaceI2T2(Convertable, ToTD, FromTab, FromData, ToData)
                    |ifaceI2T2(LocalName, ValueRef, ValueRef, LocalName, LocalName)
                    //  ifaceE2E2(RetPtr, FromTD, FromData)
                    |ifaceE2E2(LocalName, ValueRef, LocalName)
                    //  ifaceE2I2(RetPtr, ToInterType, FromTD, FromData)
                    |ifaceE2I2(LocalName, ValueRef, ValueRef, LocalName)
                    //  ifaceI2E2(RetPtr, FromTab, FromData)
                    |ifaceI2E2(LocalName, ValueRef, LocalName)
                    //  ifaceI2I2(RetPtr, ToInterType, FromTab, FromData)
                    |ifaceI2I2(LocalName, ValueRef, ValueRef, LocalName)
                    //  ifaceE2T2P(RetStruct, ToTD, FromTD, FromData)
                    |ifaceE2T2P(LocalName, ValueRef, ValueRef, LocalName)
                    //  ifaceI2T2P(RetStruct, ToTD, FromTab, FromData)
                    |ifaceI2T2P(LocalName, ValueRef, ValueRef, LocalName)
                    //  typedmemmove(TD, DstPtr, SrcPtr)
                    |typedmemmove(ValueRef, ValueRef, ValueRef)
                    //  mapaccess(DstPtr, MapTypeValueRef, Hmap, Key)
                    |mapaccess1(LocalName, ValueRef, LocalName, ValueRef)
                    //  deferproc(pfn uintptr, arg unsafe.Pointer)
                    //  要求arg在堆上
                    |deferproc(GlobalName, ParamFactor)
                    //  deferprocStack(d *_defer, pfn uintptr, arg unsafe.Pointer)
                    //  会将arg存储到d中，所以理论上arg在堆上也没有问题
                    |deferprocStack(ValueRef, GlobalName, ParamFactor)
                    //  依次执行defer栈上的内容
                    |deferreturn()
endmodule

/*
    将call指令的预处理结构进一步进行预处理得到运行时函数的抽象语法结构
*/
module RUNTIME-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYN-INSTS-SYNTAX
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.newobject, _:ParamFactor, _:Type _:ParamAttrs TypeId:ValueRef)
    =>
    newobject(LocalV, TypeId) ...</k>
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.makemap__small, _:ParamList)
    =>
    makemap(LocalV, map[unknown]unknown) ... </k>
    rule <k> NonVoidGlobalCall(
        LocalV, //  dst = 
        _:Type, @runtime.mapassign__fast64,
        _:ParamFactor,  // undef
        _:Type _:ParamAttrs MapTD:ValueRef,   //  maptype TD
        _:Type _:ParamAttrs Hmap:LocalName, // hmap
        _:Type _:ParamAttrs Key:ValueRef    // key
    )
    => mapassign(LocalV, MapTD, Hmap, Key) ...</k>

    rule <k>
        VoidGlobalCall (@runtime.gcWriteBarrier, _:ParamFactor, _:Type _:ParamAttrs Dst:ValueRef, _:Type _:ParamAttrs Src:ValueRef)
    =>
        updateObjAtAddr(getTypeMatchedBaseOffset(StringToIntTypePre("i64") .OptAddrSpace *, getBaseOffsetFromValueRef(Dst)), getContentFromValueRef(Src))
    ... </k>


    rule <k>
    VoidGlobalCall (@llvm.memcpy.p0i8.p0i8.i64, _:Type _:ParamAttrs DstPtr:LocalName , _:Type _:ParamAttrs SrcPtr:LocalName, _:Type _:ParamAttrs Size:Int, _:ParamFactor) => memcpy(DstPtr, SrcPtr, Size) ...
    </k>
    // TODO copy const
    rule <k>
        VoidGlobalCall(@llvm.memcpy.p0i8.p0i8.i64,
            _:Type _:ParamAttrs DstPtr:LocalName,
            _:Type _:ParamAttrs SrcPtr:ValueRef,
            _:Type _:ParamAttrs Size:Int, _:ParamFactor
        )
    =>
        memcpy (DstPtr, extractGlobalName(SrcPtr), Size)
    ... </k>
    requires isGepConst(SrcPtr) orBool isBitcastConst(SrcPtr)

    rule <k>
    VoidGlobalCall (@runtime.growslice,
                    _:Type _:ParamAttrs RetPtr:LocalName,
                    _:ParamFactor,  //  undef
                    _:Type _:ParamAttrs ElemType:ValueRef,
                    _:Type _:ParamAttrs OldArray:LocalName,
                    _:ParamFactor,  //  OldLen
                    _:ParamFactor,  //  OldCap
                    _:Type _:ParamAttrs Cap:ValueRef
                    )
    =>
        growslice(RetPtr, ElemType, OldArray, Cap)
        ...
    </k>

    rule <k>
        NonVoidGlobalCall(CopyLen:LocalName, _:Type, @runtime.typedslicecopy,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs Ty:ValueRef, // type descriptor
                        _:Type _:ParamAttrs DstPtr:LocalName,
                        _:Type _:ParamAttrs DstLen:ValueRef,
                        _:Type _:ParamAttrs SrcPtr:LocalName,
                        _:Type _:ParamAttrs SrcLen:ValueRef
                        )
    =>
        typedslicecopy(CopyLen, Ty, DstPtr, DstLen, SrcPtr, SrcLen)
    ... </k>

    rule <k>
        NonVoidGlobalCall (Dst:LocalName, _:Type, @runtime.makeslice,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ElemTD:ValueRef, // type descriptor
                        _:Type _:ParamAttrs Len:ValueRef,
                        _:Type _:ParamAttrs Cap:ValueRef
                        )
    =>
        makeslice(Dst, ElemTD, Len, Cap)
    ...</k>

    rule <k>
        NonVoidGlobalCall (Convertable:LocalName, _:Type, @runtime.ifaceE2T2,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToTD:ValueRef, // "to" type descriptor
                        _:Type _:ParamAttrs FromTD:ValueRef, // "from" descriptor
                        _:Type _:ParamAttrs FromData:LocalName, // "from" data
                        _:Type _:ParamAttrs ToData:LocalName // "to"/"return" data
                        )
    =>
        ifaceE2T2(Convertable, ToTD, FromTD, FromData, ToData)
    ... </k>

    rule <k>
        NonVoidGlobalCall(Convertable:LocalName, _:Type, @runtime.ifaceI2T2,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToTD:ValueRef, // "to" type descriptor
                        _:Type _:ParamAttrs FromTab:ValueRef, // "from" interfacetype
                        _:Type _:ParamAttrs FromData:LocalName, // "from" data
                        _:Type _:ParamAttrs ToData:LocalName // "to"/"return" data
        )
    =>
        ifaceI2T2(Convertable, ToTD, FromTab, FromData, ToData)
    ... </k>

    rule <k>
        VoidGlobalCall (@runtime.ifaceE2E2,
                        _:Type _:ParamAttrs RetPtr:LocalName, // retptr
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs FromTD:ValueRef, // "from" type descriptor
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceE2E2(RetPtr, FromTD, FromData)
    ... </k>
    rule <k>
        VoidGlobalCall (@runtime.ifaceE2I2,
                        _:Type _:ParamAttrs RetPtr:LocalName, // retptr
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToInterType:ValueRef, // "to" interfacetype
                        _:Type _:ParamAttrs FromTD:ValueRef, // "from" type descriptor
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceE2I2(RetPtr, ToInterType, FromTD, FromData)
    ... </k>
    rule <k>
        VoidGlobalCall (@runtime.ifaceI2E2,
                        _:Type _:ParamAttrs RetPtr:LocalName, // retptr
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs FromTab:ValueRef, // "from" interfacetype
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceI2E2(RetPtr, FromTab, FromData)
    ... </k>
    rule <k>
        VoidGlobalCall (@runtime.ifaceI2I2,
                        _:Type _:ParamAttrs RetPtr:LocalName, // retptr
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToInterType:ValueRef, // "to" interfacetype
                        _:Type _:ParamAttrs FromTab:ValueRef, // "from" interfacetype
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceI2I2(RetPtr, ToInterType, FromTab, FromData)
    ... </k>
    rule <k>
        NonVoidGlobalCall (RetStruct:LocalName, _:Type, @runtime.ifaceE2T2P,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToTD:ValueRef, // "to" type descriptor
                        _:Type _:ParamAttrs FromTD:ValueRef, // "from" type descriptor
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceE2T2P (RetStruct, ToTD, FromTD, FromData)
    ... </k>
    rule <k>
        NonVoidGlobalCall (RetStruct:LocalName, _:Type, @runtime.ifaceI2T2P,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs ToTD:ValueRef, // "to" type descriptor
                        _:Type _:ParamAttrs FromTab:ValueRef, // "from" interfacetype
                        _:Type _:ParamAttrs FromData:LocalName // "from" data
        )
    =>
        ifaceI2T2P (RetStruct, ToTD, FromTab, FromData)
    ... </k>

    rule <k>
        VoidGlobalCall(@runtime.typedmemmove,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs TD:ValueRef, // "to" type descriptor
                        _:Type _:ParamAttrs ToData:ValueRef, // "to" data
                        _:Type _:ParamAttrs FromData:ValueRef // "from" data
        )
    =>
        typedmemmove(TD, ToData, FromData)
    ... </k>

    rule <k>
        VoidGlobalCall(@runtime.deferproc,
                        _:ParamFactor,  //  undef
                        _:ParamFactor,  //  frame *bool
                        _:Type _:ParamAttrs Pfn:ValueRef, // pfn uintptr
                        Arg:ParamFactor // arg unsafe.Pointer
        )
    =>
        deferproc(extractGlobalName(Pfn), Arg)
    ... </k>

    rule <k>
        VoidGlobalCall(@runtime.deferprocStack,
                        _:ParamFactor,  //  undef
                        _:Type _:ParamAttrs D:ValueRef, // d *_defer
                        _:ParamFactor,  //  frame *bool
                        _:Type _:ParamAttrs Pfn:ValueRef, // pfn uintptr
                        Arg:ParamFactor // arg unsafe.Pointer
        )
    =>
        deferprocStack(D, extractGlobalName(Pfn), Arg)
    ... </k>
    
    rule <k>
        VoidGlobalCall(@runtime.deferreturn,
                        _:ParamFactor,  //  undef
                        _:ParamFactor  //  frame *bool
        )
    =>
        deferreturn()
    ... </k>

endmodule

/*
    运行时函数的语义规则
*/
module GOLLVM-RUNTIME
    imports GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-MEM
    imports RUNTIME-PREPROCESS
    imports LIST
    imports INT
    imports BOOL
    imports MAP
    imports K-EQUAL
    rule [Tnewobject]: <k> newobject(L:LocalName, TypeId:ObjectType) => . ...</k>
        <mem> Mem => Mem [ Addr <- createObjWithSuitableLifeTime(TypeId, true, uninit, .Map, heap) ] </mem>
        <nextId> Addr => Addr +Int 1 </nextId>
        <local2Base>
            Local2Base => Local2Base [ L <- pureAddr (Addr) ]
        </local2Base>

    rule [Tmakemap]: <k> makemap(L, MType:MapType) => . ...</k>
        <mem>... .Map => 
        Addr |-> createObjWithSuitableLifeTime(header(MType), true, pureAddr(Addr +Int 1), .Map, heap)
        Addr +Int 1 |-> createObjWithSuitableLifeTime((MType), false, .List, .Map, heap)
        ...
        </mem>
        <nextId> Addr => Addr +Int 2</nextId>
        <local2Base>
            Local2Base => Local2Base [L <- pureAddr (Addr)]
        </local2Base>
    
    // TODO 对于其他非mapassign__fast64的mapassign函数，不能直接按照Key的地址值来查找是否在map中，因为map中存储的实际上为Key位置下的值，应该只能判定Key位置的下的空间是会被堆获取的。
    rule [TmapassignExist]: <k> mapassign(Dst:LocalName, _:ValueRef, Hmap:LocalName, Key:ValueRef) => addrMapInsert(Dst, readObjMap (baseMapIdx (getBase (deref(Hmap)), Key))) ...</k> requires isValidBaseMapIdxCtor(baseMapIdx (getBase(deref (Hmap)), Key))

    rule [TmapassignNotExist]: <k> mapassign(Dst:LocalName, MapTD:ValueRef, Hmap:LocalName, Key:ValueRef) => newobject (Dst, valueTypeOfMapTypeConstGepExpr(MapTD)) ~> updateRefInMap(baseMapIdx (getBase (deref (Hmap)), Key), Dst) ...</k> 
    [owise]

    rule [Tmemcpy]: <k>
        memcpy(DstPtr:LocalName, SrcPtr:LocalName, Size:Int)
    =>
        copy({addressValOf(DstPtr)}:>BaseOffset, {addressValOf(SrcPtr)}:>BaseOffset, Size)
    ... </k>
    rule [TmemcpyGV]: <k>
        memcpy(DstPtr:LocalName, SrcPtr:GlobalName, Size:Int)
    =>
        copy({addressValOf(DstPtr)}:>BaseOffset, {addressValOfGlobalV(SrcPtr)}:>BaseOffset, Size)
    ... </k>

    //  TODO growslice这里的Content没有实际进行增长
    rule [Tgrowslice]: <k>
        growslice(RetPtr:LocalName, _:ValueRef, OldArray:LocalName, Cap:ValueRef)
    =>
        memmoveToHeapAddr(useNewAddr(), addressValOf(OldArray))
    ~>  updateObjListAtLocalV(RetPtr, 0, currNewAddr()) //  currNewAddr is function
    ~>  updateObjListAtLocalV(RetPtr, 1, nonAddr(castIntPrim(Cap)))
    ~>  updateObjListAtLocalV(RetPtr, 2, nonAddr(castIntPrim(Cap)))
    ~>  updateObjType(toAddress(readObjAtLocalVWithIdxListWrapper(RetPtr, 0)), newLenOfArrayType(getTypeOfOffset(baseOffsetOf(OldArray)), castIntPrim(Cap)))
        ... </k>
        requires toIntCastable(Cap)

    rule [Ttypedslicecopy]: <k>
        typedslicecopy(CopyLen:LocalName, Ty:ValueRef, DstPtr:LocalName, DstLen:ValueRef, SrcPtr:LocalName, SrcLen:ValueRef)
    =>
        memcpy(DstPtr, SrcPtr, SizeOfType(Ty) *Int minInt(castIntPrim(DstLen), castIntPrim(SrcLen)))
        ~> updatePrim(CopyLen, minInt(castIntPrim(DstLen), castIntPrim(SrcLen)))
    ... </k> requires toIntCastable(DstLen) andThenBool toIntCastable(SrcLen)

    rule [Tmakeslice]: <k>
        makeslice(Dst:LocalName, ElemTD:ValueRef, _:ValueRef, Cap:ValueRef)
    =>
        addrMapInsert(Dst, allocArray(ElemTD, castIntPrim(Cap), heap))
    ... </k> requires toIntCastable(Cap)

    rule [TifaceE2T2true]: <k>
        ifaceE2T2(Convertable:LocalName, ToTD:ValueRef, FromTD:ValueRef, FromData:LocalName, ToData:LocalName)
    =>
        memcpy(ToData, FromData, SizeOfType(ToTD))
    ~>  updatePrim(Convertable, true)
    ... </k> requires eqtype(ToTD, FromTD)

    rule [TifaceE2T2false]: <k>
        ifaceE2T2(Convertable:LocalName, ToTD:ValueRef, FromTD:ValueRef, FromData:LocalName, ToData:LocalName)
    =>
        // TODO memclr ToData
        memcpy(ToData, FromData, SizeOfType(ToTD))
    ~>  updatePrim(Convertable, false)
    ... </k> requires notBool eqtype(ToTD, FromTD)

    rule [TifaceI2T2true]: <k>
        ifaceI2T2(Convertable:LocalName, ToTD:ValueRef, FromTab:ValueRef, FromData:LocalName, ToData:LocalName)
    =>
        memcpy(ToData, FromData, SizeOfType(ToTD))
    ~> updatePrim (Convertable, true)
    ... </k>
    requires eqtype(ToTD, getTDFromTabConst(extractGlobalName(FromTab)))

    rule [TifaceI2T2false]: <k>
        ifaceI2T2(Convertable:LocalName, ToTD:ValueRef, FromTab:ValueRef, FromData:LocalName, ToData:LocalName)
    =>
        // TODO memclr
        memcpy(ToData, FromData, SizeOfType(ToTD))
    ~> updatePrim (Convertable, false)
    ... </k>
    requires notBool eqtype(ToTD, getTDFromTabConst(extractGlobalName(FromTab)))

    //  TODO iface EITp nil case
    rule [TifaceE2E2]: <k>
        ifaceE2E2(RetPtr:LocalName, FromTD:ValueRef, FromData:LocalName)
    =>
        updateObjListAtLocalV(RetPtr, 0, 0, .Ints, FromTD)
    ~>  updateObjListAtLocalV(RetPtr, 0, 1, .Ints, baseOffsetOf(FromData))
    ~>  updateObjListAtLocalV(RetPtr, 1, true)
    ... </k>
    requires notBool isNil(FromTD)

    rule [TifaceE2I2]: <k>
        ifaceE2I2(RetPtr:LocalName, ToInterType:ValueRef, FromTD:ValueRef, FromData:LocalName)
    =>
        updateObjListAtLocalV(RetPtr, 0, 0, .Ints, FromTD)
    ~>  updateObjListAtLocalV(RetPtr, 0, 1, .Ints, baseOffsetOf(FromData))
    ~>  updateObjListAtLocalV(RetPtr, 1, true)
    ... </k>
    requires implement(ToInterType, FromTD)

    rule [TifaceI2E2]: <k>
        ifaceI2E2(RetPtr:LocalName, FromTab:ValueRef, FromData:LocalName)
    =>
        updateObjListAtLocalV(RetPtr, 0, 0, .Ints, getTDFromTab(FromTab))
    ~>  updateObjListAtLocalV(RetPtr, 0, 1, .Ints, baseOffsetOf(FromData))
    ~>  updateObjListAtLocalV(RetPtr, 1, true)
    ... </k>
        requires notBool isNil(FromTab)
    
    rule [TifaceI2I2]: <k>
        ifaceI2I2 (RetPtr:LocalName, ToInterType:ValueRef, FromTab:ValueRef, FromData:LocalName)
    =>
        updateObjListAtLocalV(RetPtr, 0, 0, .Ints, getTDFromTab(FromTab))
    ~>  updateObjListAtLocalV(RetPtr, 0, 1, .Ints, baseOffsetOf(FromData))
    ~>  updateObjListAtLocalV(RetPtr, 1, true)
    ... </k>
        requires implement(ToInterType, getTDFromTab(FromTab))
    
    //  TODO ifaceE2T2P在栈上分配返回值
    rule [TifaceE2T2P]: <k>
        ifaceE2T2P(RetStruct:LocalName, ToTD:ValueRef, FromTD:ValueRef, FromData:LocalName)
    =>
        updatePrim(RetStruct, ListItem(baseOffsetOf(FromData)) ListItem(true))
    ... </k> requires eqtype(ToTD, FromTD)

    rule [TifaceI2T2P]: <k>
        ifaceI2T2P (RetStruct:LocalName, ToTD:ValueRef, FromTab:ValueRef, FromData:LocalName)
    =>
        updatePrim(RetStruct, ListItem(baseOffsetOf(FromData)) ListItem(true))
    ... </k> requires eqtype(ToTD, getTDFromTab(FromTab))

    rule [Ttypedmemmove]: <k>
        typedmemmove (TD:ValueRef, ToData:LocalName, FromData:LocalName)
    =>
        memcpy (ToData, FromData, SizeOfType(TD))
    ... </k>

    rule [Tdeferproc]: <k>
        deferproc (Fn:GlobalName, _:Type _:ParamAttrs ArgName:LocalName #as Arg)
    =>
        pushDeferStack(defer(Fn, Arg))
    ~>  selfCheckInHeap(addressValOf(ArgName))
    ... </k>

    rule [TdeferprocStack]: <k>
        deferprocStack(D:LocalName, Fn:GlobalName, _:Type _:ParamAttrs ArgName:LocalName #as Arg)
    =>
        pushDeferStack(defer(Fn, Arg))
    ~>  updateObjListAtLocalV (D, 4, Fn)
    ~>  updateObjListAtLocalV (D, 5, baseOffsetOf(ArgName))
    ... </k>

    rule [Tdeferreturn]: <k>
        deferreturn() => execAllDefers()
    ... </k>

endmodule
