%{
#include <stdio.h>
int c=0
%}
%%
[a-z] {c++;}
%%
yywrap() {}
int main()
{
yylex();
printf("\n%d",c);
return 0;
}
