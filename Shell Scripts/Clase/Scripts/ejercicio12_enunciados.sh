#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 20/01/2026
# Realiza un script que reciba 2 parametros, el primero es un numero y el segundo es un fichero de texto, lo que tiene que mostrar es la linea indicada del fichero indicado. Hay que hacer control de errores.
clear

if [ $# -eq 2 ]; then
	if [ -f $2 ]; then
		if [ $(wc -l $2 | cut -d " " -f 1) -ge $1 ]; then
			head -n $1 $2 | tail -n 1
		else
			echo "Has introducido un numero mas grande que lineas en el archivo."
		fi
	else
		echo "El segundo parametro no es un fichero."
	fi
else
	echo "No has pasado dos parametros."
fi
