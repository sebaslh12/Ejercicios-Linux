#!/bin/bash 

factorial()
{
        if [ $1 -le 1 ]
        then
                return 1
        else
                factorial $[$1-1]
                return $[$1*$?]
        fi
}
factorial 5
echo "factorial 5 = $?"



x=1

case "$x" in
1)  echo "Valor 1"
    ;;
2)  echo  "Valor 2"
    ;;
3)  echo  "Valor 3"
    ;;
esac

echo "Digite una de las siguientes opciones:"
echo "sumar"
echo "restar"
echo "multiplicar"
echo "dividir"
read opcion

dato1=0
dato2=0

case "$opcion" in
"sumar")
	echo "Digite el primer numero"
	read dato1
	echo "Digite el segundo numero"
	read dato2
	suma=$(($dato1+$dato2))
	echo "El resultado de la suma es $suma"
	;;
"restar")
	echo "Digite el primer numero"
	read dato1
	echo "Digite el segundo numero"
	read dato2
	resta=$(($dato1-$dato2))
	echo "El resultado de la resta es $resta"
	;;
"multiplicar")
	echo "Digite el primer numero"
	read dato1
	echo "Digite el segundo numero"
	read dato2
	mult=$(($dato1*$dato2))
	echo "El resultado de la multiplicacion es $mult"
	;;
"dividir")
	echo "Digite el primer numero"
	read dato1
	echo "Digite el segundo numero"
	read dato2
	div=$(($dato1/$dato2))
	echo "El resultado de la division es $div"
	;;
esac
