#!/bin/bash

clear
while true; do
    line=$(shuf -n 1 mazo)
    question=${line%|*}
    answer=${line#*|}
    echo $question
    read user_answer
    if [[ ${user_answer,,} == ${answer,,} ]]; then
        echo "Correcto"
    else
        echo "Incorrecto"
    fi
    echo "¿Quieres continuar con el juego? (S/N)"
    read continue_game
    if [[ ${continue_game,,} != "s" ]]; then
        break
    fi
done
