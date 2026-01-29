#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026
# El script recibe dos parametros, que son dos numeros, si el primero es mayor que el segundo, muestra la resta, si no la suma.

clear
if [ $# -ge 2 ]; then

resta=$(($1 - $2))
suma=$(($1 + $2))

	if [ $1 -gt $2 ]; then
		echo " $1 - $2 = $resta"
	else
		echo "$1 + $2 = $suma"
	fi
else
	echo "No has introducido 2 numeros por parametro."
	exit 1
fi
