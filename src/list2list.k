requires "gollvm-syntax.k"
requires "list-helper.k"
module LIST2LIST-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    syntax List ::= getValsOfReturnedVal(ReturnedVal) [function]
    syntax Ints ::= getValIntsOfReturnedVal(ReturnedVal) [function]

endmodule

module LIST2LIST
    imports LIST-HELPER-SYNTAX
    imports LIST2LIST-SYNTAX
    rule getValsOfReturnedVal(_:Type V:ValueRef, Remains:ReturnedVal) => ListItem(V) getValsOfReturnedVal(Remains)
    rule getValsOfReturnedVal(.ReturnedVal) => .List
    rule getValIntsOfReturnedVal(_:Type V:Int, Remains:ReturnedVal) => V, getValIntsOfReturnedVal(Remains)
    rule getValIntsOfReturnedVal(.ReturnedVal) => .Ints
endmodule