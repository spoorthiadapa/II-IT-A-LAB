%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}

%%
int yywrap()
{
return 1;
}
int main()
{
printf("enter the string.. at end press^d\n");
yylex();
printf("No of vowels=%d\n No of consonants=%d\n",v,c);
return 0;
}

