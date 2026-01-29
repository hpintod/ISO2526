# Pide la edad del usuario y muestra cuantos años tendrá dentro de 10 años.
# Autor: Hector Pinto Diaz
# Fecha: 08/01/2026

#!/bin/bash
clear

read -p "Escribe tu edad: " edad

res=$((edad+10))

echo "Tendra $res dentro de 10 años"
