#!bin/bash
ciudad=$1
# Supondremos que la ciudad valida es Barcelona
while [[ $ciudad != "Barcelona" ]]; do
    echo "La ciudad ingresada no es válida. La única ciudad válida es 'Barcelona'. Introduzca una ciudad válida:"
    read ciudad
done
consumototal=10000
echo "El total de consumo de $ciudad es: $consumototal"