letter [a-zA-Z0-9_]
e_v_u [^aeiouA-Z] 
%{
	/* e_v_u means exclude_vowel_and_uppwercase */	
%}
%%
{e_v_u}*[a]{e_v_u}*[e]{e_v_u}*[i]{e_v_u}*[o]{e_v_u}*[u]{e_v_u}* {printf("Five vowels in order-matched:%s\n",yytext);}
.|\n {}
%%
int main(void)
{
yylex();
return 0;
}
