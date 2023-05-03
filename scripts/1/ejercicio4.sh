#!/bin/sh

clear
read -p "Introduce una letra:" letra

case $letra in
	e|E)
		echo "Enero";;
	f|F)
		echo "Febrero";;
	m|M)
		echo "Marzo"
		echo "Mayo";;
	a|A)
		echo "Abril"
		echo "Agosto";;
	j|J)
		echo "Junio"
		echo "Julio";;
	s|S)
		echo "Septiembre";;
	o|O)
		echo "Octubre";;
	n|N)
		echo "Noviembre";;
	d|D)
		echo "Diciembre";;
	*) #Por defecto
		echo "No coincide con ningún mes";;
	esac
