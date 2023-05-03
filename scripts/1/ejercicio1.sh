#!/bin/sh
clear
read -p "Introduce el nombre de usuario:" usuario
echo "Los procesos del usuario $usuario son:"
ps -u $usuario
