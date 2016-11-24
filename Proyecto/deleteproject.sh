#!/bin/bash

projectPath=$(zenity --file-selection --directory)

confirm=$(zenity --question --title "Eliminar proyecto" --ok-label="Sí" --cancel-label="No" --text 'Está seguro que desea eliminar este proyecto?')

if [ "$?" -eq "0" ]; then
	delete=$(rm -r "$projectPath")
	info=$(zenity --info --text "Projecto eliminado con exito")
fi

