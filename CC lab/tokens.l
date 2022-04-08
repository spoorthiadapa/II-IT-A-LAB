%%
"if" |
"else" |
"while" |
"for" |
"do" |
"switch" |
"break" |
"got" |
"case" |
"const" |
"double" |
"long" |
"float" |
"int" |
"shoer" |
"signed" |
"unsigned" |
"register" |
"typedef" |
"return" |
"enum" |
"sizeof" |
"struct" |
"union" |
"static" |
"void" |
"main" |
"continue" |
"default" |
"printf" |
"scanf" {
printf("%s is a keyword\n",yytext);}
[a-zA-Z][a-zA-Z0-9_]* {printf("%s is a identifier\n",yytext);}
[0-9]+ {printf("%s is a number\n",yytext);} 
[+/*%\-] {printf("%s is an arithmatic operator\n",yytext);}
[<>][=]? |
[!=][=] {printf("%s is an relational operator\n",yytext);}
[&][&]|[|][|]|[!] {printf("%s is a logical operator\n",yytext);}
[&][~][|][^][<<][>>] {printf("%s is a bitwise operator\n",yytext);}
[,] {printf("%s is a seperator\n",yytext);}
[;] {printf("%s is a terminator\n",yytext);}
[()] {printf("%s is braces\n",yytext);}
[{}] {printf("%s is a paranthesis\n",yytext);}
[[]] {printf("%s is a squarebrace\n",yytext);}
"%d" |
"%c" |
"%s" |
"%f" {printf("%s is a formatspacifier\n",yytext);}
[/][/][a-zA-Z]* {printf("%s is a line comment\n",yytext);}
[/][*][a-z0-9A-Z #()%&+-<>!~;".,]*[*][/] {printf("%s is a block comment\n",yytext);}
[@#$] {printf("%s is a special character\n",yytext);}
"\\n" {printf("%s is a new line character\n",yytext);}
"#include<stdio.h>" |
"#include<stdbool.h>" |
"#include<string.h>" |
"#include<math.h>" {printf("%s is a header file\n",yytext);}
%%
int yywrap(void){}
int main()
{
yylex();
return 0;
}



 

