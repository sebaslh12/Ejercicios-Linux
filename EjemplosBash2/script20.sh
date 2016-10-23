#!/bin/bash 

echo "El nombre de este script es \"$0\"."
echo "El nombre de este script es \"`basename $0`\"."

if [ -n "$1" ] 
then
 echo "Parametro #1: $1"
fi 

if [ -n "$2" ]
then
 echo "Parametro #2: $2"
fi 

if [ -n "$3" ]
then
 echo "Parametro #3: $3"
fi 

args=$#

echo "El script fue ejecutado con $args argumentos"

i=1
for param in "$@"
do
    echo -e "\tParametro $i: $param"
    let i++
done
