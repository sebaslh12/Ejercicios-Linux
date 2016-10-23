echo "Eso script le permite crear un directorio telefonico, los numeros quedan guardados en un archivo llamado directorio, podra terminar digitando salir como nombre de la persona"
while :; do
	echo "Digite el nombre de la persona:"
	read name
	if [ "$name" == "salir" ]; then
		exit 0
	fi
	echo "Digite el numero de la persona:"
	read number

	if [ -e directorio ]
		then
			echo -e "$name \t $number" >> directorio
		else
			echo -e "$name \t $number" > directorio
	fi
done
