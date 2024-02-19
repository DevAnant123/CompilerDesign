%{
#include <stdio.h>
#include <string.h>
%}
%%

"/*"+[a-zA-Z0-9\n\t" "]*+"*/" {printf("%s IS A MULTI LINE COMMENT", yytext);}
[/][/] {;}
[/][/].+$ {printf("%s IS A SINGLE LINE COMMENT", yytext);}
. ;

%%

yywrap() {}

int main(int argc, char* arg[]) {
    extern FILE* yyin;
    yyin = fopen("t.txt", "r");
    yylex();
    return 0;
}
