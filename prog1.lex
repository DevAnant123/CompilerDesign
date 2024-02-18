%{
#include <stdio.h>
int c=0
%}
%%
ab {c++;}
%%
yywrap() {}
int main()
{
yylex();
printf("\n%d",c);
return 0;
}
