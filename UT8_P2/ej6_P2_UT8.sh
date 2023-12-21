#!/bin/bash
#Tabla de multiplicar del número pasado por parámetro

echo "TABLA DE MULTIPLICAR DEL $1"

i=1

while [[ $i -le 10 ]]
do
	z=$(( $1 * $i ))
	echo $z
	((i++))
done
