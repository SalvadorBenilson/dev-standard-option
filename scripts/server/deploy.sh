#!/usr/bin/env bash
# Deploy genérico via SSH: liga ao servidor, actualiza o código e reinicia o
# serviço. Serve de referência/fallback para uso manual — os workflows em
# .github/workflows/deploy-*.yml automatizam isto por linguagem.
#
# Uso: ./deploy.sh <host> <utilizador> <caminho-remoto> [comando-de-restart]
set -euo pipefail

HOST="${1:?Uso: $0 <host> <utilizador> <caminho-remoto> [comando-de-restart]}"
USER_="${2:?}"
REMOTE_PATH="${3:?}"
RESTART_CMD="${4:-sudo systemctl restart app}"

echo "==> A actualizar código em $USER_@$HOST:$REMOTE_PATH"
ssh -o StrictHostKeyChecking=no "$USER_@$HOST" "cd '$REMOTE_PATH' && git fetch --tags && git checkout \"\$(git describe --tags --abbrev=0)\""

echo "==> A reiniciar serviço"
ssh -o StrictHostKeyChecking=no "$USER_@$HOST" "$RESTART_CMD"

echo "==> Deploy concluído"
