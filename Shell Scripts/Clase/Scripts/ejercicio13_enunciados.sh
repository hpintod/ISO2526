#!/bin/bash
# Nombre: Hector Pinto Diaz
# Fecha: 21/01/2026
# Pide el nombre de un usuario, comprueba que existe, si existe, pide que introduzca una opcion, 1-bloquear usuario, 2-desbloquear usuario, y si no existe que cree el usuario.
clear

if [ $UID -eq 0 ]; then
	read -p "Dime un nombre de usuario: " usuario
	if [ $usuario == $(cat /etc/passwd | cut -d ":" -f 1 | grep "^$usuario$") ]; then
		read -p "Seleccione(1-Bloquear usuario, 2-Desbloquear usuario): " opcion
		if [ $opcion -eq 1 ]; then
			usermod -L $usuario
			echo "Usuario Bloqueado"
			exit
		fi
		if [ $opcion -eq 2 ]; then
			read -s -p "Escribe una contraseña para el usuario: " password
			usermod -p $password $usuario
			echo "Usuario Desbloqueado"
			exit
		fi
	else
		echo "No existe el usuario"
		useradd $usuario
		echo "Usuario Creado"
		exit
	fi
else
	echo "No eres el usuario root"
	exit
fi
