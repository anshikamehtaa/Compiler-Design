%{
#include<stdio.h>
%}
%%
auto|break|int|float|char|switch|continue|double|goto|if|else|elseif|printf|scanf|main|void|const|default|do|for|while|sizeof|struct|signed|unsigned|return|do|case {printf("Keyword");}
[+\-*/] {printf("Opertor %c\n",yytext[0] );return yytext[0];}
^[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier");}
[{};,()]  {printf("Separtor");}
%%
int yywrap(){}
int main()
{
yylex();
return 0;
}
