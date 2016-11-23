#!/bin/bash
# $1 project path
# $2 project language
# $3 project name
case "$2" in
	"C" )
		projectRoot=$(mkdir "$1/$3" "$1/$3/headers" "$1/$3/source")
		echo "int main(int argc, char *argv[]){ printf('Hello World \n');}">"$1/$3/main.c"
		makefile=$(touch "$3/Makefile")
		;;
	"C++" )
		projectRoot=$(mkdir "$1/$3" "$1/$3/headers" "$1/$3/source")
		echo "int main(int argc, char *argv[]){ printf('Hello World \n');}">"$1/$3/main.cc"
		makefile=$(touch "$2/Makefile")
		;;
	"Python" )
		;;
	"Java" )
		;;
esac