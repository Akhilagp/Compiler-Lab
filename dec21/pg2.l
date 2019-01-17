%{
%}
%%
[a-zA-Z]+[\n ] {yyless(2); printf("Found a string %s\n",yytext);} 
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
