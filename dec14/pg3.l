letter [a-zA-Z]
alphanumeric [a-zA-Z_0-9]
%{
%}
%%
^{letter}{alphanumeric}* {printf("%s is Valid\n",yytext);}
^[^a-zA-Z]{alphanumeric}* {printf("%s is invalid\n",yytext);}
%%
int main()
{
yylex();
return 0;
}
