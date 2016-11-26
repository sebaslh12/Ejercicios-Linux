#!/bin/bash
#$1 operacion
packageOp=$(zenity --list --column "Operacion"  "Instalar" "Desinstalar" "Actualizar" --text "Seleccione la operacion que desea realizar")

packageName=$(zenity --list --column "Paquete"  "gcc" "g++" "python" "java" --text "Seleccione el paquete del lenguaje que desea "$packageOp"")
if [ "$packageName" == "java" ]; then
	packageName="default-jdk"
fi
operate=$(./packagecontrol.sh "$packageOp" "$packageName")