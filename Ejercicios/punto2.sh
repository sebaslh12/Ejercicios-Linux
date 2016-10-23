#!/bin/bash
echo "Eso script le permite crear un directorio telefonico, los numeros quedan guardados en un archivo llamado directorio"
echo "Digite el nombre de la persona:"
read name
echo "Digite el nombre de la persona:"
read number
if [ -e directorio ]
then
	echo -e "$name \t $number" >> directorio
else
	echo -e "$name \t $number" > directorio
fi