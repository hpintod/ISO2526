#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 20/01/2026
# Pasa por parametro el nombre de un fichero, si ese fichero existe le teneis que preguntar al usuario que permisos quiere cambiar, y cuando lo diga cambiar los permisos.
clear

if [ $# -eq 1 ] && [ -f $1 ]; then
	read -p "Dime quien quieres modificar(u (usuario), g (grupos), o (otros)): " usr
	read -p "Dime que permisos quieres modificar(r (lectura), w (escritura), x (ejecucion)): " perm
	read -p "Dime la accion(+ (añadir), - (eliminar)): " accion

	if [[ ( "$perm" == "r" || "$perm" == "w" || "$perm" == "x" ) && ( "$accion" == "+" || "$accion" == "-" ) && ( "usr" == "u" || "usr" == "g" || "usr" == "o ") ]]; then
		chmod $usr$accion$perm $1
		echo "Persmiso aplicados."
		ls -l $1
	else
		echo "ERROR, parametro seleccionado invalido"
	fi
else
	echo "No has pasado ningun parametro"
fi
