requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-call.k"

module DYN-INSTS-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL-SYNTAX
endmodule

module GOLLVM-DYN-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    imports STRING-SYNTAX
    imports MAP
    syntax KItem ::= warn(KItem, String) | error(KItem, String)
    //  store(dst, Address)
    syntax KItem ::= storeAddress(LocalName, LocalName)

    //  instructions
    syntax LocalName ::= getPhiValueFromBlock(Map, LabelString) [function]
    syntax Map ::= extractPhiMap(Map, LocalName) [function]
endmodule

module GOLLVM-DYN-INSTS
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-NORMAL-INSTS
    imports GOLLVM-TERM-INSTS
    imports GOLLVM-CALL
    rule <k> execInst(I) => . ...</k>
        <warnings> ... .List => ListItem(warn(I, "not modeled"))</warnings> [owise]
    rule <k> addrAlias(Dst:LocalName, Src:LocalName) => . ...</k>
        <local2Base>
            MAP => MAP[Dst <- MAP[Src]]
        </local2Base>

    rule <k> storeAddress (Dst:LocalName, Src:LocalName) => updateObjectList ({lookUpBase(Dst)}:>Int, lookUpMem({lookUpBase(Dst)}:>Int), 0, {lookUpBase(Src)}:>Int) ...</k>

    rule [[ lookUpBase(L:LocalName) => Addr ]]
        <local2Base>
            ... L |-> Addr ...
        </local2Base>
    
    rule [[ lookUpMem(Addr:Int) => Obj ]]
        <mem>
            ... Addr |-> Obj ...
        </mem>
    rule <k> updateObjectList (Addr, object(Type:ObjectType, Const:Bool, LIST, MAP, Loc), Idx:Int, NewVal:KItem) => . ...  </k>
        <mem>
            Mem => Mem [ Addr <- object(Type, Const, LIST[Idx <- NewVal], MAP, Loc)]
        </mem>
endmodule

//  for normal insts like add, gep
module GOLLVM-NORMAL-INSTS
    imports DYN-INSTS-INCLUDE
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports INT
    imports K-EQUAL

    rule [Tbitcast]: <k> execInst(Dst:LocalName = bitcast _:Type Src:LocalName to _:Type _:InstructionMetadatas) => addrAlias(Dst, Src) ...</k>
    
    rule [TloadWriteBarrier]: <k> execInst(Dst:LocalName = load _:OptVolatile _:Type , _:Type bitcast ( _:Type @runtime.writeBarrier to _:Type), _:Align _:InstructionMetadatas) => . ...</k>
        <local2Base>
            MAP => MAP [Dst <- 1]
        </local2Base>
    
    rule [Ticmp]: <k> execInst(Dst:LocalName = icmp eq _:Type L1:LocalName , C2:Int _:InstructionMetadatas) => . ... </k>
        <local2Base>
            MAP => MAP [Dst <- {MAP[L1]}:>Int ==Int C2]
        </local2Base>
    rule [Ticmpnull]: <k>
        execInst (Dst:LocalName = icmp eq _:Type _:LocalName, null _:InstructionMetadatas)
        =>
        . ...  </k>
        <local2Base>
            MAP => MAP [Dst <- false]
        </local2Base>
    
    rule [Tptrtoint]: <k> execInst (Dst:LocalName = ptrtoint _:Type Src:LocalName to _:Type _:InstructionMetadatas) => addrAlias(Dst, Src) ...</k>

    rule [Tload]: <k>
        execInst (Dst:LocalName = load _:OptVolatile _:Type , _:Type Src:LocalName, _:Align _:InstructionMetadatas)
        => . ...  </k>
        <mem>
            ...
            Local2Base[Src] |-> object(_:ObjectType, true, LIST, _:Map, _:Location)
            ...
        </mem>
        <local2Base>
            Local2Base => Local2Base [ Dst <- LIST[0]]
        </local2Base>
        requires Src in_keys (Local2Base)
    
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
        <local2Base>
            ...
            L |-> true
            ...
        </local2Base>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>

    rule [Tcondbrfalse]: <k> condbr (L:LocalName, _, FalseBB) => evalBlock(FalseBB) ...</k>
        <local2Base>
            ...
            L |-> false
        </local2Base>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>

    rule [Tbr]: <k> evalTermInst(br label BB:LabelString _:InstructionMetadatas) => br(BB) ...</k>
    rule [br]: <k> br(BB:LabelString) => evalBlock(BB) ...</k>
        <lastBlock> _ => CurrBB </lastBlock>
        <currBlock> CurrBB </currBlock>
endmodule