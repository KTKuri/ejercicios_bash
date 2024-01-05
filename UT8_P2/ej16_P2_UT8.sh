#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

dir="$1"

if [ -d "$dir" ]; then
    echo "Estadísticas para el directorio '$dir':"

    file=$(find "$dir" -maxdepth 1 -type f | wc -l)
    subdir=$(find "$dir" -maxdepth 1 -type d | wc -l)

    echo "Número de ficheros: $file"
    echo "Número de subdirectorios: $subdir"
else
    echo "El directorio '$directorio' no existe o no es un directorio válido."
fi

