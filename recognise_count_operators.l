%{
#include <stdio.h>

int operator_count = 0;
%}

%%

"+" { operator_count++; }
"-" { operator_count++; }
"*" { operator_count++; }
"/" { operator_count++; }
"%" { operator_count++; }
\n { return 0; }
. ;

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter your input (end with Enter):\n");
    yylex();
    printf("Number of operators: %d\n", operator_count);
    return 0;
}

