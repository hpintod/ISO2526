#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026
# Introduce por parametro un numero y hay que decir si es par o impar.

clear

numero=$(($1 % 2))

if [ $numero -eq 0 ]; then
	echo "El numero es par"
else
	echo "El numero es impar"
	exit
fi
