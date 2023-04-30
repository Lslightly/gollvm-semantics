module LIST-HELPER-SYNTAX
    imports INT
    imports LIST

    syntax Ints ::= List{Int, ","}
    syntax KResult ::= Ints

// create:
    syntax List ::= createIdxList(Ints) [function]
// properties:
    syntax Bool ::= isListSort(KItem) [function]
                //  is in-range index in list
                |   isValidIdx(List, Int) [function]
                |   existInList(List, KItem) [function]
    syntax Int ::= cnt1stItemDim(List) [function]
                //  return index if found else size(List)
                |   find1stIdx(List, KItem) [function]
// read:
                /*
                    getElemMultiDim(Src, IdxList)
                    if empty(IdxList) {
                        return Src
                    } else {
                        // IdxList equals to ListItem(I) Remains
                        return getElemMultiDim(Src[I], Remains)
                    }
                */
    syntax KItem ::= getElemMultiDim(KItem, List) [function]
// update:
    //  updateList(src, idx list, newval)
    syntax List ::= updateListMultiDim(List, List, KItem) [function]
                |   appendZeros(List, Int) [function]
                /*  prefix(src, prefixIdx)
                    get src[:prefixIdx]
                    if prefixIdx >= len(src), then append (prefixIdx - size(src)) zeros at the end
                */
                |   prefixOfList(List, Int) [function]
                //  remove ending zeros
                |   trimEndZeros(List) [function]
    
endmodule

module LIST-HELPER
    imports BOOL
    imports LIST-HELPER-SYNTAX
    imports K-EQUAL
    imports BASIC-K

// create:------------------------------------------
    rule createIdxList (I:Int, Idxs:Ints) => ListItem(I) createIdxList(Idxs)
    rule createIdxList(.Ints) => .List

// read:---------------------------------------------
    rule [TgetElemMultiDimEmptyIdx]:
        getElemMultiDim(Src:KItem, .List) => Src
    rule [TgetElemMultiDimRecur]:
        getElemMultiDim(Src:List, ListItem(I:Int) Remains:List) => getElemMultiDim(Src[I], Remains)


// properties:----------------------------------------
    rule isListSort(_:List) => true
    rule isListSort(_) => false [owise]
    rule isValidIdx(L:List, I:Int) => I >=Int 0 andBool I <Int size(L)

    rule cnt1stItemDim (.List) => 0
    rule cnt1stItemDim(ListItem(I) _:List) => 1 +Int cnt1stItemDim ({I}:>List) requires isListSort(I)
    rule cnt1stItemDim (ListItem(_) _:List) => 1 [owise]

    rule find1stIdx(.List, _) => 0 [priority(49)]
    rule find1stIdx(ListItem(I) _:List, Val:KItem) => 0 requires I ==K Val
    rule find1stIdx(ListItem(_) Remains:List, Val:KItem) => 1 +Int find1stIdx(Remains, Val) [owise]
    rule existInList(L:List, Val:KItem) => find1stIdx(L, Val) =/=K size(L)

//  update:------------------------------------------
    rule [TupdateListEmptyIdx]:updateListMultiDim (_, .List, NewVal:KItem) => ListItem(NewVal) .List [priority(50)]
    rule [TupdateListOneIdx]:updateListMultiDim (Src:List, ListItem(I:Int) .List, NewVal) => Src [ I <- NewVal] [priority(51)]
    rule [TupdateListMultiIdx]: updateListMultiDim (Src:List, ListItem(I:Int) RemainIdxs:List, NewVal:KItem) => Src [ I <- updateListMultiDim ({Src[I]}:>List, RemainIdxs, NewVal)] [priority(52)]

    rule appendZeros (Src:List, Num:Int) => Src makeList(Num, 0)
    rule [TprefixOfListInRange]: prefixOfList(Src:List, EndIdx:Int) => range(Src, 0, size(Src) -Int EndIdx) requires size(Src) >=Int EndIdx
    rule [TprefixOfListOutOfRange]: prefixOfList(Src:List, EndIdx:Int) => appendZeros(Src, EndIdx -Int size(Src)) [owise]

    rule [TtrimEndZerosFound]: trimEndZeros(L:List) => prefixOfList(L, find1stIdx(L, 0)) requires existInList(L, 0)
    //  not exist zero
    rule [TtrimEndZerosNotFound]: trimEndZeros(L:List) => L [owise]

endmodule