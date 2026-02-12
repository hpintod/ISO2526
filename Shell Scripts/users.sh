#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 12/02/2026
clear

# Hay que pasar un parametro que sera un UID de un usuario, si no se introduce ninguno sera el UID:1000
if [ $UID -ne 0 ]; then
	echo "El usuario no es root."
	exit
fi

if [ $# -eq 0 ]; then
	ref="1000"
else
	ref="$1"
fi


cont=0
lineas=$(cat /etc/passwd)

echo "======================================================="
echo ""
echo "Informe de usuarios el día $(date +%d-%m-%Y) a las $(date +%H:%M)"

for l in $lineas; do
	uuid=$(echo $l | cut -f 3 -d ":")
	user=$(echo $l | cut -f 1 -d ":")
	if [ $uuid -ge $ref 2>/dev/null ]; then
		echo ""
		echo "$user - $uuid"
		cont=$(($cont + 1))
	fi
done

echo ""
echo "Total: $cont usuarios"
echo ""
echo "======================================================="

echo "$(date +%d-%m-%Y) - $(date +%H:%M) - El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos
