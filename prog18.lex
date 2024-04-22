%{
#include <stdio.h>
#include "y.tab.h"
extern char* yystype;
%}
%%

("int" | "float" | "char" | "double")  { yyval = yytext; return id2;}
[a-zA-Z_$][a-zA-Z0-9_$]*  	       { yyval = yytext; return id1;}
[\t\n]				       {return 0;}
.				       {return yytext[0];}		
%%
int yywrap()
{
return 1;
}
