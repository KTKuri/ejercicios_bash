#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Debes proporcionar exactamente dos parámetros."
    echo "Uso: $0 <archivo_original> <nombre_copia>"
fi

archivo_original="$1"
nombre_copia="$2"

if [ ! -f "$archivo_original" ]; then
    echo "Error: El primer parámetro debe ser un archivo ordinario existente."
fi

if [ -e "$nombre_copia" ]; then
    echo "Error: Ya existe un identificador (archivo, directorio, etc.) con el nombre '$nombre_copia'."
fi

cp "$archivo_original" "$nombre_copia"
echo "Copia exitosa: '$archivo_original' ha sido copiado como '$nombre_copia'."
