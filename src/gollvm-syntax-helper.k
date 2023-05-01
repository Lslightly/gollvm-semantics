/*
    helper library for dealing with syntax
*/
requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
module GOLLVM-SYNTAX-HELPER-SYNTAX
    imports GOLLVM-SYNTAX

// extract GlobalName from ValueRef
    syntax GlobalName ::= extractGlobalName(ValueRef) [function]
endmodule

module GOLLVM-SYNTAX-HELPER
    imports GOLLVM-SYNTAX-HELPER-SYNTAX

    rule [TextractGlobalName]:
        extractGlobalName(getelementptr _:OptInBounds(_:Type, _:Type GV:GlobalName, _:ReturnedVal))
    =>
        GV
endmodule