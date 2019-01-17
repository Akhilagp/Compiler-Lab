%{ 
#include<iostream>
using namespace std;
%} 

%s A B C

%% 
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<INITIAL>\n BEGIN INITIAL; cout<<"Not Accepted\n";
<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>\n BEGIN INITIAL; cout<<"Not Acepted\n";
<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>\n BEGIN INITIAL; cout<<"Accepted\n";
<C>a BEGIN B;
<C>b BEGIN A;
<C>\n BEGIN INITIAL; cout<<"Not Accepted\n";
%% 

int main() 
{ 
yylex(); 
return 0;
} 

