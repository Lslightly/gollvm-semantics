requires "gollvm-syntax.k"

module GOLLVM-ABSTRACTSYNTAX-SYNTAX
    imports BASIC-K
    imports INT

    syntax Element ::= val(KItem)
    syntax ElementResult ::= valValue(K)
    syntax Element ::=  ElementResult
    syntax KResult ::= ElementResult

    syntax ElemList ::= List{Element,","} [strict]
    syntax Int ::= lengthOfElemList(ElemList) [function]

    rule lengthOfElemList (.ElemList) => 0
    rule lengthOfElemList (E1:Element, Es:ElemList) => 1 +Int lengthOfElemList (Es)

endmodule

module GOLLVM-ABSTRACTSYNTAX
    imports GOLLVM-ABSTRACTSYNTAX-SYNTAX
    imports GOLLVM-SYNTAX
    imports INT
    imports STRING
    imports BASIC-K

    syntax IntTypeCore ::= integerType(K)
    syntax IntType ::= IntTypeCore

    syntax Loc ::= loc(K, K, K, K, K, K)
             //base, type, range, rangetype, blockaddr?, inrange?
    syntax Loc ::= aLoc(K, K, K) //base, type, rangeType
    syntax Loc ::= intLoc(K, K, K,K, K) //base(int), type, range, rangetype, blockaddr?
    syntax Loc ::= floatLoc(K, K, K,K, K) //base(float), type, range, rangetype, blockaddr?


    syntax KResult ::= Int | String //| Floating
                      | Loc
                      //| listK(List)    [latex({#1})]//bytes
                      | region(List, Int)  //nextlevel, number of nextlevel
                      | VoidType
                      | vectorValue(ElemList)
                      | arrayValue(ElemList)
                      | addrSpaceResult(Int)
                      | blockAddVal(K, K)

    syntax SimpleTypeResult ::= IntTypeCore
                              | pointerTypeValue(K, K) //type, address space
                              | FPType
                              | X86Type
                              | LabelType
                              | OpaqueType
    syntax AggregatedTypeResult ::= structTypeValue(K)
                                  | packedStructTypeValue(K)
                                  | arrayTypeValue(K, K)  // inner type, length
                                  | functionTypeValue(K, K)  // return type, argument types
                                  | vectorTypeValue(K, K)//inner type, length
    syntax TypeResult ::= AggregatedTypeResult | SimpleTypeResult
    syntax NonVoidType ::= TypeResult

    syntax Type ::= TypeResult
    syntax Type ::= "badType"
    syntax KResult ::= "badValue"
    syntax KResult ::= "skipValue"
    syntax KItem ::= "none"
    syntax ArgListResult ::= "vaListType"
    syntax ArgList ::= ArgListResult
    syntax KResult ::= ArgListResult
    rule #vaArgs(.KList) => vaListType

    syntax KItem ::= vaListCal(KItem, KItem, KItem) [strict]//type, loc, value
    syntax KResult ::= TypeResult
    syntax KResult ::= value(K, K) //type, value
    syntax KResult ::= flagType(K, K) //flags, type

    
    syntax KItem ::= "emptyHOLE"
    syntax KItem ::= instNumInfo(Int, K, K)
                      //Inst num, stmt, inst type
    

    syntax KItem ::= "terminators" | "loadInst" | "storeInst"
                    | "fenceInst" | "readWriteInst"
                    | "callInst" | "normalInst" | "returnInst"
                    | "allocaInst" | "phiInst" | "vaInst"
    syntax KItem ::= usedLoc(K) //location of a variable.

    syntax KItem ::= seqPoint(Int, Int, K)
                        //block_id, static id, inst
    syntax KItem ::= basicBlockNum(Int, K)
    syntax KItem ::= blockHold(K)
    syntax KItem ::= guessBlockPath(List)

    rule val(R) => valValue(R) [structural]



endmodule
