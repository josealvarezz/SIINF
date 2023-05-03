#!/bin/sh

#clear (para ver ejemplos más claramente)

read -p "Introduce el precio del producto: " precio
read -p "Introduce el porcentaje de IVA (sin el %): " iva

if [ $precio -lt 0 ] || [ $iva -lt 0 ]; then
	echo "No puede haber valores negativos"
else
	pfinal=$((precio + (precio * iva) / 100))
	echo "El precio final es de $pfinal euros"
fi
