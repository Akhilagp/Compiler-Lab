digit [0-9]
digits {digit}+
of (\.{digits})?
oe (E(\+|-)?{digits})?
%{
%}
%%
^({digits}+{of}{oe})* {printf("Unsigned number: %s\n",yytext);}
.|\n {}
%%
int main()
{
yylex();
return 0;
}
