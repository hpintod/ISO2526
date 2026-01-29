#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 15/01/2026
# Realiza un shellscript que tenga un parámetro que será el nombre de una carpeta. Si el usuario no introduce ningún parámetro, que lo pregunte por read.
# Después que compruebe que la carpeta existe y que tiene permiso de escritura, y cree un fichero hola.txt con el texto !Bienvenido! en ella.
clear

carpeta=$1 2>/dev/null

if [ $# -eq 0 ]; then
	read -p "Escribe el nomber de una carpeta: " carpeta
fi

clear

if [ -d $carpeta ] && [ -w $carpeta ]; then
	echo "La carpeta existe"
	echo "Bienvenido" > "$carpeta/hola.txt"
else
	echo "La carpeta no existe"
fi
