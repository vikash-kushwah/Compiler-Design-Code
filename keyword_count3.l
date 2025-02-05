%{
#include <stdio.h>
#include <string.h>

int keyword_count = 0;

char *keywords[] = { "auto", "break", "case", "char", "const", "continue","default", "do", "double", "else", "enum", "extern", "float", "for", "goto",
"if", "int", "long", "register", "return", "short", "signed", "sizeof", "static","struct", "switch", "typedef", "union", "unsigned", "void", "volatile", "while" };

int is_keyword(char *token) {
    for (int i = 0; i < 32; i++) {
        if (strcmp(token, keywords[i]) == 0) {
            return 1;
        }
    }
    return 0;
}
%}

%%
exit { 
    //printf("Exiting...\n"); 
    return 0;  // Stop the lexer when "exit" is entered
}

[a-zA-Z_][a-zA-Z0-9_]*    { 
    if (is_keyword(yytext)) 
        keyword_count++; 
}


[0-9]+                    ; /* Ignore numbers & other characters */
[\t\n ]+                  ; /* Ignore whitespace */

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the input string (enter 'exit' to stop):\n"); // Fixed the missing closing quote
    yylex();
    printf("Total number of keywords: %d\n", keyword_count);
    return 0;
}

