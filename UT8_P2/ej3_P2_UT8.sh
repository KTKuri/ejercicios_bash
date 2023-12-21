#!/bin/bash
#Indica si el fichero existe o no y si se trata de un fichero regular o directorio

if [ -f $1 ]
then
	echo "El archivo es un fichero regular"
elif [ -d $1 ]
then
	echo "El archivo es un directorio"
else
	echo "Error"
fi
