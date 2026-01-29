#!/bin/bash
# Nombre: Hector Pinto Diaz
# Fecha: 29/01/2026

# Script sobre un menu de una agenda.
clear

while true; do
	echo ""
	echo "==================================================="
	echo "|                 MENU AGENDA                     |"
	echo "|                                                 |"
	echo "|  a) Añadir una entrada                          |"
	echo "|  b) Buscar por dni                              |"
	echo "|  c) Ver la agenda completa                      |"
	echo "|  d) Eliminar todas las entradas de la agenda    |"
	echo "|  e) Finalizar                                   |"
	echo "|                                                 |"
	echo "==================================================="
	read -p "Elige una opcion: " opt
	
	case $opt in
		a)
			clear
			read -p "Dime el DNI de la persona para dar de alta: " dni
			checkdni=$(echo -n "$dni" | wc -m)
			if [ $checkdni -eq 9 ]; then
				comprobar=$(grep -woi "$dni" agenda.txt)
				
				if [ "$comprobar" == "$dni" ]; then
					echo "Este usuario ya esta dado de alta en la agenda."
				else
					read -p "Nombre: " nombre
					read -p "Apellido: " apellido
					read -p "Localidad: " localidad
					echo "$dni:$nombre:$apellido:$localidad" >> agenda.txt
				fi
			else
				echo "El dni debe contener 9 caracteres."
			fi
		;;
		
		b)
			clear
			read -p "Dime el DNI de la persona para ver sus datos: " dni
			comprobar=$(grep "^$dni" agenda.txt | cut -f 1 -d ":")
			nombre=$(grep "^$dni" agenda.txt | cut -f 2 -d ":" )
			apellido=$(grep "^$dni" agenda.txt | cut -f 3 -d ":" )
			localidad=$(grep "^$dni" agenda.txt | cut -f 4 -d ":" )
			if [ "$comprobar" == "$dni" ]; then
				echo "La persona con DNI numero $dni es: $nombre $apellido, y vive en $localidad"
			else
				echo "El dni introducido no existe."
			fi
		;;
		
		c)
			clear
			if [ -s agenda.txt ]; then
				cat agenda.txt
			else
				echo "La agenda esta vacia."
			fi
		;;
		
		d)
			echo "Vaciando la agenda..."
			echo > agenda.txt
		;;
		
		e)
			clear
			echo "Saliendo de la agenda..."
			break
			exit
		;;
		
		*)
			clear
			echo "Opcion no valida, introduce una opcion que este en el menu."
		;;
	esac
done
