#/bin/sh

clear

muestra_menu() {
while true; do
echo "-----------------------------------------"
echo "LISTADO DE PRODUCTOS: "
echo "-----------------------------------------"
echo "1. INCLUIR PRODUCTO."
echo "2. VISUALIZAR PRODUCTO."
echo "3. ELIMINAR UN PRODUCTO."
echo "4. BORRAR EL CONTENIDO."
echo "5. SALIR."
read -p "Escoge una opción del menú: " opcion

case $opcion in
        1) #INCLUIR PRODUCTO
                clear
                incluir_producto;;

        2) #VISUALIZAR PRODUCTO
                clear
                visualizar_producto;;

        3) #ELIMINAR UN PRODUCTO
                clear
		eliminar_producto;;

        4) #BORRAR EL CONTENIDO
                clear
		borrar_contenido;;

        5) #SALIR
                exit 0;;
	esac
done
}

#FUNCIONES
busca_fichero() {
 read -p "Introduce el nombre del fichero de productos: " nombrefichero

        if [ -f "$nombrefichero" ]; then
		muestra_menu #Si existe el archivo, se muestra el menú. Si no existe, se termina el proceso.
        else
                echo "El fichero no existe."
                exit
        fi
}

incluir_producto() {
		read -p "Introduce el código de referencia del producto: " referencia
		read -p "Introduce el nombre del producto: " nombreproducto
		read -p "Introduce el precio del producto: " precio
		echo "$referencia:$nombreproducto:$precio" >> $nombrefichero
}

visualizar_producto() {
	cat $nombrefichero
}

eliminar_producto() {
	read -p "Introduce la referencia del producto a eliminar: " referencia
	if grep -q "^$referencia:" "$nombrefichero"; then #Si existe una línea que comienza con la referencia dada...
		sed -i "/^$referencia:/d" "$nombrefichero" #se elimina esa línea
		echo "El producto con la referencia $referencia se ha eliminado con éxito."
	else
		echo "No se encontró ningún producto con la referencia $referencia"
	fi
}

borrar_contenido() {
	read -p "¿Estás seguro de que quieres eliminar los contenidos del archivo? (S/N): "  respuesta
	if [ "$respuesta" = "S" ] || [ "$respuesta" = "s" ]; then
		truncate -s 0 $nombrefichero #El tamaño del archivo se asigna a 0 bytes, lo que hace que borre todos sus contenidos.
					     #También se podría haber hecho asignando un espacio vacío al archivo (> $nombrefichero)
		echo "Se borraron los contenidos del archivo"
	else
		echo "Borrado cancelado. Volviendo al menú"
	fi
}

busca_fichero #No es necesario añadir más funciones, pues todas se encuentran anidadas a partir de esta. ESta, digamos, es la que da comienzo a todo el programa.
