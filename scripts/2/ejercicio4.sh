#!/bin/sh

clear
echo "Selecciona de qué tipo de figura quieres calcular el área: "
echo "1. Cuadrado"
echo "2. Rectángulo"
echo "3. Triángulo"
read opcion

case $opcion in
	1)
		read -p "Introduce la longitud de algún lado del cuadrado: " lado
		area=$((lado * lado))
		echo "El área del cuadrado es $area";;

	2)
		read -p "Introduce el ancho del rectángulo: " ancho
		read -p "Introduce el alto del rectángulo: " alto
		area=$((ancho * alto))
		echo "El área del rectángulo es $area";;

	3)
		read -p "Introduce el ancho del triángulo: " ancho
		read -p "Introduce el alto del triángulo: " alto
		area=$((ancho * alto /  2))
		echo "El área del triángulo es $area";;

	*)
		echo "Opción no válida";;
esac
