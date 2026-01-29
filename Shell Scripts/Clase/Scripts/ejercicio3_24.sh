#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 15/01/2026
# Realiza un shellscript que pregunte el nombre y la contraseña a un usuario. Si el usuario es !pepe! y la contraseña es !qwerty!, le salude dándole la bienvenida y
# mostrando la fecha de hoy. Si la contraseña no es ésa, que muestre un mensaje de error.
clear

read -p "Dime el usuario: " usuario
read -s -p "Dime la contrasena: " contrasena

if [ "$usuario" == "pepe" ] && [ "$contrasena" == "qwerty" ]; then
	echo
	echo "Bienvenido $usuario"
	echo "$(date +%D)"
else
	echo
	echo "ERROR"
	exit
fi
