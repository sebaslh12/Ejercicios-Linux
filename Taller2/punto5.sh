#!/bin/bash 
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ];
	then
	if [ -d "$1" ]
		then
		case "$2" in
			"opc1")
				if [ -n "$4" ]; then
					for file in "$1"/*."$3"; do
					    mv "$file" ""$1"/`basename "$file" ."$3"`."$4""
					done
				else
					echo "Esta opcion espera 4 parametros"
				fi
				;;
			"opc2")
				if [ -n "$4" ]; then
					sed -i -- "s/$3/$4/g" "$1"/*
				else
					echo "Esta opcion espera 4 parametros"
				fi
				;;
			"opc3")
				cp -r "$1" "$3"
				;;
			*)
				echo "Las opciones validas son opc1, opc2 y opc3."
				;;
		esac
	else
		echo "El subdirectorio no existe"
	fi
else
	echo "Se espera un minimo de 3 parametros"
	echo "El parametro 1 es el subdirectorio, el parametro dos es la opcion, el parametro 3 es el valor que se busca y el parametro 4 es el que se reemplaza"
	echo "Para la opcion 3 el parametro 3 indica el nombre de la nueva carpeta"

fi