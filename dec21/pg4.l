%{
%}
%%
(a+[be-z]*(cd)?[abe-z]*)[\n ] {printf("Matched %s\n",yytext);} 
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
