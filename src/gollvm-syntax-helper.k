/*
    helper library for dealing with syntax
*/
requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
module GOLLVM-SYNTAX-HELPER-SYNTAX
    imports GOLLVM-SYNTAX

// extract GlobalName from ValueRef
    syntax GlobalName ::= extractGlobalName(ValueRef) [function]

// judge whether is the specified format of code
    syntax Bool ::= isGepTD(ValueRef) [function]
endmodule

module GOLLVM-SYNTAX-HELPER
    imports GOLLVM-SYNTAX-HELPER-SYNTAX

    rule [TextractGlobalNameGep]:
        extractGlobalName(getelementptr _:OptInBounds(_:Type, _:Type GV:GlobalName, _:ReturnedVal))
    =>
        GV
    rule [TextractGlobalNameBitcast]:
        extractGlobalName(bitcast (_:Type GV:GlobalName to _:Type))
    =>
        GV
    
    rule isGepTD (_:ValueRef) => false [owise]
    rule isGepTD (getelementptr _:OptInBounds(_:Type, _:ReturnedVal)) => true
endmodule