%{
%}
%%
(b(df)+)[\n ] {printf("Matched %s\n",yytext);} 
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
