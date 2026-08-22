#!/usr/bin/env bash
# Hook PreToolUse (Bash): bloqueia comandos que tentem imprimir/enviar
# ficheiros de segredos comuns (.env, chaves privadas). Ajuste os padrões
# conforme necessário para o projecto.
set -euo pipefail

CMD="${CLAUDE_TOOL_INPUT_COMMAND:-}"

if echo "$CMD" | grep -Eq '\.(env)(\.[a-zA-Z]+)?[^.]|id_rsa|\.pem\b|\.p12\b'; then
  echo "Bloqueado: o comando parece referenciar um ficheiro de segredos. Revise antes de continuar." >&2
  exit 1
fi

exit 0
