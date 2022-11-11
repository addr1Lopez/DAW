#!/bin/bash
grep -w "$2" /etc/hosts >> /dev/null

if [ $? -eq 0 ]
then
echo "El dominio $2 ya existe"
else
echo "$1 $2" >> /etc/hosts
echo "Se ha añadido el dominio $2 correctamente"
fi
