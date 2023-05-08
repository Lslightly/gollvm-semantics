requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-call.k"
requires "gollvm-mem.k"
requires "list2list.k"

//  dyn-insts的统一import模块
module DYN-INSTS-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-MEM
endmodule

//  dyn-insts会使用的抽象语法结构和函数
module GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    imports STRING-SYNTAX
    imports MAP
    imports LIST
    imports LIST2LIST-SYNTAX

    //  instructions
    syntax ValueRef ::= getPhiValueFromBlock(Map, LabelString) [function]

    syntax Map ::= 
                   /*
                        extracPhiMap(PhiInstMaps, Dst)
                        Dst |-> LabelString |-> Src
                   */
                   extractPhiMap(Map, LocalName) [function]
                |  getPhiMap() [function]

    syntax List ::= getGepIdxList(ReturnedValGep) [function]
    /*
        get size of 
    */
    syntax Int ::= sizeOfGepIdxList(Type, ReturnedValGep) [function]
endmodule

//  dyn-insts总模块
module GOLLVM-DYN-INSTS
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-NORMAL-INSTS
    imports GOLLVM-TERM-INSTS
    imports GOLLVM-CALL
    imports LIST
    rule <k> execInst(I) => . ...</k>
        <warnings> ... .List => ListItem(warn(I, "not modeled"))</warnings> [priority(201)]

    rule getPhiValueFromBlock(M:Map, L:LabelString) => {M[L]}:>ValueRef
    rule extractPhiMap (M:Map, Dst:LocalName) => {M[Dst]}:>Map

    rule [[ getPhiMap() => PhiMap ]]
        <functions>
            ...
            <function>
                ...
                <functionName>CurrFunc</functionName>
                <basicBlocks>
                    ...
                    <basicBlock>
                        ...
                        <blockName> CurrBlock </blockName>
                        <phiMap> PhiMap:Map </phiMap>
                        ...
                    </basicBlock>
                    ...
                </basicBlocks>
                ...
            </function>
            ...
        </functions>
        <currFunc> CurrFunc </currFunc>
        <currBlock> CurrBlock </currBlock>


    rule getGepIdxList(_:OptInRange _:Type V:ValueRef , Remains:ReturnedValGep) => ListItem(castIntPrim(V)) getGepIdxList(Remains) requires toIntCastable(V)
    rule getGepIdxList(.ReturnedValGep) => .List

    rule [TsizeOfGepIdxListRecur]: sizeOfGepIdxList(T:Type, _:OptInRange _:Type V:ValueRef , Remains:ReturnedValGep)
    =>
        castIntPrim(V) *Int SizeOfType(T) +Int sizeOfGepIdxList(subType(T, ListItem(0)), Remains) requires toIntCastable(V)
    [priority(51)]

    rule [TsizeOfGepIdxListStruct]:
        sizeOfGepIdxList(
            StructT:StructType,
            _:OptInRange _:Type StructOffset:ValueRef,
            Remains:ReturnedValGep
        )
    =>
        castIntPrim(StructOffset) *Int SizeOfType(StructT)
            +Int offsetOfFieldIdxList(StructT, getGepIdxList(Remains))
    requires toIntCastable(StructOffset)
    [priority(50)]

    rule [TsizeOfGepIdxList]: sizeOfGepIdxList(T:Type, _:OptInRange _:Type V:ValueRef , .ReturnedValGep)
    =>
        castIntPrim(V) *Int SizeOfType(T) requires toIntCastable(V)
    [priority(50)]

    rule [TsizeOfGepIdxListNoIdx]:
        sizeOfGepIdxList(_:Type, .ReturnedValGep)
    =>
        0
    
endmodule

//  for normal insts like add, gep
module GOLLVM-NORMAL-INSTS
    imports DYN-INSTS-INCLUDE
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports INT
    imports K-EQUAL
    imports SET

    rule [Tbitcasti8]: <k> execInst(Dst:LocalName = bitcast _:Type Src:LocalName to Ty:Type _:OptAddrSpace * _:InstructionMetadatas) => addrMapInsert (Dst, largestStepOffset({addressValOf(Src)}:>BaseOffset)) ...</k> requires isi8(Ty) andThenBool isAddr(Src) [priority(51)]

    rule [Tbitcast]: <k>
        execInst(Dst:LocalName = bitcast _:Type Src:LocalName to DstPointsToType:Type _:OptAddrSpace * _:InstructionMetadatas)
    =>
        addrMapInsert (Dst, getSizeMatchedOffset(SizeOfType(DstPointsToType), baseOffsetOf(Src))) ...
    </k> requires notBool isi8(DstPointsToType) andBool isAddr(Src)

    rule [Ticmpeq]: <k> execInst(Dst:LocalName = icmp eq _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) ==Int castIntPrim(L2)) ... </k>
    requires toIntCastable(L1) andBool toIntCastable(L2)
    rule [Ticmpeqnull]: <k> execInst(Dst:LocalName = icmp eq _:Type null , null _:InstructionMetadatas)
    =>
        updatePrim (Dst, true) ...</k>
    rule [Ticmpeqnull1]: <k> execInst(Dst:LocalName = icmp eq _:Type _:ValueRef , null _:InstructionMetadatas)
    =>
        updatePrim (Dst, false) ...</k> [owise]
    rule [Ticmpeqnull2]: <k> execInst(Dst:LocalName = icmp eq _:Type null , _:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, false) ...</k> [owise]
    rule [Ticmpne]: <k> execInst(Dst:LocalName = icmp ne _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) =/=Int castIntPrim(L2)) ... </k>
    rule [Ticmpslt]: <k> execInst (Dst:LocalName = icmp slt _:Type L1:ValueRef, L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim(Dst, castIntPrim(L1) <Int castIntPrim(L2)) ...</k>
    rule [Ticmpsgt]: <k> execInst(Dst:LocalName = icmp sgt _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) >=Int castIntPrim(L2)) ... </k>
    rule [Ticmpsle]: <k> execInst (Dst:LocalName = icmp sle _:Type L1:ValueRef, L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim(Dst, castIntPrim(L1) <=Int castIntPrim(L2)) ...</k>
    rule [Ticmpsge]: <k> execInst(Dst:LocalName = icmp sge _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) >=Int castIntPrim(L2)) ... </k>
    rule [Ticmpult]: <k> execInst (Dst:LocalName = icmp ult _:Type L1:ValueRef, L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim(Dst, castIntPrim(L1) <Int castIntPrim(L2)) ...</k>
    rule [Ticmpugt]: <k> execInst(Dst:LocalName = icmp ugt _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) >=Int castIntPrim(L2)) ... </k>
    rule [Ticmpule]: <k> execInst (Dst:LocalName = icmp ule _:Type L1:ValueRef, L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim(Dst, castIntPrim(L1) <=Int castIntPrim(L2)) ...</k>
    rule [Ticmpuge]: <k> execInst(Dst:LocalName = icmp uge _:Type L1:ValueRef , L2:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, castIntPrim(L1) >=Int castIntPrim(L2)) ... </k>

    rule [TicmpunknownTrue]:
    <k>
        execInst(Dst:LocalName = icmp _:IPredicate _:Type _:ValueRef , _:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, true)
    ... </k>
    [priority(100)]
    rule [TicmpunknownFalse]:
    <k>
        execInst(Dst:LocalName = icmp _:IPredicate _:Type _:ValueRef , _:ValueRef _:InstructionMetadatas)
    =>
        updatePrim (Dst, false)
    ... </k>
    [priority(100)]
    
    rule [Tptrtoint]: <k> execInst (Dst:LocalName = ptrtoint _:Type Src:LocalName to _:Type _:InstructionMetadatas) => addrAlias(Dst, Src) ...</k>

    rule [TloadWriteBarrier]: <k> execInst(Dst:LocalName = load _:OptVolatile _:Type , _:Type bitcast ( _:Type @runtime.writeBarrier to _:Type), _:Align _:InstructionMetadatas) => updatePrim (Dst, 1) ...</k> [priority(49)]

    rule [Tload]: <k>
        execInst (Dst:LocalName = load _:OptVolatile DstType:Type , _:Type Src:LocalName, _:Align _:InstructionMetadatas)
        =>  addrMapInsert(
                Dst,
                {readContentAtAddr(
                    getTypeMatchedBaseOffset(
                        DstType,
                        baseOffsetOf(Src)
                    )
                )}:>BaseOffset
            )
    ... </k>
        requires
            isAddr(Src)
        andBool
            (readContentAtAddr(getTypeMatchedBaseOffset(DstType, baseOffsetOf(Src))) =/=K uninit
            andBool (notBool isNonAddrSort(readContentAtAddr(getTypeMatchedBaseOffset(DstType, baseOffsetOf(Src))))))

    rule [Tloadprim]:
        <k>
            execInst (Dst:LocalName = load _:OptVolatile DstType:Type , _:Type Src:LocalName, _:Align _:InstructionMetadatas)
        => 
            updatePrim(
                Dst,
                trimWrapperNonAddr(
                    readContentAtAddr(
                        getTypeMatchedBaseOffset(
                            DstType,
                            baseOffsetOf(Src)
                        )
                    )
                )
            )
        ... </k>
    requires isAddr(Src)
    andBool
        isNonAddrSort(readContentAtAddr(getTypeMatchedBaseOffset(DstType, baseOffsetOf(Src))))    
    
    rule [TphiAddr]: <k>
        execInst(Dst:LocalName = phi _:Type _:PHIList _:InstructionMetadatas)
    =>
        addrAlias(Dst, {getPhiValueFromBlock(extractPhiMap (getPhiMap(), Dst), getLastBlock())}:>LocalName)
        ...  </k>
    requires isLocalNameSort(getPhiValueFromBlock(extractPhiMap (getPhiMap(), Dst), getLastBlock())) andThenBool isAddr({getPhiValueFromBlock(extractPhiMap (getPhiMap(), Dst), getLastBlock())}:>LocalName)
    
    rule [TphiPrim]: <k>
        execInst(Dst:LocalName = phi _:Type _:PHIList _:InstructionMetadatas)
    =>
        updatePrim(Dst, castPrim(getPhiValueFromBlock(extractPhiMap(getPhiMap(), Dst), getLastBlock())))
        ... </k>
    requires toPrimCastable(getPhiValueFromBlock(extractPhiMap(getPhiMap(), Dst), getLastBlock()))
    
    rule [TstoreLocalNameAddr]: <k>
        execInst(store _:OptVolatile VType:Type V:LocalName , _:Type Loc:LocalName , _:Align _:InstructionMetadatas) => storeAddress (Loc, VType, V) ... </k>
        requires isAddr(V)

    rule [TstoreLocalNameNonAddr]:
        <k>
        execInst(store _:OptVolatile VType:Type V:LocalName , _:Type Dst:LocalName , _:Align _:InstructionMetadatas) => storeNonAddr(Dst, VType, nonAddr(lookUpPrim(V))) ... </k>
        requires isPrim(V)

    rule [TstoreConst]:
        <k>
            execInst(store _:OptVolatile VType:Type V:ConstValueRef , _:Type Dst:LocalName , _:Align _:InstructionMetadatas) => storeNonAddr(Dst, VType, nonAddr(V):NonAddr) ...
        </k>

    rule [Talloc]:
        <k>
            execInst(Dst:LocalName = alloca _:OptInalloca T:Type , _:Align _:OptAddrSpace _:InstructionMetadatas) => . ...
        </k>
        <mem>
            MEM => MEM [ Addr <- createObjWithSuitableLifeTime(T, true, initOfType(T), .Map, stack)]
        </mem>
        <local2Base>
            Local2Base => Local2Base [ Dst <- pureAddr(Addr) ]
        </local2Base>
        <nextId> Addr => Addr +Int 1 </nextId>
        <stackAllocs> MAP => MAP [ Addr <- true ] </stackAllocs>
    
    rule [Tgep]:
        <k>
            execInst(Dst:LocalName = getelementptr _:OptInBounds _:Type , _:OptInRange SrcPointsToType _:OptAddrSpace * Src:LocalName, IdxList:ReturnedValGep _:InstructionMetadatas)
        =>
            addrMapInsert(
                Dst,
                addSize(
                    baseOffsetOf(Src),
                    sizeOfGepIdxList(SrcPointsToType, IdxList)
                )
            )
        ...</k>
    
    rule [Tzexttrue]:
        <k>
            execInst (Dst:LocalName = zext _:Type Src:LocalName to _:Type _:InstructionMetadatas) => updatePrim(Dst, 1) ...
        </k> requires lookUpPrim(Src) ==K true
    rule [Tzextfalse]:
        <k>
            execInst (Dst:LocalName = zext _:Type Src:LocalName to _:Type _:InstructionMetadatas) => updatePrim(Dst, 0) ...
        </k> requires lookUpPrim(Src) ==K false
    
    rule [Tand]:
        <k>
            execInst(Dst:LocalName = and _:Type LHS:ValueRef, RHS:ValueRef _:InstructionMetadatas)
        => 
            updatePrim(Dst, castIntPrim(LHS) &Int castIntPrim(RHS)) ...
        </k> requires toIntCastable(LHS) andThenBool toIntCastable(RHS)
    
    rule [TandUnknownTrue]:
        <k>
            execInst(Dst:LocalName = and _:Type _:ValueRef, _:ValueRef _:InstructionMetadatas)
        => 
            updatePrim(Dst, true)
        ... </k>
        [priority(100)]
    rule [TandUnknownFalse]:
        <k>
            execInst(Dst:LocalName = and _:Type _:ValueRef, _:ValueRef _:InstructionMetadatas)
        => 
            updatePrim(Dst, false)
        ... </k>
        [priority(100)]
    
    rule [Tadd]:
        <k>
            execInst (Dst:LocalName = add _:Type LHS:ValueRef, RHS:ValueRef _:InstructionMetadatas)
        =>
            updatePrim (Dst, castIntPrim(LHS) +Int castIntPrim(RHS)) ...
        </k> requires toIntCastable(LHS) andThenBool toIntCastable(RHS)
    
    rule [Tsub]:
        <k>
            execInst (Dst:LocalName = sub _:Type LHS:ValueRef, RHS:ValueRef _:InstructionMetadatas)
        =>
            updatePrim (Dst, castIntPrim(LHS) -Int castIntPrim(RHS)) ...
        </k> requires toIntCastable(LHS) andThenBool toIntCastable(RHS)
    
    rule [Ttrunc]:
        <k>
         execInst (Dst:LocalName = trunc _:Type Src:ValueRef to _:Type _:InstructionMetadatas) => updatePrim (Dst, castIntPrim (Src) =/=Int 0) ...
        </k> requires toIntCastable(Src)
    
    rule [Tshl]:
        <k>
            execInst(Dst:LocalName = shl _:Type LHS:ValueRef, RHS:ValueRef _:InstructionMetadatas)
        =>
            updatePrim(Dst, castIntPrim(LHS) <<Int castIntPrim (RHS))
        ... </k>
        requires toIntCastable(LHS) andThenBool toIntCastable(RHS)
    
    rule [Tselectprim]:
        <k>
            execInst(Dst:LocalName = select _:Type Cond:ValueRef, _:Type TrueV:ValueRef, _:Type FalseV:ValueRef _:InstructionMetadatas)
        =>
            updatePrim(Dst, #if {castPrim(Cond)}:>Bool #then castPrim(TrueV) #else castPrim(FalseV) #fi)
        ... </k>
        requires toPrimCastable(Cond) andThenBool toPrimCastable(TrueV) andThenBool toPrimCastable(FalseV)
    
    rule [Tselectaddr]:
        <k>
            execInst(Dst:LocalName = select _:Type Cond:ValueRef, _:Type TrueV:LocalName, _:Type FalseV:LocalName _:InstructionMetadatas)
        =>
            addrMapInsert(Dst, #if {castPrim(Cond)}:>Bool #then addressValOf(TrueV) #else addressValOf(FalseV) #fi)
        ... </k>
        requires toPrimCastable(Cond) andThenBool isAddr(TrueV) andThenBool isAddr(FalseV)

    rule [TextractvalueAddr]:
        <k>
            execInst(Dst:LocalName = extractvalue _:StructType Src:LocalName IdxList:ConstantIndexList _:InstructionMetadatas)
        =>
            addrMapInsert(Dst, toAddress(getContentElemMultiDim({lookUpPrim(Src)}:>List, getConstIdxList(IdxList))))
        ... </k>
        requires notBool isNonAddrSort(getContentElemMultiDim({lookUpPrim(Src)}:>List, getConstIdxList(IdxList)))
    rule [TextractvalueNonAddr]: <k>
        execInst(Dst:LocalName = extractvalue _:StructType Src:LocalName IdxList:ConstantIndexList _:InstructionMetadatas)
    =>
        updatePrim(
            Dst,
            trimWrapperNonAddr(
                getContentElemMultiDim({lookUpPrim(Src)}:>List, getConstIdxList(IdxList))
            )
        )
    ... </k>
        requires isNonAddrSort(getContentElemMultiDim({lookUpPrim(Src)}:>List, getConstIdxList(IdxList)))
    
endmodule

module TERM-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    //  br valueref, true_bb, false_bb
    syntax KItem ::= condbr(ValueRef, LabelString, LabelString)
                    //  br bb
                    |br(LabelString)
endmodule

/*
    gollvm跳转指令建模
*/
module GOLLVM-TERM-INSTS
    imports TERM-INSTS-SYNTAX
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    rule <k> evalTermInst (Term) => . ...</k>
        <errors> ... .List => ListItem(error(Term, "term inst not modeled"))</errors> [owise]
    rule <k> evalTermInst(ret _:VoidType _:InstructionMetadatas) => storeReturnV(uninit) ...</k>
    //  return local register value
    rule [TretNonVoidLocalVAddr]: <k>
        evalTermInst(ret _:NonVoidType LV:LocalName _:InstructionMetadatas)
    =>
        checkReturnLifeTime(baseOffsetOf(LV)) ~> storeReturnV(baseOffsetOf(LV))
    ... </k> requires isAddr(LV)

    rule [TretNonVoidLocalVNonAddr]: <k>
        evalTermInst(ret _:NonVoidType LV:LocalName _:InstructionMetadatas)
    =>
        storeReturnV(lookUpPrim(LV))
    ... </k> requires isPrim(LV)

    //  for unknown situation
    rule [TretNonVoidowise]: <k>
        evalTermInst(ret _:NonVoidType V:ValueRef _:InstructionMetadatas)
    =>
        storeReturnV(V)
    ... </k> [owise]

    rule [Tcondbr]: <k> evalTermInst(br _:IntType V:ValueRef, label TrueBB:LabelString, label FalseBB:LabelString _:InstructionMetadatas) => condbr (V, TrueBB, FalseBB) ...</k>
    rule [Tcondbrtrue]: <k> condbr (L:LocalName, TrueBB, _) => evalBlock(TrueBB) ...</k>
        <local2prim>
            ...
            L |-> true
            ...
        </local2prim>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>

    rule [Tcondbrfalse]: <k> condbr (L:LocalName, _, FalseBB) => evalBlock(FalseBB) ...</k>
        <local2prim>
            ...
            L |-> false
        </local2prim>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>

    rule [Tbr]: <k> evalTermInst(br label BB:LabelString _:InstructionMetadatas) => br(BB) ...</k>
    rule [br]: <k> br(BB:LabelString) => evalBlock(BB) ...</k>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>
endmodule