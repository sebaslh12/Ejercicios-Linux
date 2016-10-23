#!/bin/bash
secretNumber=$(( (`date +%s` % 100) +1 ))
guess=-1
while [ "$guess" != "$secretNumber" ]; do
	echo -n "Adivine un número entre 1 and 100. Ingrese su respuesta:"
	read guess
	if [ "$guess" = "" ]; then
		echo "Por favor ingrese un número."
	elif [ "$guess" = "$secretNumber" ]; then
		echo -e "Perfecto! $guess es la respuesta correcta!"
	elif [ "$secretNumber" -gt "$guess" ]; then
		echo "El número es mayor que su respuesta. Intente nuevamente."
	else
		echo "El número es menor que su respuesta. Intente nuevamente."
	fi
done
