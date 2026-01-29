#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 27/01/2026

# Pedir nombre de directorio, crealo si no existe, el programa termina cuando ponga la palabra salir.
clear

read -p "Di un diectorio: " dir

while [ "$dir" != "salir" ]; do
	if [ ! -d $dir ];then
		echo "Creando carpeta $dir"
		mkdir $dir
	else
		echo "El directorio ya existe."
	fi
	read -p "Di un directorio: " dir
done
echo "Saliendo..."
