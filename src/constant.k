requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "list-helper.k"
requires "list2list.k"
module CONSTANT-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports LIST2LIST-SYNTAX
    imports LIST
    syntax Bool ::= isConst(GlobalName) [function]
    syntax GlobalReg ::= globalReg(Type, KItem)
// read
                        |getGlobalReg(GlobalName) [function]
// create
    //  construct nesting Structure, if ConstValueRef is nesting.
    syntax KItem ::= newConst(ConstValueRef) [function]
    //  construct nesting list by ConstValueRef
    syntax List ::= newConstList(ReturnedVal) [function]
endmodule

module CONSTANT
    imports CONSTANT-SYNTAX

    rule [[ isConst(GV:GlobalName) => GV in_keys(MAP) ]]
    <globalRegisters> MAP </globalRegisters>

// ------GlobalReg
// read
    rule [TgetGlobalReg]:
    [[
        getGlobalReg(GV:GlobalName)
    =>
        {MAP[GV]}:>GlobalReg
    ]]
    <globalRegisters> MAP </globalRegisters>
    requires isConst(GV)

//  create

    // rule newConst(< C:ReturnedVal >) => newConstList(C)
    rule [TnewConstStruct]: newConst({ C:ReturnedVal }) => newConstList(C)
    rule [TnewConstArray]: newConst([ C:ReturnedVal ]) => newConstList(C)
    // rule newConst(<{ C:ReturnedVal }>) => newConstList(C)
    rule [TnewConstOwise]: newConst(C:ConstValueRef) => C [owise]
    
    rule newConstList(_:Type V:ConstValueRef, Remains:ReturnedVal) => ListItem(newConst(V)) newConstList(Remains)
    rule newConstList(_:Type V:SymbolicValueRef, Remains:ReturnedVal) => ListItem(V) newConstList(Remains)
    rule newConstList(.ReturnedVal) => .List
endmodule

module CONSTANT-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX-HELPER
    imports CONSTANT-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports LIST-HELPER-SYNTAX
    imports LIST2LIST-SYNTAX
    imports LIST
//  read
    syntax Type ::= getTypeOfGlobalReg(GlobalReg) [function]
                |   getTypeOfGlobalV(GlobalName) [function]
    syntax KItem ::= getValOfGlobalReg(GlobalReg) [function]
                |   getValOfGlobalV(GlobalName) [function]
    //  read Constant with index list
    syntax KItem ::= readConst(GlobalName, List) [function]
    syntax GlobalName ::= readConstAndExtractGlobalName(GlobalName, List) [function]
// evaluate
    syntax KItem ::= evalConst(ConstValueRef) [function]
endmodule

module CONSTANT-DYNAMIC
    imports CONSTANT-DYNAMIC-SYNTAX
    imports LIST2LIST
//  read
    rule [TgetTypeOfGlobalReg]:
        getTypeOfGlobalReg(globalReg(T:Type, _:KItem)) => T
    rule [TgetTypeOfGlobalV]:
        getTypeOfGlobalV(GV:GlobalName) => getTypeOfGlobalReg(getGlobalReg(GV))
    rule [TgetValOfGlobalReg]:
        getValOfGlobalReg(globalReg(_:Type, Val:KItem)) => Val
    rule [TgetValOfGlobalV]:
        getValOfGlobalV(GV:GlobalName) => getValOfGlobalReg(getGlobalReg(GV))

    rule [TreadConst]:
        readConst (V:GlobalName, IdxList:List)
    =>
        getElemMultiDim(getValOfGlobalV(V), IdxList)

    rule [TreadConstAndExtractGlobalName]:
        readConstAndExtractGlobalName(V:GlobalName, IdxList:List)
    =>
        extractGlobalName({readConst(V, IdxList)}:>ValueRef)

//  evaluate
    rule evalConst(getelementptr _:OptInBounds(_:Type, _Type GlobalC:GlobalName, Idxs:ReturnedVal)) => readConst(GlobalC, getValsOfReturnedVal(Idxs))
endmodule