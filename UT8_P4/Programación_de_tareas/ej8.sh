#!/bin/bash

while true; do
    fecha=$(date "+%Y-%m-%d %H:%M:%S")

    num_usuarios=$(who | awk '{print $1}' | sort -u | wc -l)

    echo "$fecha - Usuarios conectados: $num_usuarios" >> /tmp/usuarios

    sleep 120
done

