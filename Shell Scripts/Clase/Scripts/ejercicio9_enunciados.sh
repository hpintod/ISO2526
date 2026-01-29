#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 20/01/2026
# Pide al usuario un fichero, si existe y es legible, muestra su contenido, y si no muestra su numero de lineas.
clear

read -p "Dime un fichero: " fichero

if [ -r  $fichero ]; then
	cat $fichero
else
	wc -l $fichero
fi
