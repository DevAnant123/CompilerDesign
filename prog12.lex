%{
#include <stdio.h>
%}
%%
"//".*"\n"  ;
"/*"(.*(\n)*)*"*/" ;
%%
int yywrap() {}
int main(int argc,char* arg[])
{
extern FILE *yyin;
extern FILE *yyout;
yyin=fopen(arg[1],"r");
yyout=fopen(arg[2],"w");
yylex();
return 0;
}
