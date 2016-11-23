#!/bin/bash

projectName=$(zenity --entry --title "Nombre del projecto" --text="Nombre")
projectLanguage=$(zenity --list --column "Lenguaje"  "C" "C++" "Python" "Java" --text "Seleccione el lenguaje del proyecto")
projectPath=$(zenity --file-selection --directory)

createProject=$(./projectcontrol.sh "$projectPath"  "$projectLanguage" "$projectName")