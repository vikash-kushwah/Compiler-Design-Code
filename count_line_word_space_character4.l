%{
#include <stdio.h>

int lc = 1, wc = 0, sc = 0, cc = 0;  // Line, Word, Space, Character counts
%}

%%

"exit" {
    return 0;  // Stop lexer when 'exit' is encountered
}

[ \t]+        { sc++; cc += yyleng; }  // Count spaces and tabs
\n            { lc++; cc++; }          // Count newlines and update character count
[^\n \t]+     { wc++; cc += yyleng; }  // Count words and characters

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter your statement ('exit' after input):\n");
    yylex();  // Start the lexer

    printf("Line Count: %d\n", lc);
    printf("Word Count: %d\n", wc);
    printf("Space Count: %d\n", sc);
    printf("Character Count: %d\n", cc);

    return 0;
}

