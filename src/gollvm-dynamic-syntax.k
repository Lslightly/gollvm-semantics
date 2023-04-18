requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-mem.k"

module LLVM-TYPE-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports LIST
    //  Type -> List with default value uninit
    //  TypeList -> List with default value uninit
    syntax Content ::= initOfType(Type) [function]
    syntax List ::= initOfTypeList(TypeList) [function]
    syntax Int ::=  cntDepthOf1stUnderlyingType(Type) [function]
                |   cntDepthOf1stUnderlyingTypeOfList(TypeList) [function]
    syntax Type ::= trimPtrType(Type) [function]

endmodule

module LLVM-TYPE-DYNAMIC
    imports LLVM-TYPE-DYNAMIC-SYNTAX
    imports OBJECT-SYNTAX
    imports LIST

    rule initOfType (metadata) => uninit
    rule initOfType (_:X86Type) => uninit
    rule initOfType (_:PrimType) => uninit
    rule initOfType (_:Type _:OptAddrSpace *) => uninit
    rule initOfType (_:Type ( _:ArgList )) => uninit
    rule initOfType ([ I:Int x T:Type ]) => makeList(I, initOfType (T))
    rule initOfType (< I:Int x T:Type >) => makeList(I, initOfType (T))
    rule initOfType ({ TyList:TypeList }) => initOfTypeList(TyList)
    rule initOfType (< { TyList:TypeList } >) => initOfTypeList(TyList)

    rule initOfTypeList (T:Type, Ts:TypeList) => ListItem(initOfType(T)) initOfTypeList (Ts)
    rule initOfTypeList(.TypeList) => .List


    //  TODO
    rule cntDepthOf1stUnderlyingType (metadata) => 0
    rule cntDepthOf1stUnderlyingType (_:X86Type) => 0
    rule cntDepthOf1stUnderlyingType (_:PrimType) => 0
    rule cntDepthOf1stUnderlyingType (_:Type _:OptAddrSpace *) => 0
    rule cntDepthOf1stUnderlyingType (_:Type ( _:ArgList )) => 0
    rule cntDepthOf1stUnderlyingType ([ _:Int x T:Type ]) => 1 +Int cntDepthOf1stUnderlyingType (T)
    rule cntDepthOf1stUnderlyingType (< _:Int x T:Type >) => 1 +Int  cntDepthOf1stUnderlyingType (T)
    rule cntDepthOf1stUnderlyingType ({ TyList:TypeList }) => 1 +Int cntDepthOf1stUnderlyingTypeOfList (TyList)
    rule cntDepthOf1stUnderlyingType (< { TyList:TypeList } >) => 1 +Int cntDepthOf1stUnderlyingTypeOfList (TyList)

    rule cntDepthOf1stUnderlyingTypeOfList(.TypeList) => 0
    rule cntDepthOf1stUnderlyingTypeOfList (T:Type, _:TypeList) => cntDepthOf1stUnderlyingType (T)

    rule trimPtrType(T:Type _:OptAddrSpace *) => T

endmodule

module GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    imports INT-SYNTAX
    imports BOOL-SYNTAX
    imports ARRAY-SYNTAX
    imports MAP
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)

    syntax KItem ::= warn(KItem, String) | error(KItem, String) | heap2stack(KItem, KItem, KItem)

    syntax UnInit ::= "uninit"
    syntax KItem ::= UnInit
    syntax KResult ::= UnInit

// type assertion
    syntax Bool ::= isIntSort(KItem) [function]


// create:
    syntax List ::= createIdxList(Ints) [function]
// properties:
    syntax Bool ::= isListSort(KItem) [function]
    syntax Int ::= cnt1stItemDim(List) [function]
// read:
                //  src, idx list
    syntax KItem ::= getListElemMultiDim(List, List) [function]
// update:
    //  updateList(src, idx list, newval)
    syntax List ::= updateListMultiDim(List, List, KItem) [function]
                |   appendZeros(List, Int) [function]
                /*  prefix(src, prefixIdx)
                    get src[:prefixIdx]
                    if prefixIdx >= len(src), then append (prefixIdx - size(src)) zeros at the end
                */
                |   prefixOfList(List, Int) [function]

// create:------------------------------------------
    syntax Ints ::= List{Int, ","}
    rule createIdxList (I:Int, Idxs:Ints) => ListItem(I) createIdxList(Idxs)
    rule createIdxList(.Ints) => .List

    rule [TupdateListEmptyIdx]:updateListMultiDim (_, .List, NewVal:KItem) => ListItem(NewVal) .List [priority(50)]
    rule [TupdateListOneIdx]:updateListMultiDim (Src:List, ListItem(I:Int) .List, NewVal) => Src [ I <- NewVal] [priority(51)]
    rule [TupdateListMultiIdx]: updateListMultiDim (Src:List, ListItem(I:Int) RemainIdxs:List, NewVal:KItem) => Src [ I <- updateListMultiDim ({Src[I]}:>List, RemainIdxs, NewVal)] [priority(52)]

// read:---------------------------------------------
    rule [TgetListElemMultiDimOneIdx]: getListElemMultiDim (Src:List, ListItem(I:Int) .List) => Src[I] [priority(50)]
    rule [TgetListElemMultiDimMultiIdx]:getListElemMultiDim (Src:List, ListItem(I:Int) Remains:List) => getListElemMultiDim ({Src[I]}:>List, Remains) [priority(51)]
    rule [TgetListElemMultiDimEmptyIdx]:getListElemMultiDim (L:List, .List) => L

// properties:----------------------------------------
    rule isListSort(_:List) => true
    rule isListSort(_) => false [owise]

    rule cnt1stItemDim (.List) => 0
    rule cnt1stItemDim(ListItem(I) _:List) => 1 +Int cnt1stItemDim ({I}:>List) requires isListSort(I)
    rule cnt1stItemDim (ListItem(_) _:List) => 1 [owise]

    rule appendZeros (Src:List, Num:Int) => Src makeList(Num, 0)
    rule prefixOfList(Src:List, EndIdx:Int) => range(Src, 0, size(Src) -Int EndIdx) requires size(Src) >Int EndIdx
    rule prefixOfList(Src:List, EndIdx:Int) => appendZeros(Src, EndIdx -Int size(Src)) [owise]

    syntax Int ::= castIntPrim(ValueRef) [function]
    syntax Bool ::= toIntCastable(ValueRef) [function]
endmodule