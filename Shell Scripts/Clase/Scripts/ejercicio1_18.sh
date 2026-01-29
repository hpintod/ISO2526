# Escribe un shellscript que únicamente lo pueda ejecutar el usuario root. Si no es el root, debe mostrar un mensaje de error.
# Autor: Hector Pinto Diaz
# Fecha: 14/01/2026

#!/bin/bash
clear

if [ $UID -eq 0 ] && [ $USER == "root" ]; then
	echo "Eres el usuario root, puedes ejecutar el script"
else
	echo "No puedes ejeutar este script porque no eres root"
	exit
fi
