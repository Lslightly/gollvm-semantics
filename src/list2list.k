requires "gollvm-syntax.k"
module LIST2LIST-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    syntax List ::= getValsOfReturnedVal(ReturnedVal) [function]

endmodule

module LIST2LIST
    imports LIST2LIST-SYNTAX
    rule getValsOfReturnedVal(_:Type V:ValueRef, Remains:ReturnedVal) => ListItem(V) getValsOfReturnedVal(Remains)
    rule getValsOfReturnedVal(.ReturnedVal) => .List
endmodule