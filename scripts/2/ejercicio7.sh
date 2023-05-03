#!/bin/bash

#clear
read -p "Introduce el nombre del archivo: " archivo

#Comprobamos si existe
if [[ ! -e "$archivo" ]]; then
	echo "El archivo $archivo no existe"
	exit 1
fi

echo "1. Mostrar el contenido"
echo "2. Crear un duplicado"
echo "3. Mover"
echo "4. Copiar"
echo "5. Borrar"
read -p "Elige una opción: " opcion

case $opcion in
	1)
		cat "$archivo";;

	2)
		read -p "Introduce el nombre del archivo una vez duplicado: " duplicado
		cp "$archivo" "$duplicado"
		echo "Se ha creado el archivo duplicado $duplicado";;

	3)
		read -p "Introduce la nueva ruta del archivo: " ruta
		mv "$archivo" "$ruta"
		echo "Se ha movido el archivo a $ruta";;

	4)
		read -p "Introduce la ruta donde quieres copiar el archivo: " ruta
		cp "$archivo" "ruta"
		echo "Se ha copiado el archivo a $ruta";;

	5)
		rm "$archivo"
		echo "Se ha borrado el archivo $archivo";;
esac
