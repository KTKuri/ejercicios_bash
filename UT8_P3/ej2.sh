#!/bin/bash

#Aviso de que este escaneo puede tardar un rato
archivos_peligrosos=$(find / -type f -perm -007 2>/dev/null)

if [ -n "$archivos_peligrosos" ]; then
    echo "$archivos_peligrosos" > archivos_peligrosos.txt
    echo "Lista de archivos peligrosos guardada en archivos_peligrosos.txt."
else
    echo "No se encontraron archivos peligrosos."
fi

