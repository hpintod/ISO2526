#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 22/01/2026
# Realiza un Shell Script que obtenga todos los divisores de un número pasado por parámetro. Deberás comprobar que el usuario sólo introduce un parámetro.
# Si no es así, mostrará un error y terminará.
clear

if [ ! $# -eq 1 ]; then
    echo "Solo puedes introducir un parametro."
    exit
fi

num=1

while [ $num -le $1 ]; do
    resto=$(($1 % $num))
    if [ $resto -eq 0 ]; then
        echo $num
    fi
    num=$(($num + 1))
done
