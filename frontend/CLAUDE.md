# CLAUDE.md — Frontend

> Contexto carregado apenas quando se trabalha dentro de `frontend/`.
> Complementa o `CLAUDE.md` da raiz — não repita aqui o que já está lá.

## Stack

- **Framework:** <preencher, ex.: React, Vue, Angular, mobile nativo>
- **Design system:** <ligar para Figma/Storybook do projecto>

## Comandos

```bash
# instalar dependências
<comando>

# correr localmente
<comando>

# testes
<comando>

# build de produção
<comando>
```

## Estrutura interna

```
frontend/
  src/
    components/   # componentes reutilizáveis
    pages/        # rotas/páginas
    hooks/        # hooks/composables partilhados
  tests/          # testes de componente e e2e
```

## Regras aplicáveis

- [.claude/rules/frontend.md](../.claude/rules/frontend.md) — componentes,
  estilo, acessibilidade, performance
- [.claude/rules/security.md](../.claude/rules/security.md) — sanitização de
  input, XSS

## Documentação relacionada

- [docs/architecture.md](../docs/architecture.md) — como o frontend integra
  com o backend
