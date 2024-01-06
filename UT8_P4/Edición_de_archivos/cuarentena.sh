#!/bin/bash

if [ "$(id -u)" != 0 ]; then
    echo "Este script puede requerir privilegios de superusuario. Se recomienda ejecutarlo con sudo."
    exit 1
fi

mkdir -p /root/cuarentena

find / -type f -exec grep -l "Hack" {} + 2>/dev/null | xargs -I {} mv {} /root/cuarentena/

echo "Búsqueda completa. Archivos con la palabra 'Hack' movidos a /root/cuarentena/"

