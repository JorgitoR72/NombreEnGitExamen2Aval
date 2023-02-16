#!/bin/bash

# Verificamos si se ha proporcionado un argumento
if [ $# -eq 0 ]
then
    echo "Uso: cmedia.sh <ciudad>"
    exit 1
fi

# Asignamos el nombre de la ciudad a la variable "ciudad"
ciudad="$1"

# Calculamos la media de los consumos de la ciudad
media=$(awk -v c="$ciudad" '$1 == c {sum+=$2; n++} END {print sum/n}' consumos.txt)

# Mostramos el resultado
echo "La media de consumos de $ciudad es: $media"