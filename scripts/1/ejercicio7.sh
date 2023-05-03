#!/bin/sh

clear

echo "Escoge una opción:"
echo "1. Crear Directorio"
echo "2. Borrar Directorio"
echo "3. Copiar archivo a directorio"
echo "4. Salir"

read opcion

case $opcion in
	1)
		read -p "Introduce el nombre del directorio" directorio
		mkdir $directorio;;
	2)
		read -p "Introduce el nombre del directorio" directorio
		rm -rf $directorio;;
	3)
		read -p "Introduce el nombre del archivo" archivo
		read -p "Introduce el nombre del directorio" directorio
		cp  $archivo $directorio;;

esac
