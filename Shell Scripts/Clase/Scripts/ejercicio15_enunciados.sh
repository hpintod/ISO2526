 #!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 21/01/2026
# Pide un nombre de un fichero y actua segun su extension, si la extension es .txt, muestra su contenido, si la extension es .sh, comprobar si es ejecutable.
clear

read -p "Dime el nombre de un fichero: " file

extension="${file##*.}"


if [ -f $file ]; then
	true
else
	echo "El archivo no existe"
	exit
fi


case $extension in
	"txt")
		cat $file
	;;

	"sh")
		if [ -x $file ]; then
			echo "El archivo es ejecutable"
		else
			echo "El archivo no es ejecutable"
		fi
	;;

	*)
		echo "No has puesto ningun archivo valido."
	;;
esac
