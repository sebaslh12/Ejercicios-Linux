#!/bin/bash
# $1 project path
# $2 project language
# $3 project name
case "$2" in
	"C" )
		projectRoot=$(mkdir "$1/$3" "$1/$3/headers" "$1/$3/source")
		echo 'int main(int argc, char *argv[]){ printf("Hello World \n");}'>"$1/$3/main.c"
		makefile=$(touch "$1/$3/Makefile")
		$(touch "$1/$3/.proyectoC")
		;;
	"C++" )
		projectRoot=$(mkdir "$1/$3" "$1/$3/headers" "$1/$3/source")
		echo 'int main(int argc, char *argv[]){ printf("Hello World \n");}'>"$1/$3/main.cc"
		makefile=$(touch "$1/$3/Makefile")
		$(touch "$1/$3/.proyectoCPlus")
		;;
	"Python" )
		projectRoot=$(mkdir "$1/$3")
		echo 'print "Hello World"' >"$1/$3/main.py"
		$(touch "$1/$3/.proyectoPython")
		;;
	"Java" )
		projectRoot=$(mkdir "$1/$3")
		echo 'public class main { public static void main(String[] args) { System.out.println("Hello, World"); }}'>"$1/$3/main.java"
		$(touch "$1/$3/.proyectoJava")
		;;
esac