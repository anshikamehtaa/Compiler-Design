%{
#include<stdio.h>
%}
%%
[\t" "]+ fprint{yyout," "};
.|\n fprintf(yyout,"%s",yytext);
%%
int yywrap(void){return 1;}
int main()
{
yyin=fopen("inputfile.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
