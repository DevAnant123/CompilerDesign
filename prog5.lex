%{
#include <stdio.h>
int l = 0;
int s = 0;
int m = 0;
%}

%%
\n    { lineCount++; }
[ \t]  { spaceCount++; }
.      { metaCharCount++; }
%%
yywrap() {}
int main() {
    yylex();
    
    printf("Lines: %d\n", l);
    printf("Spaces: %d\n", s);
    printf("Meta Characters: %d\n", m);

    return 0;
}
