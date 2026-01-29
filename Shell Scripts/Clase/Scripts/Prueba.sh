#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 00/00/2026
# Script de prueba
clear

num=1

while true; do
	echo "MENU"
	echo "1. Mostrar"
	echo "2. Listar"
	echo "0. Salir"

	read -p "Di una opcion " opt

	case $opt in
		1)
			ls
		;;

		2)
			tail -1 /etc/passwd
		;;

		0)
			echo "Saliendo..."
			break
		;;
	esac
done
