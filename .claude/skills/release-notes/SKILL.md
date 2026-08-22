---
name: release-notes
description: Gera notas de lançamento a partir dos commits/PRs desde a última tag, no formato Keep a Changelog, e actualiza CHANGELOG.md.
---

# Release Notes

## Passos

1. Identificar a última tag publicada (`git describe --tags --abbrev=0`).
2. Listar commits/PRs desde essa tag até `HEAD`.
3. Agrupar por tipo usando o prefixo Conventional Commits:
   - `feat:` → Adicionado
   - `fix:` → Corrigido
   - `chore`/`refactor`/`docs` relevantes → Alterado
   - remoções explícitas → Removido
4. Escrever a secção correspondente em `CHANGELOG.md` sob a nova versão.
5. Gerar um resumo em linguagem simples (não técnica) para stakeholders,
   quando pedido.

## Quando usar

Antes de cada deploy de produção, ou quando pedido um resumo do que mudou
desde a última versão.
