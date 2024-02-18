%{
#include <stdio.h>
int wordCount = 0;
%}

%%
[a-zA-Z]+    { wordCount++; }
.            ;
%%
yywrap() {}
int main() {
    yylex();
    
    printf("Words: %d\n", wordCount);

    return 0;
}
