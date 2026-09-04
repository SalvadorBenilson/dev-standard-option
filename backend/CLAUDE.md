# CLAUDE.md — Backend

> Contexto carregado apenas quando se trabalha dentro de `backend/`.
> Complementa o `CLAUDE.md` da raiz — não repita aqui o que já está lá.

## Stack

- **Linguagem/framework:** <preencher>
- **Camadas:** rotas/controllers → serviços/casos de uso → acesso a dados
  (ver [.claude/rules/backend.md](../.claude/rules/backend.md))

## Comandos

```bash
# instalar dependências
<comando>

# correr localmente
<comando>

# testes
<comando>
```

## Estrutura interna

```
backend/
  src/            # código da aplicação
  tests/          # testes unitários e de integração
  migrations/     # se as migrações não estiverem em data/
```

## Regras aplicáveis

- [.claude/rules/backend.md](../.claude/rules/backend.md) — estrutura,
  configuração, logging, testes
- [.claude/rules/api.md](../.claude/rules/api.md) — contrato de API
- [.claude/rules/database.md](../.claude/rules/database.md) — acesso a dados
- [.claude/rules/security.md](../.claude/rules/security.md) — autenticação,
  validação de input

## Documentação relacionada

- [docs/api.md](../docs/api.md) — contrato de API detalhado
- [docs/architecture.md](../docs/architecture.md) — arquitectura geral
