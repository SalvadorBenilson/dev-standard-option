# CLAUDE.md — Data

> Contexto carregado apenas quando se trabalha dentro de `data/`.
> Complementa o `CLAUDE.md` da raiz — não repita aqui o que já está lá.

## O que vive aqui

Esquema, migrações, seeds e pipelines de dados. Se o projecto não tiver
pipelines de dados separados do backend (ETL, data warehouse, analytics),
esta pasta pode conter apenas `migrations/` e `seeds/`.

## Stack

- **Motor de base de dados:** <preencher, ex.: PostgreSQL, MySQL, MongoDB>
- **Ferramenta de migração:** <preencher, ex.: Flyway, Alembic, Prisma
  Migrate, Liquibase>
- **Pipelines de dados (se aplicável):** <preencher, ex.: Airflow, dbt>

## Comandos

```bash
# correr migrações
<comando>

# reverter última migração
<comando>

# popular dados de teste (seeds)
<comando>
```

## Estrutura interna

```
data/
  migrations/     # alterações de esquema versionadas (up/down)
  seeds/          # dados de teste/desenvolvimento
  pipelines/      # ETL/ELT, se aplicável
```

## Regras aplicáveis

- [.claude/rules/database.md](../.claude/rules/database.md) — migrações,
  modelagem, performance e segurança de queries

## Documentação relacionada

- [docs/architecture.md](../docs/architecture.md) — modelo de dados e
  integrações
