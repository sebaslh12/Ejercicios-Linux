#!/bin/bash

FILE=`dirname $0`/directorio

while :; do
	operation=$(zenity --list --hide-column 2 --print-column 2 --no-cancel --column "Acción" --column "Ejecucion" "Añadir Registro" "./zenity2.sh" "Ordenar" "sort -o directorio directorio" "Ver contenido" "zenity --text-info --title=Directorio --filename=$FILE" "Salir" "exit 1" --text "Seleccione la accion a realizar")
	$operation
done

 