#!/bin/bash
#Juego de adivinar un número aleatorio del 1 al 100

win=11
num=1
while [[ $num -ne 0 ]]
do
	read -p "Introduzca un número del 1 al 99: " num

	if [[ $num -eq 0 ]]
	then
		read -p "Saliendo del juego..."
	elif [[ $num -gt 100 ]]
	then
		echo "Porfavor, introduzca el número entre el 1 y el 100"
	elif [[ $num -lt $win ]]
	then
		echo "El número introducido es menor"
	elif [[ $num -gt $win ]]
	then
		echo "El número introducido es mayor"
	elif [[ $num -eq $win ]]
	then
		echo "ENHORABUENA, HAS ACERTADO. EL NÚMERO ERA EL 11"
	else 
		echo "Error"
	fi
done


