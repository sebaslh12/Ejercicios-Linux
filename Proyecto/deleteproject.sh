#!/bin/bash

projectPath=$(zenity --file-selection --directory --title "Seleccione el proyecto que desea eliminar")

confirm=$(zenity --question --title "Eliminar proyecto" --ok-label="Sí" --cancel-label="No" --text 'Está seguro que desea eliminar este proyecto?')

if [ "$?" -eq "0" ]; then
	delete=$(rm -r "$projectPath")
	info=$(zenity --info --text "Proyecto eliminado con exito")
fi

