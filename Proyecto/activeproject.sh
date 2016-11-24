#!/bin/bash

projectPath=$(zenity --file-selection --directory --title "Escoja el proyecto que desea abrir")

projectFiles=($(find "$projectPath" -type f))

selectedFile=$(zenity --list --column "Archivos"  "${projectFiles[@]}" --text "Seleccione el lenguaje del proyecto")

echo $(gedit "$selectedFile")