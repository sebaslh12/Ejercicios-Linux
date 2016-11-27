#!/bin/bash
#$1 projectPath

operation=$(zenity --list --column "Operacion"  "Editar/Ver Archivos" "Ejecutar Proyecto" "Añadir Archivo" "Eliminar Archivo" "Salir" --text "Seleccione la acción que desea realizar" --title "Acciones Proyecto")

case "$operation" in
	"Editar/Ver Archivos")
		files=$(./filemodification.sh "$1")
		;;
	"Ejecutar Proyecto")
		runproject=$(./executeproject.sh "$1")
		;;
	"Añadir Archivo")
		addfile=$(./filecreation.sh "$1")
		;;
	"Eliminar Archivo")
		deletefile=$(./filedelete.sh)
		;;
	"Salir")
		exit 0
		;;
esac

stayOn=$(./activeproject.sh "$1")