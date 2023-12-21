#!/bin/bash
#Sumar 2 numeros pasados, sino se pasan dar√ error

if [[ $1 && $2 ]]
then
	echo $((z=$1+$2));
else
	echo "Error, hay alg√n par√metro vacio"
fi
