%{
#include <stdio.h>
%}

%%

[6-9][0-9]{9} {
    printf("Valid mobile number: %s\n", yytext);
}

https?:\/\/[a-zA-Z0-9\-]+\.[a-zA-Z]{2,6} {
    printf("Valid URL: %s\n", yytext);
}

[0-2][0-9]:[0-5][0-9]:[0-5][0-9] {
    printf("Valid Time: %s\n", yytext);
}

[0-3][0-9]-[0-1][0-9]-[0-9]{4} {
    printf("Valid Date: %s\n", yytext);
}

[a-zA-Z0-9_.]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,4} {
    printf("Valid Email: %s\n", yytext);
}

.* {
    printf("Wrong input: %s\n", yytext);
}

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter your input: ");
    yylex();
    return 0;
}

