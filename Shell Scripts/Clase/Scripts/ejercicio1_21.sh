#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026
# Realiza un shellscript que muestre el mensaje !Hora de comer! si la hora actual está entre las 14:00 y las 16:00

clear

hora=$(date +%H)

if [ $hora -ge 14 ] && [ $hora -le 16 ]; then
	echo "Hora de comer"
	exit 0
else
	echo "Todavia no es la hora de comer"
	exit 1
fi
