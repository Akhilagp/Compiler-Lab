%{
#include<bits/stdc++.h>
#include<iostream>
using namespace std;
string sent="";
%}
%s D
%%
<INITIAL>[0-9] {
if(sent.find(yytext[0])!='\0'){
sent+=yytext;
}
else{
cout<<yytext<<" Black sheeep\n";
BEGIN D;
}
}
<D>[0-9] {BEGIN INITIAL; sent=""; cout<<"Repeated digits\n";}
<INITIAL>; {BEGIN INITIAL; cout<<"Found: "<<sent; sent="";}
. {}
%%
int main(){
yylex();
return 0;
}
