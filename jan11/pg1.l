%option noyywrap
parano [{]
paranc [}]
curlyo [(]
curlyc [)]
iden [A-Za-z][A-Za-z_0-9]*

%x CASING
%{

#include<bits/stdc++.h>
using namespace std;
string sent="",sent1="";
int flag1=0,flag2=0;
int id=0,i=0,id1=0;
%}
%%
"switch("{iden}"){" {
	sent=yytext;
	id=sent.find('(');
	id1=sent.find(')');
	sent=sent.substr(id+1,id1-(id+1));
}
(("case ")([a-zA-Z0-9])) {
	if(flag1==0){
		if(int(yytext[yyleng-1])>=49 && int(yytext[yyleng-1])<=59){
			cout<<"if("<<sent<<"=="<<yytext[yyleng-1]<<"){";
		}
		else{
		cout<<"if("<<sent<<"=='"<<yytext[yyleng-1]<<"'){";
		}
		flag1=1;
	}
	else if(flag1==1){
		if(int(yytext[yyleng-1])>=49 && int(yytext[yyleng-1])<=59){
			cout<<"else if("<<sent<<"=="<<yytext[yyleng-1]<<"){";}
		else{
			cout<<"else if("<<sent<<"=='"<<yytext[yyleng-1]<<"'){";}
	}
}
(:) {}
"break;" {cout<<"}";}
"default" {cout<<"else{";}
. {cout<<yytext;}
%%
int main(){
yylex();
return 0;
}
