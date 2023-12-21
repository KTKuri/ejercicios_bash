#!/bin/bash
#Pasar al programa 2 numeros enteros y decir cual es mayor

if [[ $1 -gt $2 ]]
then
	echo "El numero $1 es mayor que el $2"
else
	echo "El numero $2 es mayor que el $1"
fi
