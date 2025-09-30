#!/bin/bash

# Verificar que se pase un archivo
if [ $# -ne 1 ]; then
    echo "Uso: $0 archivo.pdf"
    exit 1
fi

ARCHIVO="$1"

# Crear archivos vacíos
> original.txt
> traduccion.txt

# --- Paso 1: Extraer texto en japonés del manga ---
# Prompt para Gemini (según tus instrucciones)
PROMPT_EXTRACCION="Puedes extraer todo el texto en japones que esta dentro del archivo $ARCHIVO dentro de este directorio, recuerda que tienes que la forma de lectura es de derecha a izquierda, ademas omite los Furiganas los cuales suelen ser un texto de apoyo de lectura, en la parte derecha de cada kanji, recuerda que se trata de un manga y tienes que dividir cada globo en una linea no cada columna"

# Ejecutar Gemini y guardar resultado en original.txt
gemini file "$ARCHIVO" "$PROMPT_EXTRACCION" > original.txt

# --- Paso 2: Traducir el texto extraído ---
PROMPT_TRADUCCION="Dentro del directorio de donde estamos esta un documento llamando original.txt puedes traducir al espanol y guardarla la salida en el archivo traduccion.txt, recuerda que se trata de un dialogo y el tener cosistencia y coherencia la traduccion"

# Ejecutar Gemini y guardar la traducción
gemini "$PROMPT_TRADUCCION" > traduccion.txt

echo "Proceso completado!"
echo "Texto original en japonés: original.txt"
echo "Traducción al español: traduccion.txt"
