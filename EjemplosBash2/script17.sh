#!/bin/bash
x="123-23-346"
if [[ $x =~ [0-9]{3}-[0-9]{2}-[0-9]{4} ]]
then
	# process SSN
    echo "Numero en formato correcto"
else
	# print error message
    echo "Error"
fi

email="correo4@universidad.com.co"
if [[ $email =~ [0-9a-z._-]+@[a-z0-9.-]+\.[a-z]{2,4}$ ]]
then echo "Correo en formato correcto"
else echo "Error"
fi
