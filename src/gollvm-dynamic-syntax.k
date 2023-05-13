requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-mem.k"
requires "gollvm-object.k"
requires "constant.k"
requires "list-helper.k"
requires "gollvm-syntax-helper.k"

module GOLLVM-TYPE-DESCRIPTOR-SYNTAX
    imports GOLLVM-SYNTAX
    imports CONSTANT-SYNTAX
    imports CONSTANT-DYNAMIC-SYNTAX
    imports BOOL
    syntax Bool ::= isStructTypeTD(GlobalName) [function]
                |   isPointerTypeTD(GlobalName) [function]
                |   istypeTD(GlobalName) [function]
                |   isTypeDescriptorGV(GlobalName) [function]
                //  判断ValueRef是否为类型描述符
                |   isTypeDescriptor(ValueRef) [function]
endmodule

module GOLLVM-TYPE-DESCRIPTOR
    imports GOLLVM-TYPE-DESCRIPTOR-SYNTAX
    imports BOOL
    imports CONSTANT
    imports STRING
    rule isStructTypeTD(GV:GlobalName) => LocalNameToString({getTypeOfGlobalV(GV)}:>LocalName) ==String "%StructType.0"
    rule isPointerTypeTD(GV:GlobalName) => LocalNameToString({getTypeOfGlobalV(GV)}:>LocalName) ==String "%PtrType.0"
    rule istypeTD(GV:GlobalName) => LocalNameToString({getTypeOfGlobalV(GV)}:>LocalName) ==String "%_type.0"
    rule isTypeDescriptorGV(GV:GlobalName) =>
        isStructTypeTD(GV)
    orElseBool isPointerTypeTD(GV)
    orElseBool istypeTD(GV)
    rule isTypeDescriptor(V:ValueRef) => (isGepConst(V) orBool isBitcastConst (V) ) andThenBool isTypeDescriptorGV(extractGlobalName(V))
endmodule

module LLVM-TYPE-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports CONSTANT-SYNTAX
    imports CONSTANT-DYNAMIC-SYNTAX
    imports GOLLVM-TYPE-DESCRIPTOR-SYNTAX
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
                |   offsetOfFieldIdxList(Type, List) [function]
    syntax Type ::= trimPtrType(Type) [function]
                |   subType(Type, List) [function]
                |   subTypeList(TypeList, List) [function]
                |   subTypeTD(GlobalName, List) [function]
                //  matchSubType(ParentType, Size)
                |   matchSubType(Type, Int) [function]
                |   newLenOfArrayType(Type, Int) [function]
                |   valueTypeOfMapType(GlobalName) [function]
                |   valueTypeOfMapTypeConstGepExpr(ValueRef) [function]
    syntax Bool ::= isValidTypeIdx(Type, List) [function]
                //  List of Type, Idxs
                |   isValidTypeListIdx(List, List) [function]
    syntax Bool ::= isBasicTypeSort(Type) [function]
                // TODO eqtype for TD/Type
                |   eqtype(Type, Type) [function]
                //  implement(interfacetype TD, _type TD)
                |   implement(ValueRef, ValueRef) [function]
                /*
                    getTDFromTab tab is a field of iface struct in gccgo
                    tab is an unsafe.Pointer, whose structure is actually:
                    type tab struct {
                        type *_type
                        methods []uintptr // func pointer
                    }
                */
    syntax ValueRef ::= getTDFromTab(ValueRef) [function]
                |   getTDFromTabConst(GlobalName) [function]

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
    imports TYPE-DEFINES
    imports CONSTANT-DYNAMIC
    imports GOLLVM-TYPE-DESCRIPTOR
    imports LIST-HELPER

    // rule initOfType (metadata) => uninit
    // rule initOfType (_:X86Type) => uninit
    // rule initOfType (< I:Int x T:Type >) => makeList(I, initOfType (T))
    // rule initOfType (_:Type ( _:ArgList )) => uninit
    // rule initOfType (< { TyList:TypeList } >) => initOfTypeList(TyList)
    rule initOfType (_:PrimType) => uninit
    rule initOfType (_:Type _:OptAddrSpace *) => uninit
    rule initOfType ([ I:Int x T:Type ]) => makeList(I, initOfType (T))
    rule initOfType ({ TyList:TypeList }) => initOfTypeList(TyList)
    rule [TinitOfTypeV]:
        initOfType(TV:LocalName) => initOfType(realType(TV))

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
        {readObjAtGlobalVWithIdxList(TD, 0, .Ints)}:>Int
    rule [TSizeOfTypeV]:
        SizeOfType(TypeV:LocalName) => SizeOfType(realType(TypeV))

    rule SizeOfTypeList (T:Type, Ts:TypeList) => SizeOfType(T) +Int SizeOfTypeList (Ts)
    rule SizeOfTypeList(.TypeList) => 0

    rule [ToffsetOfFieldOwise]:
        offsetOfField({ T:Type, TL:TypeList }, I:Int)
    =>
        SizeOfType(T) +Int offsetOfField({TL}, I -Int 1) [owise]
    
    rule [ToffsetOfFieldZero]:
        offsetOfField (_, 0) => 0
    
    rule [ToffsetOfFieldIdxList]:
        offsetOfFieldIdxList(T:StructType, ListItem(I:Int) Remains:List)
    =>
        offsetOfField(T, I) +Int offsetOfFieldIdxList(subType(T, ListItem(I)), Remains)
    rule [ToffsetOfFieldIdxListOne]:
        offsetOfFieldIdxList(_:Type, .List)
    =>
        0

    rule subType(T:Type, .List) => realType(T) [priority(49)]
    rule subType([_ x T], ListItem(_) L:List) => subType(T, L)
    rule subType(<_ x T>, ListItem(_) L:List) => subType(T, L)
    rule subType({ TyList }, L:List) => subTypeList(TyList, L)
    rule subType(<{ TyList }>, L:List) => subTypeList(TyList, L)
    rule subType(TypeV:LocalName, L:List) => subType(realType(TypeV), L)
    rule [TsubTypeTD]: subType(getelementptr _:OptInBounds(_:Type, _:Type TD:GlobalName , _:ReturnedVal), L:List) => subTypeTD(TD, L) requires isLocalNameSort(getTypeOfGlobalV(TD))

    rule subTypeList(TyList:TypeList, ListItem(I:Int) L:List) => subType({convTypeList2List(TyList)[I]}:>Type, L)

    rule [TsubTypeTDStruct]: subTypeTD(TD:GlobalName, ListItem(I:Int) Remains:List) =>
    subTypeTD(
        readConstAndExtractGlobalName(  //  the I th field's typ field
            readConstAndExtractGlobalName(  //  fields' array pointer
                TD, 1, 0, .Ints
            ),
            I, 2, .Ints
        ),
        Remains
    )
    requires isStructTypeTD(TD)
    rule subTypeTD(TD:GlobalName, .List) => TD

    rule isValidTypeIdx (_:Type, .List) => true [priority(49)]
    rule isValidTypeIdx(_:PrimType, .List) => true
    rule isValidTypeIdx(_:Type _:OptAddrSpace *, .List) => true
    rule isValidTypeIdx([ I:Int x T:Type ], ListItem(Idx:Int) L:List) => Idx <Int I andBool isValidTypeIdx(T, L)
    rule isValidTypeIdx({ TyList:TypeList }, L:List) => isValidTypeListIdx(convTypeList2List(TyList), L)

    rule isValidTypeListIdx (TyList:List, ListItem(Idx:Int) L:List) => Idx <Int size (TyList) andBool isValidTypeIdx({TyList[Idx]}:>Type, L)
    rule isValidTypeIdx (_:Type, _:List) => false [owise]
    rule isValidTypeIdx (TypeV:LocalName, L:List) => isValidTypeIdx(realType(TypeV), L)

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
    rule
        cntDepthOf1stUnderlyingType(TypeV:LocalName)
    =>
        cntDepthOf1stUnderlyingType(realType(TypeV))

    rule cntDepthOf1stUnderlyingTypeOfList(.TypeList) => 0
    rule cntDepthOf1stUnderlyingTypeOfList (T:Type, _:TypeList) => cntDepthOf1stUnderlyingType (T)

    rule trimPtrType(T:Type _:OptAddrSpace *) => T

    rule newLenOfArrayType([_:Int x T:Type], NewLen:Int) => [NewLen x T]

    rule [TvalueTypeOfMapType]:
        valueTypeOfMapType(MapTD:GlobalName)
    =>
        {readObjAtGlobalVWithIdxList(MapTD, 2, .Ints)}:>ValueRef
    
    rule [TvalueTypeOfMapTypeConstGepExpr]:
        valueTypeOfMapTypeConstGepExpr(V:ValueRef)
    =>
        valueTypeOfMapType(extractGlobalName(V))

    //  TODO not complete
    rule isBasicTypeSort (_:Type) => false [owise]
    rule isBasicTypeSort (_:IntTypePre) => true
    rule isBasicTypeSort (_:FPType) => true
    rule isBasicTypeSort (_:LabelType) => true
    rule isBasicTypeSort (_:VoidType) => true
    rule isBasicTypeSort (_:X86Type) => true
    rule isBasicTypeSort (metadata) => true
    rule isBasicTypeSort (_:Type _:OptAddrSpace *) => true
    rule isBasicTypeSort (_:Type (_:ArgList)) => true
    rule isBasicTypeSort (TD:GlobalName) => getTypeOfGlobalV (TD) ==K %_type.0
    rule
        isBasicTypeSort(GepTD:ValueRef)
    =>
        getTypeOfGlobalV(extractGlobalName(GepTD)) ==K %PtrType.0
    requires isGepConst(GepTD)

    rule eqtype(L:Type, R:Type) => L ==K R [owise]
    //  TODO measure accurate _type*
    rule eqtype(L:ValueRef, R:ValueRef) => extractGlobalName(L) ==K extractGlobalName(R)

    //  TODO implement
    rule implement(_:ValueRef, _:ValueRef) => true

    rule getTDFromTabConst(Tab:GlobalName) => {readObjAtGlobalVWithIdxList(Tab, 0, .Ints)}:>ValueRef
    rule getTDFromTab(Tab:ValueRef) => getTDFromTabConst(extractGlobalName(Tab))

endmodule

module TYPE-DEFINES
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    syntax Type ::= realType(Type) [function]
    rule [TrealType]:
    [[
        realType(TypeV:LocalName)
    =>
        {MAP[TypeV]}:>Type
    ]]
    <typedefs> MAP </typedefs>
    rule realType(V:Type) => V [owise]
endmodule

/*
    在动态语义部分用到的语法结构和函数
*/
module GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-SYNTAX-HELPER-SYNTAX
    imports LIST
    imports INT-SYNTAX
    imports BOOL-SYNTAX
    imports ARRAY-SYNTAX
    imports MAP
    imports SET
    imports K-EQUAL
    imports LIST-HELPER-SYNTAX
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)

                //  control information
    syntax Control ::= control(K, K, K, K, List)
                //  frame(local2Base, local2prim, stackAllocs, deferStack, control)
    syntax StackFrame ::= frame(Map, Map, Map, List, Control)
                        //  defer(Fn, Arg Pointer)
    syntax Map ::= getLastFrameLocal2Base() [function]
                |  getLastFrameLocal2prim() [function]
                |  getLastFrameStackAllocs() [function]
    syntax Bool ::= inLastFrameLocal2Base(LocalName) [function]
                |   inLastFrameLocal2prim(LocalName) [function]
    syntax BaseOffset ::= getLastFrameBaseOffsetOf(LocalName) [function]
    syntax Content ::= getLastFramePrimOf(LocalName) [function]
                //  store/restore local2Base local2prim stackAllocs, need to be sync with frame structure
    syntax KItem ::= stuck()
    syntax KItem ::= storeStackState() | restoreStackState()
                //  increase life time number / decrease life time number
                |   shorterLifeTime()  | longerLifeTime()
                //  map arguments to parameters.
                |   mapArgsToParams(ParamList, ArgList)
                //  map one argument to one parameter, find parameter's value in stack frame
                |   mapArgToParam(ValueRef, LocalVar)
                |   storeReturnV(KItem)
                //  get return value
                |   getReturnV() [function]
                //  map return value to receiver
                |   mapReturnToReceiver(LocalName)
    
    // defer utility
    syntax DeferFrame ::= defer(GlobalName, ParamFactor)
                |   topOfDeferStack() [function]
                |   popDeferStack()
    syntax KItem ::= pushDeferStack(DeferFrame)
    syntax Bool ::= isDefetStackEmpty() [function]
    // execute defer function, following a defer in k cell
    syntax KItem ::= execDefer(DeferFrame)
                |   execAllDefers()
                

                    //  return whether function has definition
    syntax Bool ::= isDefineFunction(GlobalName) [function]
                    //  return param list of function
    syntax ArgList ::= getParams(GlobalName) [function]
    
    syntax Int ::= currBase() [function]
    syntax LabelString ::= getLastBlock() [function]

    syntax Instruction ::= getCurrInst() [function]

    syntax KItem ::= warn(KItem, String) | error(KItem, String)

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