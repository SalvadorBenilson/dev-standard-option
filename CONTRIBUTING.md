# Guia de Contribuição

Obrigado por contribuir para este projecto da Vanguard IT. Este guia aplica-se
independentemente da linguagem/stack usada no projecto.

## Fluxo de trabalho

1. Crie uma branch a partir de `main`/`develop`:
   - `feature/<descrição-curta>` para novas funcionalidades
   - `fix/<descrição-curta>` para correcções de bugs
   - `chore/<descrição-curta>` para manutenção (deps, CI, docs)
2. Faça commits pequenos e descritivos seguindo
   [Conventional Commits](https://www.conventionalcommits.org/):
   - `feat: adiciona autenticação OAuth`
   - `fix: corrige cálculo de totais no carrinho`
   - `docs: actualiza README de instalação`
   - `chore: actualiza dependências`
3. Garanta que os testes e o lint passam localmente antes de abrir PR.
4. Abra um Pull Request usando o template em
   `.github/PULL_REQUEST_TEMPLATE.md`.
5. Pelo menos 1 aprovação de um code owner (ver `.github/CODEOWNERS`) e CI
   verde são obrigatórios antes de merge.
6. Prefira `squash merge` para manter o histórico de `main` limpo.

## Código

- Siga as convenções descritas em `CLAUDE.md` e nas regras aplicáveis em
  `.claude/rules/`.
- Não introduza abstrações ou dependências não pedidas pela tarefa.
- Escreva testes para qualquer comportamento novo ou corrigido.
- Não commit segredos, chaves de API ou credenciais — use `.env` (nunca
  versionado) com base em `.env.example`.

## Reportar bugs / pedir funcionalidades

Use os templates em `.github/ISSUE_TEMPLATE/`.

## Segurança

Para vulnerabilidades de segurança, siga o processo em `SECURITY.md` — não
abra uma issue pública.
