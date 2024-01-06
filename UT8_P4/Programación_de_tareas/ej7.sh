#!/bin/bash

dia_semana=$(date "+%w")

hora_actual=$(date "+%H:%M")

if [ "$dia_semana" -eq 0 ] && [ "$hora_actual" == "02:00" ]; then
    rm -rf /tmp/*
    echo "Carpeta temporal limpiada a las 2:00 de cada domingo."
else
    echo "No es el momento programado para limpiar la carpeta temporal."
fi

