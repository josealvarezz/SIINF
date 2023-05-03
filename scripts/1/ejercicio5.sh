#!/bin/sh

clear
read -p "Introduce el primer número:" num1
read -p "Introduce el segundo número:" num2

sum=$((num1 + num2))
res=$((num1 - num2))
mul=$((num1 * num2))
div=$((num1 / num2))

echo "La suma de $num1 y $num2 es $sum"
echo "La resta de $num1 y $num2 es $res"
echo "La multiplicación de $num1 y $num2 es $mul"
echo "La división de $num1 y $num2 es $div"
