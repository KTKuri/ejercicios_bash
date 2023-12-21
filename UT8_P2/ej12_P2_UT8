#!/bin/bash
#Menú

function suma() {
	read -p "Introduzca el primer número: " num1
	read -p "Introduzca el segundo número: " num2
	sumar=$((num1 + num2))
	echo "La suma de los 2 números es: $sumar"
}

function resta() {
	read -p "Introduzca el primer número: " num1
	read -p "Introduzca el segundo número: " num2	
	restar=$((num1 - num2))
	echo "La resta de los 2 números es: $restar"
}

function division() {
	read -p "Introduzca el primer número: " num1
	read -p "Introduzca el segundo número: " num2	
	if [ "$num2" -eq 0 ]; then
		echo "Error: No puedes dividir por cero."
	else
		divid=$((num1 / num2))
		echo "La división de los 2 números es: $divid"
	fi
}

function multiplicacion() {
	read -p "Introduzca el primer número: " num1
	read -p "Introduzca el segundo número: " num2	
	multi=$((num1 * num2))
	echo "La multiplicación de los 2 números es $multi"
}

function salir() {
	echo "Saliendo del menú..."
	exit 0
}

echo "*********************"
echo "*       MENÚ        *"
echo "*********************"

while true; do
	read -p "1-Sumar
2-Restar
3-Dividir
4-Multiplicar
0-Salir

Introduce una opci�n: " opcion

	case $opcion in
		1)
			suma
			;;
		2)
			resta
			;;
		3)
			division
			;;
		4)
			multiplicacion
			;;
		0)
			salir
			;;
		*)
			echo "Opción no válida"
			;;
	esac
done
