#!/bin/bash 
echo "Este script contiene solo las opciones que entendí"
PS3="Escoja un valor (1-3):"
echo "de la siguiente lista:"
select operation in Awk Sed Grep
do
	case $operation in
		"Awk")
			clear
			echo "El comando Awk buscan un patrón en una cadena o archivo de texto, si encuentra una coincidencia aplica la operación que se le indique"
			echo "ls -l | awk {print $ 2}, solo imprime el segundo parametro que retorna la ejecución de ls -l"
			echo `ls -l | awk '{print $2}'`
			echo "La opción -f permite ejecutar un programa en un archivo que contiene la operación que procesa la cadena o el archivo. El siguiente ejemplo awk -f prog.awk Simulando echo simula un echo"
			echo `awk -f prog.awk Simulando echo`
			echo "La opción -F permite definir el separador, por defecto es el espacio en blanco en este ejemplo será null y se ejecutará el primer comando ls -l | awk {print $ 2}, esta vez imprime el segundo caracter de cada linea"
			echo `ls -l | awk -F "" '{print $2}'`
			;;
		"Sed")
			clear
			echo "El comando sed permite filtrar y reemplazar el texto de un archivo de entrada de acuerdo a las especificaciones del script, por ahora solo veremos las opciones"
			echo "La opción -n elimina los prints automaticos del patrón de espaciado, sed -n '$=' punto2.sh cuenta las lineas sin imprimirlas"
			echo `sed -n '$=' punto2.sh`
			echo "La opción G agrega un salto de linea"
			echo -e `sed G SampleFile.txt`
			echo "La opción s permite reemplazar una cadena por otra. En este ejemplo se reemplazará la cadena Sample por la cadena Example sed 's/Sample/Example/g' SampleFile.txt"
			echo `sed 's/Sample/Example/g' SampleFile.txt`
			;;
		"Grep")
			clear
			echo "El comando grep busca el patrón definido en cada linea del archivo especificado"
			echo `grep "Sample" SampleFile.txt`
			echo "La opción -i ignora las mayusculas y minusculas. grep -n sample SampleFile.txt"
			echo `grep -i "sample" SampleFile.txt`
			echo "La opción -n devuelve el numero de la linea donde encontro coincidencia"
			echo `grep -n -i "sample" SampleFile.txt`
			echo "La opción -iw busca el exactamente el patrón no cualquier ocurrencia. Este comando grep -iw "e" SampleFile.txt no arroja ninguna coincidencia porque no hay ninguna e sola"
			echo `grep "e" SampleFile.txt`
			echo `grep -iw "e" SampleFile.txt`
			echo "La opción -B <N> imprime las N lineas que estan antes de encontrar la ocurrencia."
			echo `grep -B 1 "KDE" chat.txt`
			;;
		*)
			echo "No es una opción valida."
			exit
			;;
	esac
done