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

resultado=0
if [ -n "$1" ] && [ $# -gt 0 ];
then
	case "$1" in
	"sum")
	 	for param in "$@"
		do
			if [ "$param" != "$1" ];
				then
				resultado="$(($resultado+$param))"
			fi
		done
		echo "$resultado"
		;;
	"rest")
		for param in "$@"
		do
			if [ "$param" != "$1" ];
				then
				resultado="$(($resultado-$param))"
			fi
		done
		echo "$resultado"
		;;
	"mult")
	 	resultado=1
	 	for param in "$@"
		do
			if [ "$param" != "$1" ];
				then
				resultado="$(($resultado*$param))"
			fi
		done
		echo "$resultado"
		;;
	"div")
	 	if [ $# -lt 4 ];
	 	 then
			resultado="$(($2/$3))"
		fi
		echo "$resultado"
		;;
	"min")
		resultado=9318029301
	 	for param in "$@"
			do
				if [ "$param" != "$1" ];
				then
					if [ $param -lt $resultado  ]
						then
						resultado=$param
					fi
				fi
		done
		echo "$resultado"
		;;
	"max")
	 	for param in "$@"
			do
				if [ "$param" != "$1" ];
				then						
					if [ $param -gt $resultado  ]
						then
						resultado=$param
					fi
				fi
			done
			echo "$resultado"
		;;
	"fac")
	 	if [ $# -lt 3 ];
	 	 then
			resultado=factorial "$2"
			echo "$resultado"
		fi
		;;
	*)
	 	echo "Opción no valida."
	 	;;
	esac
else
	echo "No ingresaste los parametros necesarios,"
fi

