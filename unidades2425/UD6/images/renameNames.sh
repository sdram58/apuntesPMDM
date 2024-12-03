#!/bin/bash

# Definir el directorio donde se encuentran los archivos
DIRECTORIO="."

# Cambiar a ese directorio
cd "$DIRECTORIO" || exit

# Renombrar archivos que empiecen con "ud8-"
for archivo in ud3-*; do
    # Verificar que el archivo exista
    if [[ -f "$archivo" ]]; then
        # Generar el nuevo nombre de archivo reemplazando "ud3-" por "ud6-"
        nuevo_nombre="${archivo/ud3-/ud6-}"
        # Renombrar el archivo
        mv "$archivo" "$nuevo_nombre"
        echo "Renombrado: $archivo -> $nuevo_nombre"
    fi
done
