# Realiza un shellscript que compruebe el número de parámetros recibido, si es igual a 2, muestre un OK y muestre todos los parámetros. Si no, que muestre un mensaje de error.
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026

#!/bin/bash
clear

if [ $# -eq 2 ]; then
	echo "OK"
	echo "$*"
else
	echo "ERROR"
fi
