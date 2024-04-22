%{
#include <stdio.h>
int flag = 0;
%}

%token id1 id2
%start S

%%
S : L ' ' R ';'		{$$ = $1+$2+$3+$4; flag = 1;}
;
L : X			{$$ = $1;}
;
R : I','R		{$$ = $1+$2+$3;}
  | I			{$$ = $1;}
;
I : id1			{$$ = $1;}
;
X : id2			{$$ = $1;}
;
%%
int main()
{
yyparse();
if(flag == 1)	printf("\nValid\n");
else		printf("\nInvalid\n");
return 0;
}
int yyerror()
{
return 0;
}
