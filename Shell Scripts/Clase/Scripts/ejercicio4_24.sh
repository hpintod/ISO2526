#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 15/01/2026
# Realiza un shellscript que pregunte al usuario una dirección IP, y a continuación indique si esa IP es pública, privada o local. Una ip es local si empieza por 127.
# Una ip es privada si empieza por 10, si empieza por 172 y el segundo bloque está entre 16 y 31 (ambos incluidos), si empieza por 192.168, o si empieza por 169.254
clear

read -p "Dime una direccion IP: " IP

IP1=$( echo $IP | cut -d "." -f 1)
IP2=$( echo $IP | cut -d "." -f 2)

if [ $IP1 -eq 127 ]; then
	echo "Es una ip local"
	exit
fi

if [[ $IP1 -eq 10 ]] || [[ $IP1 -eq 172 && $IP2 -ge 16 && $IP2 -le 31 ]] || [[ $IP1 -eq 192 && $IP2 -eq 168 ]] || [[ $IP1 -eq 169 && $IP2 -eq 254 ]]; then
	echo "Es una IP privada"
	exit
else
	echo "Es una ip publica"
fi
