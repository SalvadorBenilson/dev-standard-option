#!/usr/bin/env bash
# Backup da base de dados e de ficheiros críticos da aplicação.
# Pensado para correr DENTRO do servidor de destino (chamado via SSH pelo
# workflow server-maintenance.yml, ou manualmente).
#
# Uso: ./backup.sh <caminho-da-aplicação> [dias-de-retenção]
set -euo pipefail

APP_PATH="${1:?Uso: $0 <caminho-da-aplicação> [dias-de-retenção]}"
RETENTION_DAYS="${2:-14}"
BACKUP_DIR="${APP_PATH}/backups"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$BACKUP_DIR"

echo "==> Backup da base de dados"
# Ajuste ao motor de base de dados real do projecto:
# PostgreSQL:
#   pg_dump "$DATABASE_URL" | gzip > "$BACKUP_DIR/db-$TIMESTAMP.sql.gz"
# MySQL:
#   mysqldump --single-transaction -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" | gzip > "$BACKUP_DIR/db-$TIMESTAMP.sql.gz"
# MongoDB:
#   mongodump --uri="$DATABASE_URL" --archive="$BACKUP_DIR/db-$TIMESTAMP.archive" --gzip
echo "(placeholder — descomente o comando do motor de BD usado no projecto)"

echo "==> Backup de ficheiros críticos (uploads, configuração)"
if [ -d "$APP_PATH/storage" ]; then
  tar -czf "$BACKUP_DIR/storage-$TIMESTAMP.tar.gz" -C "$APP_PATH" storage
fi

echo "==> Removendo backups com mais de $RETENTION_DAYS dias"
find "$BACKUP_DIR" -type f -mtime "+$RETENTION_DAYS" -delete

echo "==> Backup concluído: $BACKUP_DIR"
