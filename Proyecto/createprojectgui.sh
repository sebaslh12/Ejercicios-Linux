#!/bin/bash

projectName=$(zenity --entry --title "Nombre del proyecto" --text="Nombre")
if [ "$?" -eq "0" ] && [ "$projectName" != "" ]; then
	projectLanguage=$(zenity --list --column "Lenguaje"  "C" "C++" "Python" "Java" --text "Seleccione el lenguaje del proyecto")
	if [ "$?" -eq "0" ] && [ "$projectLanguage" != "" ]; then
		projectPath=$(zenity --file-selection --directory)
		if [ "$?" -eq "0" ]; then
			createProject=$(./createproject.sh "$projectPath"  "$projectLanguage" "$projectName")
			if [ "$?" -eq "0" ]; then
				activeProject=$(./activeproject.sh "$projectPath")
			fi
		fi
 	fi
fi