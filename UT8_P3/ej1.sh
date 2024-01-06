#!/bin/bash
echo "Últimos usuarios que iniciaron sesión:"
last -i | awk '{print $1, $3}' | grep -E '\b([0-9]{1,3}.){3}[0-9]{1,3}\b'
