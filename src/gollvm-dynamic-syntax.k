requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-mem.k"
requires "gollvm-object.k"
requires "constant.k"
requires "list-helper.k"

module LLVM-TYPE-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports CONSTANT-SYNTAX
    imports CONSTANT-DYNAMIC-SYNTAX
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
                //  offsetOfField(StructType, FieldNumber)
                //  offset size from the beginning of the struct to the field number of struct
                |   offsetOfField(StructType, Int) [function]
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
    imports CONSTANT-DYNAMIC

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

    rule SizeOfType(T:IntTypePre) => 1 requires isi8(T) [priority(49)]
    rule SizeOfType(T:IntTypePre) => 4 requires isi32(T)
    rule SizeOfType (metadata) => 8
    rule SizeOfType (_:X86Type) => 8
    rule SizeOfType (_:PrimType) => 8
    rule SizeOfType (_:Type _:OptAddrSpace *) => 8
    rule SizeOfType (_:Type ( _:ArgList )) => 8
    rule SizeOfType ([ I:Int x T:Type ]) => I *Int SizeOfType(T)
    rule SizeOfType (< I:Int x T:Type >) => I *Int SizeOfType(T)
    rule SizeOfType ({ TyList:TypeList }) => SizeOfTypeList(TyList)
    rule SizeOfType (< { TyList:TypeList } >) => SizeOfTypeList(TyList)
    //  Gep Type Descriptor
    rule [TSizeOfTypeGepTD]: SizeOfType(GepTD:ConstExpr) => {evalConst(GepTD)}:>Int
    //  Type Descriptor
    rule [TSizeOfTypeTD]:
        SizeOfType(TD:GlobalName)
    =>
        {readConst(TD, ListItem(0))}:>Int

    rule SizeOfTypeList (T:Type, Ts:TypeList) => SizeOfType(T) +Int SizeOfTypeList (Ts)
    rule SizeOfTypeList(.TypeList) => 0

    rule [ToffsetOfFieldOwise]:
        offsetOfField({ T:Type, TL:TypeList }, I:Int)
    =>
        SizeOfType(T) +Int offsetOfField({TL}, I -Int 1) [owise]
    
    rule [ToffsetOfFieldZero]:
        offsetOfField (_, 0) => 0

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

    rule cntDepthOf1stUnderlyingType (metadata) => 0
    rule cntDepthOf1stUnderlyingType (_:X86Type) => 0
    rule cntDepthOf1stUnderlyingType (_:PrimType) => 0
    rule cntDepthOf1stUnderlyingType (_:Type _:OptAddrSpace *) => 0
    rule cntDepthOf1stUnderlyingType (_:Type ( _:ArgList )) => 0
    rule cntDepthOf1stUnderlyingType ([ _:Int x T:Type ]) => 1 +Int cntDepthOf1stUnderlyingType (T)
    rule cntDepthOf1stUnderlyingType (< _:Int x T:Type >) => 1 +Int  cntDepthOf1stUnderlyingType (T)
    rule cntDepthOf1stUnderlyingType ({ TyList:TypeList }) => 1 +Int cntDepthOf1stUnderlyingTypeOfList (TyList)
    rule cntDepthOf1stUnderlyingType (< { TyList:TypeList } >) => 1 +Int cntDepthOf1stUnderlyingTypeOfList (TyList)
    rule [TcntDepthOf1stUnderlyingTypeGepTD]:
        cntDepthOf1stUnderlyingType(_:ConstExpr) => 0
    rule [TcntDepthOf1stUnderlyingTypeTD]:
        cntDepthOf1stUnderlyingType(_:GlobalName) => 0

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
    imports LIST-HELPER-SYNTAX
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)
    syntax Int ::= currBase() [function]
    syntax LabelString ::= getLastBlock() [function]

    syntax KItem ::= warn(KItem, String) | error(KItem, String) | heap2stack(KItem, KItem, KItem)

    syntax UnInit ::= "uninit"
    syntax KItem ::= UnInit
    syntax KResult ::= UnInit

// type assertion
    syntax Bool ::= isIntSort(KItem) [function]
                |   isTypeSort(KItem) [function]

    syntax KItem ::= castPrim(ValueRef) [function]
    syntax Bool ::= toPrimCastable(ValueRef) [function]
    syntax Int ::= castIntPrim(ValueRef) [function]
    syntax Bool ::= toIntCastable(ValueRef) [function]
endmodule