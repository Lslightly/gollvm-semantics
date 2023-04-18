requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-call.k"
requires "gollvm-mem.k"

module DYN-INSTS-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-MEM
endmodule

module GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    imports STRING-SYNTAX
    imports MAP
    imports LIST

    //  instructions
    syntax LocalName ::= getPhiValueFromBlock(Map, LabelString) [function]
    syntax Map ::= extractPhiMap(Map, LocalName) [function]

    syntax List ::= getGepIdxList(ReturnedValGep) [function]
endmodule

module GOLLVM-DYN-INSTS
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-NORMAL-INSTS
    imports GOLLVM-TERM-INSTS
    imports GOLLVM-CALL
    imports LIST
    rule <k> execInst(I) => . ...</k>
        <warnings> ... .List => ListItem(warn(I, "not modeled"))</warnings> [priority(100)]

    rule getGepIdxList(_:OptInRange _:Type V:ValueRef , Remains:ReturnedValGep) => ListItem(V) getGepIdxList(Remains)
    rule getGepIdxList(.ReturnedValGep) => .List
endmodule

//  for normal insts like add, gep
module GOLLVM-NORMAL-INSTS
    imports DYN-INSTS-INCLUDE
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports INT
    imports K-EQUAL

    rule [Tbitcast]: <k> execInst(Dst:LocalName = bitcast _:Type Src:LocalName to DstPtrType:Type _:InstructionMetadatas) => addrMapInsert (Dst, bitcastOffset ({addressValOf(Src)}:>BaseOffset, cntNumIdxToType(readObjAtLocalV(Src), DstPtrType))) ...</k> requires isAddr(Src)
    
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
    rule [Ticmpnull]: <k>
        execInst (Dst:LocalName = icmp eq _:Type _:LocalName, null _:InstructionMetadatas)
        =>
        updatePrim (Dst, false) ...  </k>
    
    rule [Tptrtoint]: <k> execInst (Dst:LocalName = ptrtoint _:Type Src:LocalName to _:Type _:InstructionMetadatas) => addrAlias(Dst, Src) ...</k>

    rule [TloadWriteBarrier]: <k> execInst(Dst:LocalName = load _:OptVolatile _:Type , _:Type bitcast ( _:Type @runtime.writeBarrier to _:Type), _:Align _:InstructionMetadatas) => updatePrim (Dst, 1) ...</k> [priority(49)]

    rule [Tload]: <k>
        execInst (Dst:LocalName = load _:OptVolatile _:Type , _:Type Src:LocalName, _:Align _:InstructionMetadatas)
        => . ...  </k>
        <local2Base>
            Local2Base => Local2Base [ Dst <- readObjAtLocalV(Src) ]
        </local2Base>
        requires isAddr(Src) andBool (readObjAtLocalV (Src) =/=K uninit andBool (notBool isNonAddrSort(readObjAtLocalV(Src))))

    rule [Tloadprim]:
        <k>
            execInst (Dst:LocalName = load _:OptVolatile _:Type , _:Type Src:LocalName, _:Align _:InstructionMetadatas)
        => 
            . ... </k>
        <local2prim>
            PRIM => PRIM [ Dst <- trimWrapperNonAddr(readObjAtLocalV(Src)) ]
        </local2prim> requires isAddr(Src) andBool isNonAddrSort(readObjAtLocalV(Src))    
    
    rule [Tphi]: <k>
        execInst (Dst:LocalName = phi _:Type _:PHIList _:InstructionMetadatas)
        => addrAlias(Dst, getPhiValueFromBlock (extractPhiMap (PhiMap, Dst), LastBlock:LabelString)) ...  </k>
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
        <lastBlock> LastBlock </lastBlock>
        <currBlock> CurrBlock </currBlock>
    
    rule [TstoreLocalNameAddr]: <k>
        execInst(store _:OptVolatile _:Type V:LocalName , _:Type Loc:LocalName , _:Align _:InstructionMetadatas) => storeAddress (Loc, V) ... </k>
        requires isAddr(V)

    rule [TstoreLocalNameNonAddr]:
        <k>
        execInst(store _:OptVolatile _:Type V:LocalName , _:Type Dst:LocalName , _:Align _:InstructionMetadatas) => storeNonAddr(Dst, nonAddr(lookUpPrim(V))) ... </k>
        requires isPrim(V)

    rule [TstoreConst]:
        <k>
            execInst(store _:OptVolatile _:Type V:ConstValueRef , _:Type Dst:LocalName , _:Align _:InstructionMetadatas) => storeNonAddr (Dst, nonAddr(V):NonAddr) ...
        </k>

    rule [Talloc]:
        <k>
            execInst(Dst:LocalName = alloca _:OptInalloca T:Type , _:Align _:OptAddrSpace _:InstructionMetadatas) => . ...
        </k>
        <mem>
            MEM => MEM [ Addr <- object(T, true, initOfType(T), .Map, stack)]
        </mem>
        <local2Base>
            Local2Base => Local2Base [ Dst <- pureAddr(Addr) ]
        </local2Base>
        <nextId> Addr => Addr +Int 1</nextId>
    
    rule [Tgep]:
        <k>
            execInst(Dst:LocalName = getelementptr _:OptInBounds _:Type , _:OptInRange _:Type Src:LocalName, _:OptInRange _:Type 0 , IdxList:ReturnedValGep _:InstructionMetadatas) => . ...
        </k>
        <local2Base>
            Local2Base => Local2Base [ Dst <- appendOffset({addressValOf(Src)}:>BaseOffset, getGepIdxList(IdxList)) ]
        </local2Base>
    
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
            execInst(Dst:LocalName = and _:Type LHS:ValueRef, RHS:ValueRef _:InstructionMetadatas) => updatePrim(Dst, castIntPrim(LHS) &Int castIntPrim(RHS)) ...
        </k> requires toIntCastable(LHS) andBool toIntCastable(RHS)
    
    rule [Ttrunc]:
        <k>
         execInst (Dst:LocalName = trunc _:Type Src:ValueRef to _:Type _:InstructionMetadatas) => updatePrim (Dst, castIntPrim (Src) =/=Int 0) ...
        </k> requires toIntCastable(Src)
    
    rule getPhiValueFromBlock (M:Map, L:LabelString) => {M[L]}:>LocalName
    rule extractPhiMap (M:Map, Dst:LocalName) => {M[Dst]}:>Map
    
endmodule

module TERM-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    //  br valueref, true_bb, false_bb
    syntax KItem ::= condbr(ValueRef, LabelString, LabelString)
                    //  br bb
                    |br(LabelString)
endmodule

module GOLLVM-TERM-INSTS
    imports TERM-INSTS-SYNTAX
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    rule <k> evalTermInst (Term) => . ...</k>
        <errors> ... .List => ListItem(error(Term, "term inst not modeled"))</errors> [owise]
    rule <k> evalTermInst(ret _:VoidType _:InstructionMetadatas) => . ...</k>

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