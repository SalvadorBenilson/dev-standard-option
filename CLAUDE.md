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
backend/        # API, serviços, lógica de negócio (CLAUDE.md próprio)
frontend/       # UI / SPA / app mobile (CLAUDE.md próprio)
infra/          # infra como código, ambientes (CLAUDE.md próprio)
data/           # migrações, seeds, pipelines de dados (CLAUDE.md próprio)
docs/           # documentação do projecto
.github/        # CI/CD e templates
scripts/server/ # scripts de deploy e manutenção
```

Cada pasta de domínio (`backend/`, `frontend/`, `infra/`, `data/`) tem o seu
próprio `CLAUDE.md`, carregado apenas quando se trabalha ali. Nem todo
projecto precisa das quatro — apague as que não se aplicarem.

## Convenções da equipa

- Branches: `feature/<nome>`, `fix/<nome>`, `chore/<nome>`
- Commits: [Conventional Commits](https://www.conventionalcommits.org/)
- PRs exigem pelo menos 1 aprovação e CI verde antes de merge
- Segredos nunca em código — usar variáveis de ambiente (`.env`, GitHub Secrets)

## Regras e skills disponíveis

- `.claude/rules/` — carregadas por âmbito (frontend, backend, infra, API,
  base de dados, segurança)
- `.claude/skills/` — playbooks para deploy, release notes, auditoria SEO
- `.claude/agents/` — code-reviewer e security-auditor como sub-agentes isolados
