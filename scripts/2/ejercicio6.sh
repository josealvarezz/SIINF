#!/bin/bash

clear
echo "1. Pasar de euros a dólares"
echo "2. Pasar de dólares a euros"
read -p "Escoja una opción: " opcion

case $opcion in
        1)
                read -p "Introduzca cantidad en euros: " euros
                resultado=$(echo "scale=2; $euros * 1.35" | bc)
                echo "$resultado dólares";;

        2)
                read -p "Introduzca cantidad en dólares: "  dolares
                resultado=$(echo "scale=2; $dolares / 1.35" | bc)
                echo "$resultado euros";;
        *)
                echo "Escoge una opción válida";;
esac;

