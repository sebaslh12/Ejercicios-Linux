#!/bin/bash
PS3="Escoja un valor (1-5):"
echo "Escoja de la siguiente lista:"
select name in rojo verde azul amarillo morado
do
	if [ "$name" = "" ]; then
	echo "Error en la opción ingresada."
	exit 1
fi
done
echo "Usted escogió $name."
