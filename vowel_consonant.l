%{
#include<stdio.h>
int vc=0, cc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
\n {return 0;}
%%
int yywrap(){ return 1;};
int main(){
printf("Enter the string:");
yylex();
printf("No of vowel:%d\n",vc);
printf("No of consonant:%d\n",cc);
return 0;
}
