%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void check_token(char *token) {
    printf("%s is a word\n", token);
}
%}

%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" {
 printf("%s is a keyword\n", yytext);
 }

[0-9]+ {
    printf("%s is a number\n", yytext);
 }

[a-zA-Z_][a-zA-Z0-9_]* {
    check_token(yytext); // Call the check_token function for identifiers
}


[ \t\n]+ {
    /* Ignore whitespace */
 }

. {
    /* Ignore any other character */
}
%%
int yywrap() {
    return 1; // End of input
}

int main() {
    printf("Enter the input string: ");
    yylex(); // Start the lexical analysis
    return 0;
}

