#!/bin/bash
echo "$1"
lex -o "$1".yy.c "$1".l
cc -o "$1" "$1".yy.c -ll

