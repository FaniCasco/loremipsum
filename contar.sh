#!/bin/bash

# Itera sobre cada archivo que comienza con "loremipsum-" y termina en ".txt"
for file in loremipsum-*.txt; do
  # Verifica si el archivo existe antes de procesarlo
  if [ -f "$file" ]; then
    # Usa 'wc -l' para contar el número de líneas.
    # El '< "$file"' redirige el contenido del archivo a la entrada de 'wc'.
    lines=$(wc -l < "$file")
    # Imprime el resultado en el formato solicitado
    echo "$file tiene $lines líneas."
  fi
done
