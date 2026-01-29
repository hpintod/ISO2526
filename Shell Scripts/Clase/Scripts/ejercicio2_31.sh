#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 22/01/2026
# Modifica el script anterior para que sólo muestre los números pares.
clear

num=0

while [ $num -le 100 ]; do
        echo "$num"
        num=$((num + 2))
done
