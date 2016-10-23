#!/bin/bash 

function funcion {
    echo "Parametro 1 funcion: $1"
    echo "Parametro 2 funcion: $2"
    echo "Total parametros funcion: $#"
}

echo "Parametro 1 script: $1"
echo "Parametro 2 script: $2"
echo "Total parametros script: $#"
funcion "algo" $1 "otro"
