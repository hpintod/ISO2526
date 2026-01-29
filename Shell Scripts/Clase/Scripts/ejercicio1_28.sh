#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 21/01/2026
# Realiza un shellscript que reciba por parámetro una orden. Si la orden es !crear!, cree una carpeta BAK en el home, si es !borrar!, borre el contenido de la carpeta BAK del
# home si existe, y si es otra orden, muestre un mensaje de error.
clear

case $1 in

	"crear")
		echo "Creando carpeta BAK"
		mkdir $HOME/BAK
		exit
	;;

	"borrar")
		if [ -d $HOME/BAK ]; then
			echo "Borrando el contenido de la carpeta BAK"
			rm $HOME/BAK/*
			exit
		else
			echo "No existe el directorio BAK"
		fi
	;;

	*)
		echo "Opcion no valida"
	;;
esac
