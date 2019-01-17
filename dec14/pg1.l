%{
int charcount=0,linecount=0;
%}
%%
[a-z\-A-Z0-9]+ {charcount+=yyleng; printf("%s\n",yytext);}
. charcount++;
\n {linecount++; charcount++;}
%%
int main()
{
yylex();
printf("There were %d characters in %d lines\n %d",charcount,linecount);
return 0;
}
