#!/bin/bash
clear

if [ ! -d $HOME/Mis\ Cosas ]; then
	mkdir $HOME/"Mis Cosas"
	echo "No existia la carpeta, carpeta creada"
else
	echo "La carpeta ya existe"
fi
