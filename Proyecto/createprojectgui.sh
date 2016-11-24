#!/bin/bash

projectName=$(zenity --entry --title "Nombre del projecto" --text="Nombre")
if [ "$?" -eq "0" ]; then
	projectLanguage=$(zenity --list --column "Lenguaje"  "C" "C++" "Python" "Java" --text "Seleccione el lenguaje del proyecto")
	if [ "$?" -eq "0" ]; then
		projectPath=$(zenity --file-selection --directory)
		if [ "$?" -eq "0" ]; then
			createProject=$(./createproject.sh "$projectPath"  "$projectLanguage" "$projectName")
			if [ "$?" -eq "0" ]; then
				activeProject=$(./activeproject.sh "$projectPath")
			fi
		fi
 	fi
fi