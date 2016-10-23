#!/bin/bash 
function quit {
    echo "Ejecutando funcion para terminar script"
    echo "Terminando script!!!"
    exit
}
           
function hello {
    local y=456
    x="123"
    echo "Ejecutando una funcion referenciando parametros"
    echo "Primer parametro: $1"
    echo "Segundo parametro: $2"
    echo "Adentro funcion var x $x"
    echo "Adentro funcion var y $y"
}

hello 4 "otro" "tercer"
echo "afuera funcion var x $x"
echo "afuera funcion var y $y"
quit
echo foo 
