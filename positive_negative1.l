%{
#include<stdio.h>
#include<string.h>
int positive_no = 0, negative_no = 0;
%}
%%
[0-9]+ { 
    positive_no++; 
    printf("Positive_no = %s\n", yytext); 
}
[-][0-9]+ { 
    negative_no++; 
    printf("Negative_no = %s\n", yytext); 
}
exit { 
    printf("Exiting...\n"); 
    return 0;  // Stop the lexer when "exit" is entered
}
\n { /* Ignore newline characters */ }
.* { 
    printf("Wrong input\n"); 
}
%%
int yywrap() {
    return 1;  // Signals the end of input
}
int main() {
    printf("Enter input (type 'exit' to stop):\n");
    yylex();
    printf("Total Positive numbers: %d\n", positive_no);
    printf("Total Negative numbers: %d\n", negative_no);
    return 0;
}

