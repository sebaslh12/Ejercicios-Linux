#!/bin/bash
#$1 project path

fileName=$(zenity --entry --title "$1")
if [ "$fileName" != "" ]; then
	$(touch "$1/$fileName")
	$(gedit "$1/$fileName")
fi
