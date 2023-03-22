%{
#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9]* printf("Valid Identifier..");
^[^a-zA-Z_] printf("Invalid Identifier..");
%%
int yywrap(){}
int main()
{
printf("Enter the Input string:: ");
yylex();
return 0;
}
