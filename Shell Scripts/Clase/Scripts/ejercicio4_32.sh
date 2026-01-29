#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 22/01/2026

# Escribe un script que realice lo siguiente:
# ▪ Pide al usuario que introduzca su contraseña: Introduzca password
# ▪ Píde al usuario que repita la contraseña (Repita de nuevo su password)
# ▪ Si la contraseña no coincide con la contraseña inicial, presenta el siguiente mensaje:
# ▪ El password no coincide, inténtelo de nuevo
# ▪ Repite los pasos 2 y 3 hasta que la contraseña coincida con la contraseña inicial
clear

error=1

read -s -p "Introduce una contraseña: " pass
echo ""
read -s -p "Vuelve a introducir la contraseña: " pass2

while [ ! "$pass" == "$pass2" ] && [ ! $error -eq 3 ]; do
	if [ ! "$pass" == "$pass2" ]; then
		echo ""
		echo "El password no coincide, inténtelo de nuevo"
		echo "Intento $error fallido"
		error=$(($error+1))
	fi
	echo ""
	read -s -p "Vuelve a introducir la contraseña: " pass2
done
echo ""
echo "$error intentos fallidos"
