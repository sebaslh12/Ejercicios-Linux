#!/bin/bash
let result=0
echo "Digite un número:"
read x
echo "Digite otro número:"
read y
PS3="Escoja un valor (1-5):"
echo "de la siguiente lista:"
select operation in sumar restar multiplicar dividir salir
do
	if [ "$operation" = "" ]; then
		echo "Error en la opción ingresada."
		exit 1
	elif [ "$operation" == "sumar" ]; then
		let result=x+y
		echo "La suma de $x y $y es $result"
	elif [ "$operation" == "restar" ]; then
		let result=x-y
		echo "La resta de $x y $y es $result"
	elif [ "$operation" == "multiplicar" ]; then
		let result=x*y
		echo "La multiplicacion de $x y $y es $result"
	elif [ "$operation" == "dividir" ]; then
		let result=x/y
		echo "La division de $x y $y es $result"
	elif [ "$operation" == "salir" ]; then
		echo "Adios"
		exit 0
	fi
done
