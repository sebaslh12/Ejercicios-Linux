#!/bin/bash

projectPath=$(zenity --file-selection --directory --title "Escoja el proyecto que desea abrir")

create=$(./updateMakefile.sh "$projectPath")
