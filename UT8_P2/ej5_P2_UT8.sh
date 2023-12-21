#!/bin/bash
#Imprimir numeros del 5 al 1 usando un bucle while

i=5
while [ $i -gt 0 ]
do
	echo $i
	((i--))
done
