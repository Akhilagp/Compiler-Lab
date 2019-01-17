%{
%}
%%
[0-9]+[\n ] {printf("Found an integer %s of length %d",yytext,yyleng);yymore(); } 
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
