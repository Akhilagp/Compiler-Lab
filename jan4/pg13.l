n_lowe [^a-z\n]
%{
%}
%%
{n_lowe}+ {printf("Strings with no lowercase letters- matched:%s\n",yytext);}
. {}
%%
int main(void)
{
yylex();
return 0;
}
