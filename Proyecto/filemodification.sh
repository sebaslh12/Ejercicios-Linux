#!/bin/bash
#$1 project path

projectFiles=($(find "$1" -type f))

selectedFile=$(zenity --list --column "Archivos"  "${projectFiles[@]}" --text "Seleccione un archivo del proyecto para verlo en el editor")
if [ "$selectedFile" != "" ]; then
	$(gedit "$selectedFile")
fi