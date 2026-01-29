# El script recive dos parametros, nombre y edad, y hay que mostrar la edad de esa persona hace 5 años.
# Autor: Hector Pinto Diaz
# Fecha: 08/01/2026

#!/bin/bash
clear

res=$(($2-5))

echo "La edad de $1 hace 5 años eran $res años"
