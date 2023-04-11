module TYPEASSERTION
    imports BOOL-SYNTAX

    syntax Foo ::= foo()
    syntax Bool ::= isNonAddrSort(Foo) [function]
    syntax NonAddr ::= nonAddr(Foo)
    rule isNonAddrSort (foo()) => true
endmodule