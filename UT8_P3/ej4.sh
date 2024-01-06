#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error. La sintaxis correcta es: ./gestionusuarios.sh archivo_usuarios.txt"
    exit 1
fi

archivo_usuarios="$1"

calcular_identificacion() {
    identificacion="${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"
    echo "$identificacion"
}

dar_de_alta() {
    identificacion=$(calcular_identificacion)

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

while IFS= read -r linea; do
    datos=($linea)
    opcion="${datos[0]}"
    nombre="${datos[1]}"
    apellido1="${datos[2]}"
    apellido2="${datos[3]}"
    grupo="${datos[4]}"

    case "$opcion" in
        alta)
            dar_de_alta
            ;;
        baja)
            dar_de_baja
            ;;
        *)
            echo "Error: Opción no reconocida en la línea \"$linea\". Ignorando."
            ;;
    esac
done < "$archivo_usuarios"

exit 0

