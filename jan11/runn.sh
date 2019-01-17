lex -o "$1".yy.cc "$1".l
g++ -o  "$1" "$1".yy.cc -ll

