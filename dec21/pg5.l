%{
%}
%%
([\+-][0-9]+)[\n ] {printf("Matched %s\n",yytext);} 
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
