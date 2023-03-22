%{
#include<stdio.h>
%}
%%
[0-9]* printf("Valid Integer");
[0-9]*.[0-9]*  printf("Valid Floating Number");
%%
int yywrap(void){return 1;}
int main()
{
printf("Enter the number : ");
yylex();
return 0;
}
