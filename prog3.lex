%{
#include <stdio.h>
int c=0,d=0;
%}
%%
[a] {c++;}
[b] {d++;}
.   ;
%%
yywrap() {}
int main()
{
yylex();
printf("\n%d%d",c,d);
return 0;
}
