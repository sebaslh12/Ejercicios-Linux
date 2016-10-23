#!/bin/bash


arraycampos=("Nombre" "Telefono")

while :; do
	cancel=$?
	form=$(zenity --forms --title="Registro" --text="Directorio Telefonico" --add-entry=${arraycampos[0]} --add-entry=${arraycampos[1]} --separator=" ")
	if [[ $? == 1 ]]; then
		exit 1
	fi
	echo -e "$form">>directorio
done

