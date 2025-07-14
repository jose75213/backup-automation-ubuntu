#!/bin/bash

# backup.sh - Script para hacer copias de seguridad comprimidas en Ubuntu

# Parámetros de entrada
ORIGIN=$1         # Carpeta a respaldar
DESTINATION=$2    # Carpeta donde guardar el backup
DATE=$(date +%Y%m%d-%H%M%S)        # Fecha actual en formato YYYYMMDD-HHMMSS
FILENAME="backup-$DATE.tar.gz"    # Nombre del archivo de backup
LOGFILE="./backup.log"            # Log del script (puedes cambiar la ruta)

# Comprobación de parámetros
if [[ -z "$ORIGIN" || -z "$DESTINATION" ]]; then
  echo "❌ Uso: $0 /ruta/origen /ruta/destino"
  exit 1
fi

# Comprobación si la ruta de origen existe
if [[ ! -d "$ORIGIN" ]]; then
  echo "❌ Ruta de origen inválida: $ORIGIN"
  exit 2
fi

# Crear directorio de destino si no existe
mkdir -p "$DESTINATION"

# Ejecutar el backup
tar -czf "$DESTINATION/$FILENAME" -C "$ORIGIN" . 2>>"$LOGFILE"

# Verificar si el backup fue exitoso
if [[ $? -eq 0 ]]; then
  echo "✅ Backup creado: $DESTINATION/$FILENAME"
  echo "$(date '+%Y-%m-%d %H:%M:%S') Backup OK -> $FILENAME" >> "$LOGFILE"
else
  echo "❌ Error al crear el backup"
  echo "$(date '+%Y-%m-%d %H:%M:%S') Error en backup" >> "$LOGFILE"
fi
