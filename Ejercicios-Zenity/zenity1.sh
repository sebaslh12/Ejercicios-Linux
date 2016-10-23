#!/bin/bash

num1=$(zenity --entry --title "Números de la operacion" --text="Número 1")
num2=$(zenity --entry --title "Números de la operacion" --text="Número 2")

operation=$(zenity --list --column "Acción" "Multiplicar" "Sumar" "Restar" "Dividir" --text "Seleccione la accion a realizar con los numeros")

if [ "$operation" == "Sumar" ]; then
		let result=num1+num2
		zenity --info --title "Resultado" --text="La suma de $num1 y $num2 es $result"
	elif [ "$operation" == "Restar" ]; then
		let result=num1-num2
		zenity --info --title "Resultado" --text="La resta de $num1 y $num2 es $result"
	elif [ "$operation" == "Multiplicar" ]; then
		let result=num1*num2
		zenity --info --title "Resultado" --text="La multiplicacion de $num1 y $num2 es $result"
	elif [ "$operation" == "Dividir" ]; then
		let result=num1/num2
		zenity --info --title "Resultado" --text="La division de $num1 y $num2 es $result"
fi