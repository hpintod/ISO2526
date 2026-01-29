#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 27/01/2026

# Pedir al usuario un fichero y tiene que contar cuantos de esos ficheros existe, el programa termina cuando encuentra uno vacio.
clear


while true; do
	read -p "Di un fichero: " fich

	if [ -s $fich ]; then
		num=$(($num+1))
		echo "$num ficheros existentes"
	else
		echo "El fichero no existe"
	fi

	ver=$(wc -w $fich 2>/dev/null | cut -d " " -f 1)
	if [ $ver -eq 0 ] 2>/dev/null; then
		echo "El fichero esta vacio."
		break
		exit
	fi
done
