#!/bin/bash

ayuda() {
    echo "Para ejecutar el script por favor escriba: ./apagar.sh [ahora | N minutos]"
    echo "   - ahora: Reiniciar el equipo inmediatamente."
    echo "   - N minutos: Reiniciar el equipo en N minutos."
}

if [ "$#" -eq 0 ]; then
    ayuda
    exit 1
fi

opcion="$1"

case "$opcion" in
    ahora)
        echo "Reiniciando el equipo ahora..."
        sudo shutdown -r now
        ;;
    [0-9]*)
        minutos="$opcion"
        echo "Reiniciando el equipo en $minutos minutos..."
        sudo shutdown -r "+$minutos"
        ;;
    *)
        ayuda
        exit 1
        ;;
esac

exit 0

