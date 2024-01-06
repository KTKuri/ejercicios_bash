#!/bin/bash

info_sistema=$(uptime)

info_usuario=$(w)

hora_actual=$(date "+%H:%M:%S")

historial="${hora_actual} up ${info_sistema}, USER TTY FROM LOGIN@ IDLE JCPU PCPU WHAT ${info_usuario}"

echo "$historial" >> /var/log/historial.txt

