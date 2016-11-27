#!/bin/bash


operation=$(zenity --list --column "Acción"  "Abrir Proyecto" "Crear Proyecto" "Eliminar Proyecto" "Clonar Proyecto" "Administrar Paquetes" "Salir" --text "Seleccione la acción que desea realizar" --title "Proyecto Linux")


case "$operation" in
	"Abrir Proyecto")
		path=$(zenity --file-selection --directory)
		if [ "$path" != "" ]; then
			files=$(./activeproject.sh "$path")
		fi
		;;
	"Administrar Paquetes")
		runproject=$(./packagegui.sh)
		;;
	"Crear Proyecto")
		create=$(./createprojectgui.sh)
		;;
	"Eliminar Proyecto")
		delete=$(./deleteproject.sh)
		;;
	"Clonar Proyecto")
		clone=$(./clonproject.sh)
		;;
	"Salir")
		exit 0
		;;
esac

stayOn=$(./maingui.sh)