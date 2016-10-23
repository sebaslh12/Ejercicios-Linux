#!/bin/bash
echo "Esta es una lista de operaciones sobre el directorio telefonico"
PS3="Escoja un valor (1-4):"
echo "de la siguiente lista:"
select operation in añadir ordenar mostrar  salir
do
	if [ "$operation" = "" ]; then
		echo "Error en la opción ingresada."
		exit 1
	elif [ "$operation" == "añadir" ]; then
		echo "Digite el nombre de la persona:"
		read name
		echo "Digite el nombre de la persona:"
		read number
		echo -e "$name \t $number" >> directorio

	elif [ "$operation" == "ordenar" ]; then
		sort directorio
		sort directorio > directorio
		
	elif [ "$operation" == "mostrar" ]; then
		cat directorio
		
	elif [ "$operation" == "salir" ]; then
		echo "Adios"
		exit 0
	fi
done