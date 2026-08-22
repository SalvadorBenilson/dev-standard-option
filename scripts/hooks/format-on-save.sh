#!/usr/bin/env bash
# Hook PostToolUse (Edit|Write): formata o ficheiro alterado com o formatter
# disponível no projecto. Silencioso se nenhum formatter conhecido existir.
set -euo pipefail

FILE="${CLAUDE_TOOL_INPUT_FILE_PATH:-}"
[ -z "$FILE" ] && exit 0
[ ! -f "$FILE" ] && exit 0

case "$FILE" in
  *.js|*.jsx|*.ts|*.tsx|*.json|*.css|*.md)
    command -v npx >/dev/null 2>&1 && [ -f package.json ] && npx --no-install prettier --write "$FILE" 2>/dev/null || true
    ;;
  *.py)
    command -v black >/dev/null 2>&1 && black -q "$FILE" 2>/dev/null || true
    ;;
  *.go)
    command -v gofmt >/dev/null 2>&1 && gofmt -w "$FILE" 2>/dev/null || true
    ;;
  *.rs)
    command -v rustfmt >/dev/null 2>&1 && rustfmt "$FILE" 2>/dev/null || true
    ;;
  *.java)
    command -v google-java-format >/dev/null 2>&1 && google-java-format -i "$FILE" 2>/dev/null || true
    ;;
esac

exit 0
