#!/bin/bash

archivo=$(zenity --file-selection)

echo "Selecciono archivo $archivo"

comando=$(zenity --hide-column 2 --print-column 2 --list --column "Accion" --column "Comando (oculto)" "Eliminar" "rm $archivo" "Copiar" "cp $archivo copia-archivo" "Renombrar" "mv $archivo nuevo-nombre" --text "Seleccione la accion a realizar con archivo $archivo")
$comando

