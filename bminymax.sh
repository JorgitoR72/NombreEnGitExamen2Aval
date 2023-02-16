#!/bin/bash
datos=$1

# Usamos awk para procesar el archivo y extraer la información requerida
awk 'BEGIN {
    # Definimos las variables para almacenar el consumo máximo y mínimo
    max_consumo=0
    min_consumo=9999999

    # Definimos las variables para almacenar la ciudad, el mes y el año de consumo máximo y mínimo
    ciudad_max=""
    mes_max=""
    anio_max=""
    ciudad_min=""
    mes_min=""
    anio_min=""
}
{
    # Almacenamos los campos de cada línea en variables
    ciudad=$1
    mes=$2
    anio=$3
    consumo=$4

    if (consumo > max_consumo) {
        max_consumo=consumo
        ciudad_max=ciudad
        mes_max=mes
        anio_max=anio
    }

    if (consumo < min_consumo) {
        min_consumo=consumo
        ciudad_min=ciudad
        mes_min=mes
        anio_min=anio
    }
}
END {
    print "Ciudad de consumo máximo: " ciudad_max
    print "Mes de consumo máximo: " mes_max
    print "Año de consumo máximo: " anio_max
    print "Consumo máximo: " max_consumo
    print ""
    print "Ciudad de consumo mínimo: " ciudad_min
    print "Mes de consumo mínimo: " mes_min
    print "Año de consumo mínimo: " anio_min
    print "Consumo mínimo: " min_consumo
}' "$datos"
