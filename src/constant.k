requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "list-helper.k"
requires "list2list.k"
module CONSTANT-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST2LIST-SYNTAX
    imports LIST
// create
    //  construct nesting Structure, if ConstValueRef is nesting.
    syntax KItem ::= newConst(ConstValueRef) [function]
    //  construct nesting list by ConstValueRef
    syntax List ::= newConstList(ReturnedVal) [function]
endmodule

module CONSTANT
    imports CONSTANT-SYNTAX

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
    imports CONSTANT-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports LIST-HELPER-SYNTAX
    imports LIST2LIST-SYNTAX
    imports LIST
//  read
    //  read Constant with index list
    syntax KItem ::= readConst(GlobalName, List) [function]
// evaluate
    syntax KItem ::= evalConst(ConstValueRef) [function]
endmodule

module CONSTANT-DYNAMIC
    imports CONSTANT-DYNAMIC-SYNTAX
    imports LIST2LIST
//  read
    rule [TreadConst]:
        [[
            readConst (V:GlobalName, IdxList:List)
        =>
            getElemMultiDim(MAP[V], IdxList)
        ]]
        <globalRegisters>
            MAP
        </globalRegisters>
    requires V in_keys(MAP)
//  evaluate
    rule evalConst(getelementptr _:OptInBounds(_:Type, _Type GlobalC:GlobalName, Idxs:ReturnedVal)) => readConst(GlobalC, getValsOfReturnedVal(Idxs))
endmodule