#!/bin/bash
#$1 project path

fileName=$(zenity --entry --title "$1" --text "Ingrese el nombre del nuevo archivo")
if [ "$fileName" != "" ]; then
	$(touch "$1/$fileName")
	$(gedit "$1/$fileName")
fi
