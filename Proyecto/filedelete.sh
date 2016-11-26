#!/bin/bash
#$1 project path

files=$(zenity --file-selection --multiple --separator=" ")

confirm=$(zenity --question --title "Eliminar archivo/s" --ok-label="Sí" --cancel-label="No" --text 'Está seguro que desea eliminar el/los archivos que seleccionó?')

if [ "$?" -eq "0" ]; then
	if [ ${#files} -gt 0 ]; then
		for file in $files; do
			$(rm -f "$file")
		done
	fi
fi