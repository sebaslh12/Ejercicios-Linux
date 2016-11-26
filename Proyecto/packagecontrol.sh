#!/bin/bash
#$1 operation
#$2 package
OS=$(lsb_release -si)

case "$OS" in
	"Ubuntu")
		case "$1" in
			"Instalar")
				installing=$(sudo apt-get install "$2")
				echo "$installing"
				;;
			"Desinstalar")
				uninstall=$(sudo apt-get remove "$2")
				echo "$uninstall"
				;;
			"Actualizar")
				updating=$(sudo apt-get install "$2")
				echo "$updating"
				;;
		esac
		;;
	"Fedora")
		case "$1" in
			"Instalar")
				$(sudo yum install "$2")
				;;
			"Desinstalar")
				$(sudo rm -e "$2")
				;;
			"Actualizar")
				$(sudo yum update "$2")
				;;
		esac
		;;
	*)
		echo "Version no soportada"
		;;
esac

