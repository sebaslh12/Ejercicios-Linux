#!/bin/bash
array=(`ls`)
len=${#array[*]}
echo "El arreglo tiene $len elementos. Sus elementos son:"
i=0
while [ $i -lt $len ]; do
	echo "$i: ${array[$i]}"
	let i++
done