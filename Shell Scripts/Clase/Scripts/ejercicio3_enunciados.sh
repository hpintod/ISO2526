# Pide el salario mensual y muestra cual seria el salario anual.
# Autor: Hector Pinto Diaz
# Fecha: 08/01/2026

#!/bin/bash
clear

read -p "Salario Mensual: " num

res=$(($num*12))

echo "Salario Anual es: $res"
