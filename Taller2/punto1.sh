#!/bin/bash 
if [ -n "$1" ] 
then	
 if [ -n "$2" ]
  then
  if [ -d "$2" ]
   then
   	Actualdate=$(date +%Y-%m-%d)
	case $1 in		
	  	[Zz][Ii][Pp])
			compress="zip backup-${Actualdate}.zip -r ${2}"
			$compress
	  		;;
	  	[Tt][Aa][Rr][Gg][Zz])
			compress="tar zvcf backup-${Actualdate}.tar.gz ${2}"
			$compress
			echo "$compress"
			;;
		*) echo "Esa no es una opción válida"
			;;		
	  esac
	else
		echo "El directorio no existe"
  fi
 fi
fi 