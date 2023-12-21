#!/bin/bash
#Indicar si el fichero tiene permisos de lectura y mostrar el contenido

if [ -e $1 ]
then
	if [ -r $1 ]
	then
		echo "El archivo tiene permisos de lectura"
		echo "Su contenido es:"
		cat $1
	fi
else
	echo "El archivo no existe"
fi
