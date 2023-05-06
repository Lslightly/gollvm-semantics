/*
    helper library for dealing with syntax
*/
requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "constant.k"
module GOLLVM-SYNTAX-HELPER-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST

// extract GlobalName from ValueRef
    syntax GlobalName ::= extractGlobalName(ValueRef) [function]

// judge whether is the specified format of code
    syntax Bool ::= isGepConst(ValueRef) [function]
                |   isBitcastConst(ValueRef) [function]

    syntax List ::= getConstIdxList(ConstantIndexList) [function]

endmodule

module GOLLVM-SYNTAX-HELPER
    imports CONSTANT-SYNTAX
    imports GOLLVM-SYNTAX-HELPER-SYNTAX

    rule [TextractGlobalNameGep]:
        extractGlobalName(getelementptr _:OptInBounds(_:Type, _:Type GV:GlobalName, _:ReturnedVal))
    =>
        GV
    rule [TextractGlobalNameBitcast]:
        extractGlobalName(bitcast (_:Type GV:GlobalName to _:Type))
    =>
        GV
    rule [TextractGlobalNameGV]:
        extractGlobalName(GV:GlobalName)
    =>
        GV
    
    rule isGepConst (_:ValueRef) => false [owise]
    rule isGepConst (getelementptr _:OptInBounds(_:Type, _:Type GV:GlobalName, _:ReturnedVal)) => true requires isConst(GV)
    rule isBitcastConst(_:ValueRef) => false [owise]
    rule isBitcastConst(bitcast (_:Type GV:GlobalName to _:Type)) => true requires isConst(GV)

    rule getConstIdxList(, I:Int) => ListItem(I) .List
    rule getConstIdxList(, I:Int L:ConstantIndexList) => ListItem(I) getConstIdxList(L)
endmodule