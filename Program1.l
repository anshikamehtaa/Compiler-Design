%{
#include<stdio.h>
#include<stdlib.h>
int c=0,s=0,tc=0,rc=0;
%}
%%
\n c++;
" " s++;
\t tc++;
[^\t" "\n] rc++;
%%
int yywrap(void){return 1;}
int main()
{
yyin=fopen("inputfile.txt","r");
printf("Enter the Input string:: ");
yylex();
printf("total line count :: %d\n",c);
printf("total space :: %d\n",s);
printf("total tab count :: %d\n",tc);
printf("total Rcount :: %d\n",rc);
return 0;
}
