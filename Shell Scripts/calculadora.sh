#!/bin/bash
# Autor: Hector Pinto Diaz
# Fecha: 04/02/2026
clear
echo "Autor: Hector Pinto Diaz"

# Tienes que pasar dos parametros al ejecutar el script que seran "$1=nombre del fichero que no debe existir" "$2=numero de operaciones maximas"
if [ ! $# = 2 ]; then
	echo "Solo puedes introducir 2 parametros."
	exit
fi

if [ -e $1 ]; then
	echo "El fichero ya existe."
	exit
	
fi

intentos=0

while [ $intentos -lt $2 ]; do
	# El tipo de operacion debes introducir S=Suma, R=Resta, M=Multiplicacion o D=Division
	echo ""
	read -p "Operación Op1 Op2: " operacion op1 op2
	echo ""

	case $operacion in
		
		S)
			res=$(($op1+$op2))
			echo ""
			echo -e "$operacion $op1 $op2\n" >> $1
			echo "Resultado: $res"
		;;
		
		R)
			res=$(($op1-$op2))
			echo ""
			echo -e "$operacion $op1 $op2\n" >> $1
			echo "Resultado: $res"
		;;
		
		M)
			res=$(($op1*$op2))
			echo ""
			echo -e "$operacion $op1 $op2\n" >> $1
			echo "Resultado: $res"
		;;
		
		D)
			res=$(($op1/$op2))
			echo ""
			echo -e "$operacion $op1 $op2\n" >> $1
			echo "Resultado: $res"
		;;
		
		X)
			echo ""
			echo "$(realpath $1)"
			cat $1 2>/dev/null
			exit
		;;
		
		*)
			echo "Opcion no valida, intene de nuevo."
		;;
	esac
	
	intentos=$(($intentos+1))
done

echo "$(realpath $1)"
cat $1 2>/dev/null
exit
