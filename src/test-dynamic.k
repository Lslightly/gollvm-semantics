requires "gollvm-syntax.k"
requires "gollvm-dynamic.k"
requires "gollvm-configuration.k"
requires "gollvm-mem.k"
module TEST-DYNAMIC
    imports GOLLVM-SYNTAX
    imports GOLLVM-DYNAMIC
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-MEM-SYNTAX

    syntax Test ::= testmemmoveToHeapAddr(LocalName, LocalName)
                |   testisKResultAddress(LocalName)
                |   testmemmoveToHeapAddrPure(LocalName, LocalName)
                |   testisKResultallocObj()
                |   testAddressKResult(LocalName)
    syntax Address ::= testAddress(Address) [seqstrict]

    rule <k> testAddress(A) => A ...</k>

    rule <k> testmemmoveToHeapAddr(LHS:LocalName, RHS:LocalName)
    =>
        addrMapInsert(LHS, allocObj(createObjList(unknown, heap)))
        ~> addrMapInsert(RHS, allocObj(createObjList(unknown, stack)))
        ~> memmoveToHeapAddr(addressValOfWrapper(LHS),  addressValOfWrapper(RHS))
        ... </k>
    
    rule <k> testmemmoveToHeapAddrPure(LHS:LocalName, RHS:LocalName)
    =>
        addrMapInsert(LHS, allocObj(createObjList(unknown, heap)))
        ~> addrMapInsert(RHS, allocObj(createObjList(unknown, stack)))
        ~> memmoveToHeapAddr(baseOffset (0, .List), baseOffset (1, .List))
        ... </k>

    rule <k>
        testisKResultAddress(LHS:LocalName)
    =>
        addrMapInsert(LHS, allocObj(createObjList(unknown, heap)))
        ~> isKResult(addressValOfWrapper(LHS))
        ...</k>
    
    rule <k>
        testisKResultallocObj()
    =>
        isKResult(allocObj(createObjList(unknown, heap)))
        ...  </k>
    
    // rule <k>
    //     testAddressKResult(L:LocalName)
    // =>
    //     addrMapInsert(L, allocObj(createObjList(unknown, heap)))
    //     ~> testAddress(addressValOfWrapper(L))
    // </k>

endmodule
