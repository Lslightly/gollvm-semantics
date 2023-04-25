requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-mem.k"
requires "gollvm-object.k"
requires "helper.k"

module LLVM-TYPE-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports LIST
    //  Type -> List with default value uninit
    //  TypeList -> List with default value uninit
    syntax Content ::= initOfType(Type) [function]
    syntax List ::= initOfTypeList(TypeList) [function]
                |   convTypeList2List(TypeList) [function]
    syntax Int ::=  cntDepthOf1stUnderlyingType(Type) [function]
                |   cntDepthOf1stUnderlyingTypeOfList(TypeList) [function]
                |   SizeOfType(Type) [function]
                |   SizeOfTypeList(TypeList) [function]
    syntax Type ::= trimPtrType(Type) [function]
                |   subType(Type, List) [function]
                |   subTypeList(TypeList, List) [function]
                //  matchSubType(ParentType, Size)
                |   matchSubType(Type, Int) [function]
                |   newLenOfArrayType(Type, Int) [function]
    syntax Bool ::= isValidTypeIdx(Type, List) [function]
                //  List of Type, Idxs
                |   isValidTypeListIdx(List, List) [function]

endmodule

/*
    类型相关操作
    创建类型对应的Content
    获得类型大小
    子类型
    获取嵌套类型深度等
*/
module LLVM-TYPE-DYNAMIC
    imports LLVM-TYPE-DYNAMIC-SYNTAX
    imports OBJECT-SYNTAX
    imports LIST

    // rule initOfType (metadata) => uninit
    // rule initOfType (_:X86Type) => uninit
    // rule initOfType (< I:Int x T:Type >) => makeList(I, initOfType (T))
    // rule initOfType (_:Type ( _:ArgList )) => uninit
    // rule initOfType (< { TyList:TypeList } >) => initOfTypeList(TyList)
    rule initOfType (_:PrimType) => uninit
    rule initOfType (_:Type _:OptAddrSpace *) => uninit
    rule initOfType ([ I:Int x T:Type ]) => makeList(I, initOfType (T))
    rule initOfType ({ TyList:TypeList }) => initOfTypeList(TyList)

    rule initOfTypeList (T:Type, Ts:TypeList) => ListItem(initOfType(T)) initOfTypeList (Ts)
    rule initOfTypeList(.TypeList) => .List

    rule convTypeList2List(T:Type, TL:TypeList) => ListItem(T) convTypeList2List (TL)
    rule convTypeList2List(.TypeList) => .List

    rule SizeOfType (metadata) => 8
    rule SizeOfType (_:X86Type) => 8
    rule SizeOfType (_:PrimType) => 8
    rule SizeOfType (_:Type _:OptAddrSpace *) => 8
    rule SizeOfType (_:Type ( _:ArgList )) => 8
    rule SizeOfType ([ I:Int x T:Type ]) => I *Int SizeOfType(T)
    rule SizeOfType (< I:Int x T:Type >) => I *Int SizeOfType(T)
    rule SizeOfType ({ TyList:TypeList }) => SizeOfTypeList(TyList)
    rule SizeOfType (< { TyList:TypeList } >) => SizeOfTypeList(TyList)

    rule SizeOfTypeList (T:Type, Ts:TypeList) => SizeOfType(T) +Int SizeOfTypeList (Ts)
    rule SizeOfTypeList(.TypeList) => 0

    rule subType(T:Type, .List) => T [priority(49)]
    rule subType([_ x T], ListItem(_) L:List) => subType(T, L)
    rule subType(<_ x T>, ListItem(_) L:List) => subType(T, L)
    rule subType({ TyList }, L:List) => subTypeList(TyList, L)
    rule subType(<{ TyList }>, L:List) => subTypeList(TyList, L)

    rule subTypeList(TyList:TypeList, ListItem(I:Int) L:List) => subType({convTypeList2List(TyList)[I]}:>Type, L)

    rule isValidTypeIdx (_:Type, .List) => true [priority(49)]
    rule isValidTypeIdx(_:PrimType, .List) => true
    rule isValidTypeIdx(_:Type _:OptAddrSpace *, .List) => true
    rule isValidTypeIdx([ I:Int x T:Type ], ListItem(Idx:Int) L:List) => Idx <Int I andBool isValidTypeIdx(T, L)
    rule isValidTypeIdx({ TyList:TypeList }, L:List) => isValidTypeListIdx(convTypeList2List(TyList), L)

    rule isValidTypeListIdx (TyList:List, ListItem(Idx:Int) L:List) => Idx <Int size (TyList) andBool isValidTypeIdx({TyList[Idx]}:>Type, L)
    rule isValidTypeIdx (_:Type, _:List) => false [owise]

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

    rule newLenOfArrayType([_:Int x T:Type], NewLen:Int) => [NewLen x T]

endmodule

//  for type descriptor in gollvm
module GOLLVM-TYPEDESCRIPTOR-SYNTAX
    imports GOLLVM-SYNTAX
    imports INT
    syntax Int ::= sizeOfTD(ValueRef) [function]
endmodule

module GOLLVM-TYPEDESCRIPTOR
    imports GOLLVM-TYPEDESCRIPTOR-SYNTAX
    //TODO complete size of type descriptor
    rule sizeOfTD(_:ValueRef) => 8
endmodule

/*
    在动态语义部分用到的语法结构和函数
*/
module GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    imports INT-SYNTAX
    imports BOOL-SYNTAX
    imports ARRAY-SYNTAX
    imports MAP
    imports K-EQUAL
    imports HELPER-SYNTAX
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)
    syntax LabelString ::= getLastBlock() [function]

    syntax KItem ::= warn(KItem, String) | error(KItem, String) | heap2stack(KItem, KItem, KItem)

    syntax UnInit ::= "uninit"
    syntax KItem ::= UnInit
    syntax KResult ::= UnInit

// type assertion
    syntax Bool ::= isIntSort(KItem) [function]
                |   isTypeSort(KItem) [function]


// create:
    syntax List ::= createIdxList(Ints) [function]
// properties:
    syntax Bool ::= isListSort(KItem) [function]
                |   isValidIdx(List, Int) [function]
                |   existInList(List, KItem) [function]
    syntax Int ::= cnt1stItemDim(List) [function]
                //  return index if found else size(List)
                |   find1stIdx(List, KItem) [function]
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
                //  remove ending zeros
                |   trimEndZeros(List) [function]
    

// create:------------------------------------------
    syntax Ints ::= List{Int, ","}
    syntax KResult ::= Ints
    rule createIdxList (I:Int, Idxs:Ints) => ListItem(I) createIdxList(Idxs)
    rule createIdxList(.Ints) => .List

// read:---------------------------------------------
    rule [TgetListElemMultiDimOneIdx]: getListElemMultiDim (Src:List, ListItem(I:Int) .List) => Src[I] [priority(50)]
    rule [TgetListElemMultiDimMultiIdx]:getListElemMultiDim (Src:List, ListItem(I:Int) Remains:List) => getListElemMultiDim ({Src[I]}:>List, Remains) [priority(51)]
    rule [TgetListElemMultiDimEmptyIdx]:getListElemMultiDim (L:List, .List) => L

// properties:----------------------------------------
    rule isListSort(_:List) => true
    rule isListSort(_) => false [owise]
    rule isValidIdx(L:List, I:Int) => I >=Int 0 andBool I <Int size(L)

    rule cnt1stItemDim (.List) => 0
    rule cnt1stItemDim(ListItem(I) _:List) => 1 +Int cnt1stItemDim ({I}:>List) requires isListSort(I)
    rule cnt1stItemDim (ListItem(_) _:List) => 1 [owise]

    rule find1stIdx(.List, _) => 0 [priority(49)]
    rule find1stIdx(ListItem(I) _:List, Val:KItem) => 0 requires I ==K Val
    rule find1stIdx(ListItem(_) Remains:List, Val:KItem) => 1 +Int find1stIdx(Remains, Val) [owise]
    rule existInList(L:List, Val:KItem) => find1stIdx(L, Val) =/=K size(L)

//  update:------------------------------------------
    rule [TupdateListEmptyIdx]:updateListMultiDim (_, .List, NewVal:KItem) => ListItem(NewVal) .List [priority(50)]
    rule [TupdateListOneIdx]:updateListMultiDim (Src:List, ListItem(I:Int) .List, NewVal) => Src [ I <- NewVal] [priority(51)]
    rule [TupdateListMultiIdx]: updateListMultiDim (Src:List, ListItem(I:Int) RemainIdxs:List, NewVal:KItem) => Src [ I <- updateListMultiDim ({Src[I]}:>List, RemainIdxs, NewVal)] [priority(52)]

    rule appendZeros (Src:List, Num:Int) => Src makeList(Num, 0)
    rule [TprefixOfListInRange]: prefixOfList(Src:List, EndIdx:Int) => range(Src, 0, size(Src) -Int EndIdx) requires size(Src) >=Int EndIdx
    rule [TprefixOfListOutOfRange]: prefixOfList(Src:List, EndIdx:Int) => appendZeros(Src, EndIdx -Int size(Src)) [owise]

    rule [TtrimEndZerosFound]: trimEndZeros(L:List) => prefixOfList(L, find1stIdx(L, 0)) requires existInList(L, 0)
    //  not exist zero
    rule [TtrimEndZerosNotFound]: trimEndZeros(L:List) => L [owise]

    
    syntax KItem ::= castPrim(ValueRef) [function]
    syntax Bool ::= toPrimCastable(ValueRef) [function]
    syntax Int ::= castIntPrim(ValueRef) [function]
    syntax Bool ::= toIntCastable(ValueRef) [function]
endmodule