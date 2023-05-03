#!/bin/bash

clear
echo "Introduce tu edad:"
read edad

if [ $edad -lt 10 ]; then
  echo "Eres muy joven"
elif [ $edad -ge 10 ] && [ $edad -le 30 ]; then
  echo "Que mala edad tienes"
else
  echo "Que bien te veo"
fi

