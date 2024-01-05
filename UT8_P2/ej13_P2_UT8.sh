#!/bin/bash

suma=0

while true; do
    read -p "Introduce un número (0 para finalizar): " numero

    if [ $numero -eq 0 ]; then
        echo "La suma total es: $suma"
        read -p "Saliendo del script..."
        break
    fi

    suma=$((suma + numero))
    echo "Suma actual: $suma"
done

