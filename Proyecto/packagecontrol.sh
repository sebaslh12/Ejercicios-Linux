#!/bin/bash
OS=$(lsb_release -si)

case "$OS" in
	"Ubuntu")
		case "$1" in
			"install")
				installing=$(sudo apt-get install "$2")
				echo "$installing"
				;;
			"uninstall")
				uninstall=$(sudo apt-get remove "$2")
				echo "$uninstall"
				;;
			"update")
				updating=$(sudo apt-get install "$2")
				echo "$updating"
				;;
		esac
		;;
	"Fedora")
		case "$1" in
			"install")
				$(sudo yum install "$2")
				;;
			"uninstall")
				$(sudo rm -e "$2")
				;;
			"update")
				$(sudo yum update "$2")
				;;
		esac
		;;
	*)
		echo "Version no soportada"
		;;
esac

