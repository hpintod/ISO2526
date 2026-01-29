#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 20/01/2026
# Pide un fichero origen y un directorio destino, si el fichero existe y el directorio existe, copialo, si no que muestre error.
clear

read -p "Dime un fichero origen: " origen
read -p "Ahora dime un directorio destino: " destino

if [ -f $origen ] && [ -d $destino ]; then
	cp $origen $destino
	echo "Copiado correctamente."
else
	echo "Error, no se pudo copiar."
fi
