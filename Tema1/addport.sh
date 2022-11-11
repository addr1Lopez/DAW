#!/bin/bash
grep "Listen $1" /etc/apache2/ports.conf >> /dev/null

if [ $? -eq 0 ]
then
echo Ese puerto ya existe
else
echo "Listen $1" >> /etc/apache2/ports.conf
echo "Se ha añadido el dominio $1 con IP $2"
fi
