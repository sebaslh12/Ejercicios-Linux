#!/bin/bash
#$1 project path
if [ -e "$1/.proyectoC" ] || [ -e "$1/.proyectoCplus" ]; then
	sources=($(find "$1/source" -type f))

	echo "all: exec">"$1/Makefile"

	echo "exec:""$1/main.c" "${sources[@]}" >>"$1/Makefile"
	if [ -e "$1/.proyectoC" ]; then
		echo -e '\t' "gcc" "$1/main.c" "${sources[@]} -o exec" >>"$1/Makefile"
	else
		echo -e '\t' "g++" "$1/main.c" "${sources[@]} -o exec" >>"$1/Makefile"
	fi

	echo "clean:" >>"$1/Makefile"
		echo -e '\t' 'rm -f exec'>>"$1/Makefile"
fi
