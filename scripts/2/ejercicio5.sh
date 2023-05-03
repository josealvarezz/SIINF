#!/bin/bash

clear
#Comprobamos que se han pasado tres parámetros
if [ $# -ne 3 ]; then
  echo "Debes pasar tres números como parámetros."
  exit 1
fi

#Guardamos los parámetros en un array
numeros=("$@")

orden_mayor=($(echo "${numeros[@]}" | tr ' ' '\n' | sort -nr))

echo "${orden_mayor[@]}"

read -p "Presiona enter para continuar..."

orden_menor=($(echo "${numeros[@]}" | tr ' ' '\n' | sort -n))

echo "${orden_menor[@]}"
