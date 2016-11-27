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
				if [ "$2" == "g++" ]; then
					$(sudo yum install "gcc-c++")
				else
					$(sudo yum install "$2")
				fi
				;;
			"Desinstalar")
				if [ "$2" == "g++" ]; then
					$(sudo rm -e "gcc-c++")
				else
					$(sudo rm -e "$2")
				fi
				;;
			"Actualizar")
				if [ "$2" == "g++" ]; then
					$(sudo yum update "gcc-c++")
				else
					$(sudo yum update "$2")
				fi
				;;
		esac
		;;
	*)
		echo "Version no soportada"
		;;
esac

