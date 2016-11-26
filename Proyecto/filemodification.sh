#!/bin/bash
#$1 project path

projectFiles=($(find "$1" -type f))

selectedFile=$(zenity --list --column "Archivos"  "${projectFiles[@]}" --text "Seleccione el lenguaje del proyecto")
if [ "$selectedFile" != "" ]; then
	$(gedit "$selectedFile")
fi