%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Valid Identifier: %s\n", yytext); }
.                        { printf("Invalid: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
