%{
#include<stdio.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap(void){return 1;}
int main()
{
yyin = fopen("Cprogram1.c","r");
yyout = fopen("out.c","w");
yylex();
return 0;
}
