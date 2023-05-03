#!/bin/bash

clear
if [[ $# -ne 1 ]]; then
    echo "Uso: $0 <nombre del archivo>"
    exit 1
fi

archivo_agenda=$1

while true; do
    echo "AGENDA"
    echo "1. Buscar un nombre en la agenda."
    echo "2. Introducir un nuevo nombre."
    echo "3. Borrar un nombre de la agenda."
    echo "4. Mostrar alfabéticamente el contenido de $archivo_agenda."
    echo "5. Salir."
    echo "Elige una opción (1-5):"
    read opcion

    case $opcion in
        1)
            # Buscar un nombre en la agenda
            read -p "Introduzca nombre: " nombre
            grep -i "$nombre" $archivo_agenda
            ;;
        2)
            # Introducir un nuevo nombre en la agenda
            read -p  "Introduzca nombre: " nombre
            read -p "Introduzca dirección: " direccion
            read -p "Introduzca e-mail: " correo_electronico
            read -p "Introduzca teléfono: " telefono
            echo -e "$nombre\t$direccion\t$correo_electronico\t$telefono" >> $archivo_agenda
            echo "Entrada creada con éxito en el archivo $archivo_agenda"
            ;;
        3)
            # Borrar un nombre de la agenda
            read -p "Introduzca nombre a borrar: " nombre
            resultados_busqueda=$(grep -i "$nombre" $archivo_agenda)
            if [[ -z $resultados_busqueda ]]; then
                echo "No se encontró el nombre en la agenda"
                continue
            fi
            echo "$resultados_busqueda"
            echo "Seleccione entrada:"
            read numero_entrada
            entrada=$(echo "$resultados_busqueda" | sed "${numero_entrada}q;d")
            sed -i "/^${entrada}$/d" $archivo_agenda
            echo "Entrada borrada con éxito."
            ;;
        4)
            # Mostrar alfabéticamente el contenido de la agenda
            sort $archivo_agenda
            ;;
        5)
            # Salir del script
            echo "Adiós"
            exit 0
            ;;
        *)
            # Opción inválida
            echo "Opción inválida"
            ;;
    esac
done
