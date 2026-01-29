# Script que recive por parametro el nombre de un fichero, hay que comprobar las lineas que tiene ese fichero, si tiene mas de 10 mostrar su tamaño, y si no mostrar su contenido.
# Autor: Hector Pinto Diaz
# Fecha: 13/01/2026

#!/bin/bash
clear

lineas=$(cat $1 | wc -l)


if [ $lineas -ge 10 ]; then

	du -h -s $1 | cut -f 1

else

	cat $1

fi
