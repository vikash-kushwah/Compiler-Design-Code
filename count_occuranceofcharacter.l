%{
#include <stdio.h>
int count[256] = {0};
%}

%%

[a-zA-Z0-9] { count[yytext[0]]++; }
\n {return 0;}
. ;

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Character Counts(enter to exit):\n");
    yylex();
    for (int i = 32; i < 127; i++) {
        if (count[i] > 0) {
            printf("%c: %d\n", i, count[i]);
        }
    }

    return 0;
}

