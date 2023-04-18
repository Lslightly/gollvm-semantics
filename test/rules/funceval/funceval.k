/*  unable to parse
    error:
[Error] Compiler: Rewrites are not allowed in the context of a function rule.
        Source(/home/lqw/semantic/gollvm-semantic/test/rules/funceval/funceval.k)
        Location(13,18,13,31)
        13 |            <result> _ => A +Int B</result>
           .                     ^~~~~~~~~~~~~
[Error] Compiler: Had 1 structural errors.
[Warning] Compiler: Could not find main syntax module with name FUNCEVAL-SYNTAX
in definition.  Use --syntax-module to specify one. Using FUNCEVAL as default.
*/

module FUNCEVAL
    imports INT
    imports BASIC-K
    syntax KItem ::= eval(Exp)
    configuration <k>$PGM</k>
                <result> .K </result>
    syntax Exp ::=  Int
                |   Exp "+" Exp
    syntax K ::= add(Exp, Exp) [function]

    rule <k> eval(A:Exp + B:Exp) => add(A, B) ...</k>
    rule [[ add (A:Int, B:Int) => . ]]
        <result> _ => A +Int B</result>
endmodule