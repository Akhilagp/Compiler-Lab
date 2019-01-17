st_qt "/*"
end_qt "*/"
letter [a-zA-Z0-9_]
%{
%}
%%
{st_qt}{letter}*((\"){end_qt}(\"))*{letter}*{end_qt} {printf("The comments are matched:%s\n",yytext);}
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
