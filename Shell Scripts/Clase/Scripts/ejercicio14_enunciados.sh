#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 21/01/2026
# Haz una calculadora
clear

echo "==========================="
echo "        CALCULADORA        "
echo ""
echo " 1. Sumar"
echo " 2. Restar"
echo " 3. Multiplicar"
echo " 4. Division"
echo "==========================="
echo ""
read -p "Elige una opcion: " opt
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

case $opt in
	1)
		resultado=$((num1 + num2))
        	echo "Resultado: $resultado"
	;;

	2)
                resultado=$((num1 - num2))
                echo "Resultado: $resultado"
	;;

	3)
                resultado=$((num1 * num2))
                echo "Resultado: $resultado"
	;;

	4)
                resultado=$((num1 / num2))
                echo "Resultado: $resultado"
	;;

	*)
		echo "Opcion invalida"
	;;
esac
