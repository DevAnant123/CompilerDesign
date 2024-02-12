%{
#include <stdio.h>
int b=0,c=0,d=0;
%}
%%

[,;:]+   {b++;}
[+-/*]   {c++;} 
[keyword]+ {d++;}
%%
yywrap() {}
int main()
{
yylex();
printf("No. of Seperators=%d\n",b);
printf("No. of Operators=%d\n",c);
printf("No. of Keywords=%d\n",d);
return 0;
}
