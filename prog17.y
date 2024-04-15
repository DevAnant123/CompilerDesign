%{
#include <stdio.h>
%}
%token NUM
%start S
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
S:E {printf("%d",$1);}
;
E:E'+'T {$$=$1+$3;}
|E'-'T {$$=$1-$3;}
|T {$$=$1;}
;
T:T'*'F {$$=$1*$3;}
|T'/'F {$$=$1/$3;}
|F {$$=$1;}
;
F:'('E')' {$$=$2;}
|NUM {$$=$1;}
;
%%
int main()
{
yyparse();
return 0;
}
int yyerror()
{
return 0;
}
