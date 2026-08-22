#!/usr/bin/env bash
# Rollback para uma tag/versão anterior específica.
#
# Uso: ./rollback.sh <host> <utilizador> <caminho-remoto> <tag-anterior> [comando-de-restart]
set -euo pipefail

HOST="${1:?Uso: $0 <host> <utilizador> <caminho-remoto> <tag-anterior> [comando-de-restart]}"
USER_="${2:?}"
REMOTE_PATH="${3:?}"
TARGET_TAG="${4:?É obrigatório indicar a tag/versão para a qual fazer rollback}"
RESTART_CMD="${5:-sudo systemctl restart app}"

echo "==> A reverter para $TARGET_TAG em $USER_@$HOST:$REMOTE_PATH"
ssh -o StrictHostKeyChecking=no "$USER_@$HOST" "cd '$REMOTE_PATH' && git fetch --tags && git checkout '$TARGET_TAG'"

echo "==> A reiniciar serviço"
ssh -o StrictHostKeyChecking=no "$USER_@$HOST" "$RESTART_CMD"

echo "==> Rollback para $TARGET_TAG concluído. Valide com health-check.sh"
