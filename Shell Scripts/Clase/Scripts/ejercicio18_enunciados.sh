#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 27/01/2026

# Pedir una palabra y un fichero, buscar esa palabra en el fichero que se ha pedido, hay que comprobar si el fichero existe y si es legible, tiene que pedir todo
# el rato ficheros para buscar esa misma palabra en los ficheros, y termina cuando ponga la palabra fin.
clear

read -p "Escribe una palabra: " word
read -p "Di un fichero: " fich

while [ "$fich" != "fin" ]; do
	if [ -f $fich ];then
		if [ -r $fich ];then
			if [ "$word" == "$(grep $word $fich)" ];then
				echo "Palabra $word encontrada en $fich"
			else
				echo "Palabra $word no encontrada en $fich"
			fi
		else
			echo "$fich no tiene permisos de lectura."
		fi
	else
		echo "$fich no es un fichero."
	fi
	read -p "Di un fichero: " fich
done
