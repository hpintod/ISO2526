# Pide al usuario dos números por teclado y muestra en pantalla las operaciones básicas aritméticas entre ellos.
# Autor: Hector Pinto Diaz
# Fecha: 08/01/2026

#!/bin/bash
clear
read -p "Primer Numero: " num1
read -p "Segundo Numero: " num2

sum=$(($num1+$num2))
res=$(($num1-$num2))
mul=$(($num1*$num2))
div=$(($num1/$num2))

echo
echo "Suma = $sum"
echo "Resta = $res"
echo "Multiplicacion = $mul"
echo "Division = $div"
