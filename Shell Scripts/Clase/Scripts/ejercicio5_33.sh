#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 22/01/2026

# Crea un menú para un Shell script que gestione una agenda (solo el menú,
# haremos las opciones más adelante). Las opciones serán:
# ▪ 1- Listado de la agenda
# ▪ 2- Buscar contacto
# ▪ 3- Nuevo contacto
# ▪ 4- Borrar contacto
# ▪ 0- Salir
# ▪ Si se pulsa 1, que indique !has pulsado listado!, si pulsas 2, que indice "has pulsado
# buscar"…. Etc, y si se pulsa la opción 0 (salir), se debe abandonar el menú.
clear


opt=1

while [ $opt -ne 0 ]; do

	echo "Menu de Contactos"
	echo "1. Listado de la agenda"
	echo "2. Buscar Contacto"
	echo "3. Nuevo contacto"
	echo "4. Borrar contacto"
	echo "0. Salir"
	echo ""

	read -p "Seleccione una opcion: " opt

	case $opt in
		1)
			clear
			echo "Has pulsado listado"
			echo ""
		;;

		2)
			clear
			echo "Has pulsado buscar"
			echo ""
		;;

		3)
			clear
			echo "Has pulsado nuevo"
			echo ""
		;;

		4)
			clear
			echo "Has pulsado borrar"
			echo ""
		;;

		0)
			clear
			echo "Saliendo..."
			break
		;;

		*)
			echo "Opcion no valida."
		;;
	esac
done

