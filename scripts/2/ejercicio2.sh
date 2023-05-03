#!/bin/bash

clear
numero=$((1 + RANDOM % 10))
read -p "Introduce un número entre 1 y 10: " input

if [ $input -lt 1 ] || [ $input -gt 10 ]; then
        echo "Por favor, introduce un valor entre 1 y 10"
else 
        if [ $input -lt $numero ]; then
                read -p "El número secreto es mayor, introduce otro: " num
                if [ $num != $numero ]; then
                        echo "Inténtalo de nuevo en otro momento."
			else echo "¡Has acertado!"
                fi
        elif [ $input -gt $numero ]; then
                read -p "El número secreto es menor, introduce otro: " num
                if [ $num != $numero ]; then
                        echo "Inténtalo de nuevo en otro momento."
			else echo "¡Has acertado!"
                fi
        elif [ $input -eq $numero ]; then
                echo "¡Has acertado!"
        fi
fi

