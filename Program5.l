%{
#include<stdio.h>
#include<string.h>
int ch=0,words=0,white=0;
%}

%%
\t {white++;}
[\n\t] {words++;}
[^\n\t] {ch++;}
%%
int yywrap(void){}
int main()
{  
yyin=fopen("inputfile.txt","r");
yylex(); 
printf("%d %d %d",ch,words,white);
return 0;
}
