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
                    //  growslice(RetPtr, ElemType, OldArray, Cap)
                    |growslice(LocalName, ValueRef, LocalName, ValueRef)
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
    => storeAddress(Dst, Src) ... </k>

    rule <k>
    VoidGlobalCall (@llvm.memcpy.p0i8.p0i8.i64, _:Type _:ParamAttrs DstPtr:LocalName , _:Type _:ParamAttrs SrcPtr:LocalName, _:Type _:ParamAttrs Size:Int, _:ParamFactor) => copy ({addressValOf(DstPtr)}:>BaseOffset, {addressValOf(SrcPtr)}:>BaseOffset, Size) ...
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
    
    rule [TmapassignExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => addrMapInsert(Dst, readObjMap (baseMapIdx (getBase (deref(Hmap)), Key))) ...</k> requires isValidBaseMapIdxCtor(baseMapIdx (getBase(deref (Hmap)), Key))

    rule [TmapassignNotExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => newobject (Dst, unknown) ~> updateRefInMap(baseMapIdx (getBase (deref (Hmap)), Key), Dst) ...</k> 
    [owise]

    //  TODO growslice这里的Content没有实际进行增长
    rule [Tgrowslice]: <k>
        growslice(RetPtr:LocalName, ElemType:ValueRef, OldArray:LocalName, Cap:ValueRef)
    =>
        updateObjListAtLocalV(RetPtr, 0, makearray(ElemType))
    ~>  updateObjListAtLocalV(RetPtr, 1, nonAddr(castPrim(Cap)))
    ~>  updateObjListAtLocalV(RetPtr, 2, nonAddr(castPrim(Cap)))
    ~>  memmoveToHeapAddr(toAddress(readObjAtLocalVWithIdxListWrapper(RetPtr, 0)), addressValOf(OldArray))
        ... </k>
        requires toPrimCastable(Cap)


endmodule
