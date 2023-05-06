requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "list-helper.k"
requires "list2list.k"
requires "gollvm-object.k"
module CONSTANT-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports LIST2LIST-SYNTAX
    imports LIST
    syntax Bool ::= isConst(GlobalName) [function]
// create
    //  construct nesting Structure, if ConstValueRef is nesting.
    syntax Content ::= newConst(ConstValueRef) [function]
    //  construct nesting list by ConstValueRef
    syntax List ::= newConstList(ReturnedVal) [function]
endmodule

module CONSTANT
    imports CONSTANT-SYNTAX
    imports OBJECT-SYNTAX

    rule isConst(GV:GlobalName) => isConstObj(searchObjAtGlobalV(GV))

// ------GlobalReg

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
    syntax Type ::= getTypeOfGlobalV(GlobalName) [function]
    syntax GlobalName ::= readConstAndExtractGlobalName(GlobalName, Ints) [function]
// evaluate
    syntax KItem ::= evalConst(ConstValueRef) [function]
endmodule

module CONSTANT-DYNAMIC
    imports OBJECT-SYNTAX
    imports CONSTANT-DYNAMIC-SYNTAX
    imports LIST2LIST
//  read
    rule [TgetTypeOfGlobalV]:
        getTypeOfGlobalV(GV:GlobalName) => {getObjType(searchObjAtGlobalV(GV))}:>Type

    rule [TreadConstAndExtractGlobalName]:
        readConstAndExtractGlobalName(V:GlobalName, IdxList:Ints)
    =>
        extractGlobalName({readObjAtGlobalVWithIdxList(V, IdxList)}:>ValueRef)

//  evaluate
    rule evalConst(getelementptr _:OptInBounds(_:Type, _Type GlobalC:GlobalName, Idxs:ReturnedVal)) => readObjAtGlobalVWithIdxList(GlobalC, getValIntsOfReturnedVal(Idxs))
endmodule