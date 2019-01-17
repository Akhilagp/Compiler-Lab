%{
#include<bits/stdc++.h>
using namespace std;
stack<string> opand;
stack<char> op;
int prior(char);
string sent="";
string rop="";
string lop="";
char rem;
int i=0;
%}
%%
[a-zA-Z0-9] {opand.push(yytext);}
[(] {op.push(yytext[0]);}
[)] {
while(op.top()!='(')
{
sent="";
rem=op.top();
op.pop();
rop=opand.top();
opand.pop();
lop=opand.top();
opand.pop();
sent=rem+lop+rop;
opand.push(sent);
}
op.pop();
}
[\+\-\/\*] {
if(op.empty()){
op.push(yytext[0]);
}
else if(prior(yytext[0])>prior(op.top())){
op.push(yytext[0]);
}
else if(prior(yytext[0])<=prior(op.top())){
while(!op.empty() && (prior(yytext[0])<=prior(op.top()))){
sent="";
rem=op.top();
op.pop();
rop=opand.top();
opand.pop();
lop=opand.top();
opand.pop();
sent=rem+lop+rop;
opand.push(sent);
}
op.push(yytext[0]);
}
}
[\;] {
while(!op.empty()){
sent="";
rem=op.top();
op.pop();
rop=opand.top();
opand.pop();
lop=opand.top();
opand.pop();
sent=rem+lop+rop;
opand.push(sent);
}
cout<<"Finally "<<opand.top();
opand.pop();
}
. {}
%%
int main(){
yylex();
return 0;
}
int prior(char c){
if(c=='(')
	return 1;
else if(c=='+' || c=='-')
	return 2;
else if(c=='*' || c=='/')
	return 3;
}
