#!/bin/bash

projectPath=$(zenity --file-selection --directory --title "Seleccione el proyecto que desea clonar")
clonPath=$(zenity --file-selection --directory --confirm-overwrite  --title "Seleccione la ubicación de la copia")

confirm=$(cp -r "$projectPath" "$clonPath")

if [ "$?" -eq "0" ]; then
	info=$(zenity --info --text "Proyecto clonado con exito")
else
	error=$(zenity --info --text "El proyecto no pudo clonarse, intente de nuevo.")
fi