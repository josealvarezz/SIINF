#!/bin/sh

clear
read -p "¿Quién descubrió América?" respuesta

case $respuesta in
	[Cc]olon)
		echo "Es correcto";;
	*)
		echo "Es incorrecto";;
esac
