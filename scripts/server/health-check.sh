#!/usr/bin/env bash
# Verifica se o serviço responde correctamente. Uso:
#   ./health-check.sh https://exemplo.com/health
# Sai com código 0 se saudável, 1 caso contrário. Pensado para ser chamado
# tanto localmente como a partir de workflows de CI/CD.
set -euo pipefail

URL="${1:-${APP_URL:-}}"
TIMEOUT="${2:-10}"

if [ -z "$URL" ]; then
  echo "Uso: $0 <url> [timeout_segundos]" >&2
  exit 1
fi

STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time "$TIMEOUT" "$URL" || echo "000")

if [ "$STATUS" -ge 200 ] && [ "$STATUS" -lt 400 ]; then
  echo "OK: $URL respondeu com HTTP $STATUS"
  exit 0
else
  echo "FALHA: $URL respondeu com HTTP $STATUS" >&2
  exit 1
fi
