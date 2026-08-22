# CLAUDE.md

> Preencha este ficheiro com o contexto específico do projecto. Mantenha-o
> curto — detalhe vive em `.claude/rules/` e `docs/`, carregados só quando
> relevantes.

## Visão geral

- **Projecto:** <nome>
- **Cliente / stakeholder:** <nome>
- **Stack principal:** <linguagem(s), framework(s)>
- **Objectivo do sistema em 1-2 frases**

## Arquitectura

Descreva os componentes principais e como comunicam (ex.: API REST, fila de
mensagens, base de dados, frontend SPA). Ligue para `docs/architecture.md`
para diagramas e detalhe.

## Comandos essenciais

```bash
# instalar dependências
<comando>

# correr localmente
<comando>

# testes
<comando>

# lint / formatação
<comando>

# build de produção
<comando>
```

## Mapa do repositório

```
src/            # código da aplicação
tests/          # testes automatizados
docs/           # documentação do projecto
.github/        # CI/CD e templates
scripts/server/ # scripts de deploy e manutenção
```

## Convenções da equipa

- Branches: `feature/<nome>`, `fix/<nome>`, `chore/<nome>`
- Commits: [Conventional Commits](https://www.conventionalcommits.org/)
- PRs exigem pelo menos 1 aprovação e CI verde antes de merge
- Segredos nunca em código — usar variáveis de ambiente (`.env`, GitHub Secrets)

## Regras e skills disponíveis

- `.claude/rules/` — carregadas por âmbito (frontend, backend, API, base de
  dados, segurança)
- `.claude/skills/` — playbooks para deploy, release notes, auditoria SEO
- `.claude/agents/` — code-reviewer e security-auditor como sub-agentes isolados
