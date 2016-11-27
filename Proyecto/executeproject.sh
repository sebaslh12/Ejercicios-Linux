#!/bin/bash
if [ -e "$1/.proyectoC" ] || [ -e "$1/.proyectoCplus" ]; then
	updateMake=$(./updateMakefile.sh "$1")
	echo "$1"/"make all"
	echo "$1"/"exec"
elif [ -e "$1/.proyectoPython" ]; then
	run=$(python "$1"/main.py)
elif [ -e "$1/.proyectoJava" ]; then
	compile=$(javac "$1/main.java")
	javarun=$(java "$1/main")
else
	info=$(zenity --info --text "Al parecer este proyecto no es compatible")
fi