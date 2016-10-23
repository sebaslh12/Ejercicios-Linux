#!/bin/bash

arraycampos=("Nombre" "Codigo" "Correo")

form=$(zenity --forms --title="Registro" --text="Datos estudiante" --add-entry=${arraycampos[0]} --add-entry=${arraycampos[1]} --add-entry=${arraycampos[2]} --separator=" ")

echo $form

i=0
for var in $form; do
    echo "${arraycampos[$i]}: $var"
    let i++
done
