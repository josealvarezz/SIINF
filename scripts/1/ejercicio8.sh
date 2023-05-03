#!/bin/sh

#clear (lo desactivo para ver los ejemplos más fácilmente)

echo "CALCULADORA"

read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2 

echo "Escoge una opción:"
echo "1. SUMA"
echo "2. RESTA"
echo "3. DIVISIÓN"
echo "4. MULTIPLICACIÓN"
echo "5. SALIR"

read opcion

case $opcion in
	1)
		sum=$((num1 + num2))
		echo "La suma de $num1 y $num2 es $sum";;
	2)
		res=$((num1 -  num2))
		echo "La resta de $num1 y $num2 es $res";;
	3)
		div=$((num1 / num2))
		echo "La división de $num1 y $num2 es $div";;
	4)
		mul=$((num1 * num2))
		echo "La multiplicación de $num1 y $num2 es $mul";;
	*)
		echo "Saliendo del programa...";;
esac
