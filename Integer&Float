%{
#include <stdio.h>
%}
%%
[0-9]+   {printf("Integer");}
.+       {printf("Floating Point");}
%%
yywrap() {}
int main()
{
yylex();
return 0;
}
