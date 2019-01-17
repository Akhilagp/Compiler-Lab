%{
#include<bits/stdc++.h>
using namespace std;
stack<char> str;
int prior(char c);
%}
%%
[a-zA-Z0-9] {cout<<yytext;}
[\+\-\/\*] {
	if(str.empty()){
		str.push(yytext[0]);
	}
	else if(prior(yytext[0])>prior(str.top()))
	{
		str.push(yytext[0]);
	}
	else if(prior(yytext[0])<=prior(str.top())){
		while(!str.empty() && (prior(yytext[0])<=prior(str.top()))){
			cout<<str.top();
			str.pop();
		}
		str.push(yytext[0]);
	}
}
[(] {str.push(yytext[0]);}
[)] {
	while(str.top()!='(')
	{
		cout<<str.top();
		str.pop();
	}
	str.pop();
}
[\;] {
	while(!str.empty()){
		cout<<str.top();
		str.pop();
	}
}
. {}
%%
int prior(char c){
if(c=='(')
	return 1;
else if(c=='+' || c=='-')
	return 2;
else
	return 3;
}
int main(){
yylex();
return 0;
}
