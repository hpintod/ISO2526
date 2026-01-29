#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026
# Pide un nombre y una edad, si es mayor de edad muestra su nombre y que es mayor de edad, y si no, mostrar mensaje de error.

clear

read -p "Dime tu nombre: " nombre
read -p "Dime tu edad: " edad

if [ $edad -ge 18 ]; then
	echo "$nombre es mayor de edad, tiene $edad años."
	exit 0
else
	echo "$nombre es menor de edad, tiene $edad años."
	exit 1
fi
