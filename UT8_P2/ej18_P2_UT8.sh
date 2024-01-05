#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Debes proporcionar exactamente un nombre de usuario como parámetro."
    echo "Uso: $0 <nombre_usuario>"
else
    nombre_usuario="$1"

    if id "$nombre_usuario" &>/dev/null; then
        echo "El usuario '$nombre_usuario' está dado de alta en el sistema."

        if who | grep -wq "$nombre_usuario"; then
            echo "El usuario '$nombre_usuario' ha iniciado una sesión."
        else
            echo "El usuario '$nombre_usuario' no ha iniciado sesión."
        fi
    else
        echo "El usuario '$nombre_usuario' no está dado de alta en el sistema."
    fi
fi
