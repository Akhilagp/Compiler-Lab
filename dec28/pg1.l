alpha [a-zA-Z]
digit [0-9]
alnum [a-zA-Z0-9_]
key printf|define|int|float|void|main
oparan [(]
cparan [)]
assi [=]
spec %d|%f
oper [\+\-\/\*]
qt [\"]
escp \\n|\\t
%{
#include<iostream>
using namespace std;
%}
%%
{key} {yytext[0]=yytext[0]-32;cout<<'<'<<yytext<<'>'<<" Keyword"<<endl;}
{assi} {cout<<'<'<<yytext<<'>'<<" Assignment operator"<<endl;}
{oper} {cout<<'<'<<yytext<<'>'<<" Arithmetic Operator"<<endl;}
{spec} {cout<<'<'<<yytext<<'>'<<" Format Specifier"<<endl;}
{alpha}{alnum}*{oparan}{cparan} {cout<<'<'<<yytext<<'>'<<" Function"<<endl;}
{cparan} {cout<<'<'<<yytext<<'>'<<" Closing Paranthesis"<<endl;}
{alpha}{alnum}* {cout<<'<'<<yytext<<'>'<<" Identifier"<<endl;}
{digit}* {cout<<'<'<<yytext<<'>'<<" Digits"<<endl;}
[ \t\n] {cout<<"<>"<<" White Space"<<endl;}
{qt} {cout<<'<'<<yytext<<'>'<<" Quote"<<endl;}
{escp} {cout<<'<'<<yytext<<'>'<<" Escape sequence"<<endl;}
. {}
%%
int main()
{
yylex();
return 0;
}
