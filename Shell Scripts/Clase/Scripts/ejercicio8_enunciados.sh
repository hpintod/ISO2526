#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 20/01/2026
# Comprueba si el directorio personal existe y si es un directorio.
clear

if [ -d $HOME ]; then
	echo "El directorio personal existe."
else
	echo "No existe el directorio personal."
fi
