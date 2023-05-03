#!/bin/bash

read -p "Introduce un UID: " uid

usuario=$(grep "^.*:.*:$uid:" /etc/passwd | cut -d: -f1)

if [ -z "$usuario" ]; then
  echo "No se encontró ningún usuario con el UID $uid."
else
  echo "El UID $uid corresponde al usuario $usuario."
fi


