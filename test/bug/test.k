module TEST
    imports LIST
    imports INT
    syntax List ::= prefixOfList(List, Int) [function]
    rule prefixOfList(Src:List, EndIdx:Int) => range(Src, 0, size(Src) -Int EndIdx) requires size(Src) >Int EndIdx
endmodule