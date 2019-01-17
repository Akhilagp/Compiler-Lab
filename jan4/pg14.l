%{
%}
%%
^b*(ab?)*$  {printf("String- matched:%s\n",yytext);}
.* {printf("not matched\n");}
%%
int main(void)
{
yylex();
return 0;
}
