# Vanguard IT — Padrão de Desenvolvimento

Este repositório é o **template base** usado em todos os projectos de desenvolvimento
da Vanguard IT. Define uma estrutura, convenções e automações que se aplicam a
**qualquer linguagem ou stack** — o padrão não assume Node, Python, Java, .NET, Go,
PHP ou outra tecnologia específica; cada workflow/regra é opcional e só se activa
quando faz sentido para o projecto em questão.

## Como usar

1. Copie esta estrutura para o novo repositório (ou use como template no GitHub:
   `Use this template`).
2. Apague os ficheiros `.github/workflows/deploy-*.yml` que não se aplicam à
   stack do projecto e mantenha apenas os relevantes.
3. Preencha `CLAUDE.md` com a arquitectura, comandos de build/test e mapa do
   repositório específicos do projecto.
4. Preencha `docs/architecture.md`, `docs/api.md` e o primeiro ADR em
   `docs/adr/`.
5. Actualize `.github/CODEOWNERS` com os donos reais do código.
6. Ajuste `LICENSE` conforme o acordo com o cliente (proprietário por defeito).

## O que este padrão define

| Camada | Onde | Propósito |
|---|---|---|
| Contexto sempre activo | [`CLAUDE.md`](CLAUDE.md) | Arquitectura, comandos, mapa do repo, convenções da equipa |
| Regras por âmbito | [`.claude/rules/`](.claude/rules) | Padrões carregados apenas quando relevantes (frontend, backend, API, BD, segurança) |
| Playbooks repetíveis | [`.claude/skills/`](.claude/skills) | Fluxos de trabalho reutilizáveis (deploy, release notes, auditoria SEO) |
| Especialistas isolados | [`.claude/agents/`](.claude/agents) | Revisão de código, auditoria de segurança, etc., sem poluir o contexto principal |
| Controlo determinístico | [`.claude/settings.json`](.claude/settings.json) | Hooks: formatação, testes, bloqueio de segredos |
| Documentação do projecto | [`docs/`](docs) | Arquitectura, decisões (ADR), runbook, onboarding |
| CI/CD e manutenção | [`.github/workflows/`](.github/workflows) | Deploy multi-linguagem, segurança, manutenção do servidor |
| Scripts operacionais | [`scripts/server/`](scripts/server) | Deploy, backup, rollback, health-check do servidor |

## Estrutura de pastas de domínio

O código do projecto separa-se por domínio, cada um com o seu próprio
`CLAUDE.md` (carregado apenas quando se trabalha nessa pasta):

| Pasta | Contém |
|---|---|
| `backend/` | API, serviços, lógica de negócio |
| `frontend/` | UI, SPA, app mobile |
| `infra/` | Infra como código, configuração por ambiente |
| `data/` | Migrações, seeds, pipelines de dados |

Apague as pastas que não se aplicarem ao projecto (ex.: um serviço sem
frontend próprio apaga `frontend/`). `.claude/rules/`, `.github/workflows/`
e `scripts/server/` mantêm-se centralizados na raiz e aplicam-se a todo o
repositório.

## Ficheiros de referência na raiz

- `CONTRIBUTING.md` — como contribuir, fluxo de branches e commits
- `CODE_OF_CONDUCT.md` — código de conduta da equipa/comunidade
- `SECURITY.md` — como reportar vulnerabilidades
- `CHANGELOG.md` — histórico de versões (formato Keep a Changelog)
- `.editorconfig` — estilo de código consistente entre editores
- `.gitignore` / `.gitattributes` — regras genéricas multi-linguagem
- `.env.example` — variáveis de ambiente esperadas (nunca commitar `.env`)
- `Dockerfile` / `docker-compose.yml` / `.dockerignore` — containerização genérica

## Orçamento de contexto

Mantenha o `CLAUDE.md` curto. Regras e skills devem carregar apenas quando
relevantes — não duplique aqui o que já está no código.
