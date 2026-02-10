#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 10/02/2026
clear

# Hay que introducir dos parametros, el primero que sera el archivo de fichero de salida y el segundo que sera un directorio.
if [ $# -ne 2 ]; then
	echo "Tienes que pasar dos parametros."
elif [ -f $1 ]; then 
	echo "El fichero ya existe."
elif [ ! -d $2 ]; then
	echo "El directorio no existe."
elif [ -z "$(ls $2)" ]; then
	echo "El directorio esta vacio."
fi

fich="$1"
dir="$2"
cont=0

echo "Hector Pinto Diaz"
echo ""

for i in $dir/*.txt; do
	if [ "$(wc -l < "$i")" -ge 5 ]; then
		echo "Fichero: $i"
		echo "$i" >> $fich
		cont=$(($cont + 1))
		
		echo "El fichero original tiene $(wc -w < "$i") palabras" > $i.q
		cat $i >> $i.q
	fi
done

echo "Ficheros identificados: $cont" >> $fich
