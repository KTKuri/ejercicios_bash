#!/bin/bash

if [ "$#" -lt 4 ]; then
    echo "Error. La sintaxis correcta es: ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

opcion="$1"
nombre="$2"
apellido1="$3"
apellido2="$4"
grupo="$5"

calcular_identificacion() {
    identificacion="${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"
    echo "$identificacion"
}

dar_de_alta() {
    identificacion=$(calcular_identificacion)

    # Verificar si el grupo fue proporcionado
    if [ -z "$grupo" ]; then
        grupo="$identificacion"
        groupadd "$grupo"
        echo "Se creó el grupo: $grupo"
    fi

    useradd -m -s /bin/bash -g "$grupo" -G "$grupo" -c "$nombre $apellido1 $apellido2" -U "$identificacion"

    echo "Usuario dado de alta:"
    echo "Identificación: $identificacion"
    echo "Usuario: $nombre $apellido1 $apellido2"
    echo "Grupo: $grupo"
}

dar_de_baja() {
    identificacion=$(calcular_identificacion)

    if id "$identificacion" &>/dev/null; then
        userdel -r "$identificacion"
        echo "Usuario dado de baja: $identificacion"
    else
        echo "Error: El usuario $identificacion no existe."
    fi
}

case "$opcion" in
    alta)
        dar_de_alta
        ;;
    baja)
        dar_de_baja
        ;;
    *)
        echo "Error. La sintaxis correcta es: ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
        exit 1
        ;;
esac

exit 0

