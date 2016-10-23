#!/bin/bash
listaEquipos="America Barcelona Real Madrid Bayern"
frase="x es el mejor equipo del mundo\n
x tiene a los mejores jugadores y\n
x le puede ganar a cualquiera"
#tam=${#frase}
#tam=`expr length "$frase"`
tam=`expr "$frase" : '.*'`
primeraParte=${frase:0:15}

echo -e $frase
echo -e "El tamaño de la cadena anterior es $tam\n"
echo -e "La primera parte de la frase es $primeraParte\n"

for equipo in $listaEquipos; do
	echo -e ${frase//x/$equipo}
	echo ""
done


