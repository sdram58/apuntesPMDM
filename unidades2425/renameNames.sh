#!/bin/bash

# Validar que se proporcionaron tres parámetros
if [[ $# -ne 3 ]]; then
    echo "Uso: $0 <DIRECTORIO> <SOURCE_NAME> <DEST_NAME>"
    exit 1
fi

# Asignar parámetros a variables
DIRECTORIO="$1"
SOURCE_NAME="$2"
DEST_NAME="$3"

# Cambiar al directorio proporcionado
cd "$DIRECTORIO" || { echo "No se pudo acceder al directorio: $DIRECTORIO"; exit 1; }

# Renombrar archivos que empiecen con "ud{SOURCE_NAME}-"
for archivo in "ud${SOURCE_NAME}-"*; do
    # Verificar que el archivo exista
    if [[ -f "$archivo" ]]; then
        # Generar el nuevo nombre de archivo reemplazando "ud{SOURCE_NAME}-" por "ud{DEST_NAME}-"
        nuevo_nombre="${archivo/ud${SOURCE_NAME}-/ud${DEST_NAME}-}"
        # Renombrar el archivo
        mv "$archivo" "$nuevo_nombre"
        echo "Renombrado: $archivo -> $nuevo_nombre"
    fi
done
