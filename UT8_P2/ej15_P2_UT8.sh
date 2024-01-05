#!/bin/bash

read -p "Introduce la ruta absoluta del directorio: " ruta

if [ -d "$ruta" ]; then
    echo "A continuación se lista el contenido de '$ruta':"

    for item in "$ruta"/*; do
        if [ -f "$item" ]; then
            echo "$item es un fichero regular"
        elif [ -d "$item" ]; then
            echo "$item es un directorio"
        elif [ -L "$item" ]; then
            echo "$item es un enlace simbólico"
        elif [ -b "$item" ]; then
            echo "$item es un archivo especial de bloque"
        elif [ -c "$item" ]; then
            echo "$item es un archivo especial de caracteres"
        else
            echo "$item es otro tipo de archivo"
        fi
    done

    total=$(ls -1 "$ruta" | wc -l)
    echo "Número total de entradas procesadas: $total"
else
    echo "La ruta no corresponde a ningún directorio"
fi

