#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 22/01/2026
# Realiza un Shell script que muestre los números del 1 al 100.
clear

num=0

while [ $num -le 100 ]; do
	echo "$num"
	num=$((num + 1))
done

