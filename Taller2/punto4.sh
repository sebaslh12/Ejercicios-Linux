#!/bin/bash 
if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ];
	then
	if [ -e "$1" ]
		then
		case "$2" in
			"opc1")
				op1=$(grep "$3" chat.txt  | awk '{print $1}' | tail -n 1)
				if [ ${#op1} -gt 0 ]
					then
					echo "$op1"
				else
					echo "El usuario no existe"
				fi
				;;
			"opc2")
				op2=$(grep "$3" chat.txt  | cut -f 2- -d '>')
				if [ ${#op2} -gt 0 ]
					then
					echo "$op2"
				else
					echo "El usuario no existe"
				fi
				;;
			*)
				echo "Las opciones validas son opc1 y opc2."
				;;
		esac
	else
		echo "El archivo no existe"
	fi
else
	echo "Este script espera 3 parametros, el primero es archivo, el segundo la opcion y el tercero el nombre del usuario"
fi
#

#grep "rob" chat.txt  | awk '{print $1}'