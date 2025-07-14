# backup-automation-ubuntu
Script en Bash para automatizar copias de seguridad en sistemas Ubuntu. Permite programar backups de archivos o directorios críticos con compresión y registro de logs.

# Backup Automation Script for Ubuntu

Este repositorio contiene un script en Bash diseñado para automatizar copias de seguridad en sistemas Ubuntu. Permite realizar backups comprimidos de directorios importantes y guardarlos en una ubicación personalizada, con control de logs y fácil integración con cron.

## Características

- Copias de seguridad comprimidas (`.tar.gz`)
- Registro de logs con fecha y hora
- Soporte para múltiples rutas de origen
- Configuración de directorio de destino
- Fácil automatización con `cron`

## Requisitos

- Ubuntu 20.04 o superior
- Bash
- Permisos de escritura en el directorio de destino

## Uso

```bash
bash backup.sh /ruta/a/respaldar /ruta/de/destino
