%{
#include <stdio.h>
%}
%%
[//]+[A-Za-z0-9]   {printf("%s IS A SINGLE LINE COMMENT",yytext);}
[/*]+[A-Za-z0-9]+[*/]   {printf("%s IS A MULTI LINE COMMENT",yytext);}
%%
yywrap() {}
int main(){
yylex();
return 0;
}

