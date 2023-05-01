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
                    |mapassign(LocalName, LocalName, ValueRef)
                    //  memcpy(DstPtr, SrcPtr, Size)
                    |memcpy(LocalName, LocalName, Int)
                    //  growslice(RetPtr, ElemType, OldArray, Cap)
                    |growslice(LocalName, ValueRef, LocalName, ValueRef)
                    //  typedslicecopy(CopyLen, Ty, DstPtr, DstLen, SrcPtr, SrcLen)
                    |typedslicecopy(LocalName, ValueRef, LocalName, ValueRef, LocalName, ValueRef)
                    //  makeslice(Dst, ElemTD, Len, Cap)
                    |makeslice(LocalName, ValueRef, ValueRef, ValueRef)
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
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.mapassign__fast64, _:ParamFactor, _:ParamFactor, _:Type _:ParamAttrs Hmap:LocalName, _:Type _:ParamAttrs Key:ValueRef) => mapassign(LocalV, Hmap, Key) ...</k>

    rule <k>
    VoidGlobalCall (@runtime.gcWriteBarrier, _:ParamFactor, _:Type _:ParamAttrs Dst:LocalName, _:Type _:ParamAttrs Src:LocalName)
    => storeAddress(Dst, StringToIntTypePre("i64") .OptAddrSpace *, Src) ... </k>

    rule <k>
    VoidGlobalCall (@llvm.memcpy.p0i8.p0i8.i64, _:Type _:ParamAttrs DstPtr:LocalName , _:Type _:ParamAttrs SrcPtr:LocalName, _:Type _:ParamAttrs Size:Int, _:ParamFactor) => memcpy(DstPtr, SrcPtr, Size) ...
    </k>

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
        <mem> Mem => Mem [ Addr <- object(TypeId, true, uninit, .Map, heap) ] </mem>
        <nextId> Addr => Addr +Int 1 </nextId>
        <local2Base>
            Local2Base => Local2Base [ L <- pureAddr (Addr) ]
        </local2Base>

    rule [Tmakemap]: <k> makemap(L, MType:MapType) => . ...</k>
        <mem>... .Map => 
        Addr |-> object(header(MType), true, pureAddr(Addr +Int 1), .Map, heap)
        Addr +Int 1 |-> object((MType), false, .List, .Map, heap)
        ...
        </mem>
        <nextId> Addr => Addr +Int 2</nextId>
        <local2Base>
            Local2Base => Local2Base [L <- pureAddr (Addr)]
        </local2Base>
    
    // TODO 对于其他非mapassign__fast64的mapassign函数，不能直接按照Key的地址值来查找是否在map中，因为map中存储的实际上为Key位置下的值，应该只能判定Key位置的下的空间是会被堆获取的。
    rule [TmapassignExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => addrMapInsert(Dst, readObjMap (baseMapIdx (getBase (deref(Hmap)), Key))) ...</k> requires isValidBaseMapIdxCtor(baseMapIdx (getBase(deref (Hmap)), Key))

    rule [TmapassignNotExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => newobject (Dst, unknown) ~> updateRefInMap(baseMapIdx (getBase (deref (Hmap)), Key), Dst) ...</k> 
    [owise]

    rule [Tmemcpy]: <k>
        memcpy(DstPtr:LocalName, SrcPtr:LocalName, Size:Int)
    =>
        copy({addressValOf(DstPtr)}:>BaseOffset, {addressValOf(SrcPtr)}:>BaseOffset, Size)
    ... </k>

    //  TODO growslice这里的Content没有实际进行增长
    rule [Tgrowslice]: <k>
        growslice(RetPtr:LocalName, _:ValueRef, OldArray:LocalName, Cap:ValueRef)
    =>
        updateObjListAtLocalV(RetPtr, 0, useNewAddr())
    ~>  updateObjListAtLocalV(RetPtr, 1, nonAddr(castIntPrim(Cap)))
    ~>  updateObjListAtLocalV(RetPtr, 2, nonAddr(castIntPrim(Cap)))
    ~>  memmoveToHeapAddr(toAddress(readObjAtLocalVWithIdxListWrapper(RetPtr, 0)), addressValOf(OldArray))
    ~>  updateObjType(toAddress(readObjAtLocalVWithIdxListWrapper(RetPtr, 0)), newLenOfArrayType(getTypeOfOffset(baseOffsetOf(OldArray)), castIntPrim(Cap)))
        ... </k>
        requires toIntCastable(Cap)

    rule [Ttypedslicecopy]: <k>
        typedslicecopy(CopyLen:LocalName, Ty:ValueRef, DstPtr:LocalName, DstLen:ValueRef, SrcPtr:LocalName, SrcLen:ValueRef)
    =>
        memcpy(DstPtr, SrcPtr, sizeOfTD(Ty) *Int minInt(castIntPrim(DstLen), castIntPrim(SrcLen)))
        ~> updatePrim(CopyLen, minInt(castIntPrim(DstLen), castIntPrim(SrcLen)))
    ... </k> requires toIntCastable(DstLen) andThenBool toIntCastable(SrcLen)

    rule [Tmakeslice]: <k>
        makeslice(Dst:LocalName, ElemTD:ValueRef, _:ValueRef, Cap:ValueRef)
    =>
        addrMapInsert(Dst, allocArray(ElemTD, castIntPrim(Cap), heap))
    ... </k> requires toIntCastable(Cap)

endmodule
