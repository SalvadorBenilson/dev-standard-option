# Regras — API

> Carregado ao trabalhar em contratos de API (REST, GraphQL, gRPC).

## Contrato

- Versionar a API (`/v1/...`) e documentar breaking changes no `CHANGELOG.md`
- Manter a especificação (OpenAPI/GraphQL schema) em `docs/api.md` ou ficheiro
  dedicado, sempre sincronizada com o código
- Respostas de erro num formato consistente: `{ "error": { "code", "message" } }`

## Design

- Nomes de recursos no plural (`/users`, `/orders`)
- Usar os métodos HTTP correctamente (GET idempotente, POST cria, PUT/PATCH
  actualiza, DELETE remove)
- Paginação obrigatória em listas que podem crescer sem limite

## Segurança

- Autenticação/autorização verificada em todos os endpoints não-públicos
- Rate limiting em endpoints públicos ou sensíveis
- Nunca devolver mais dados do que o necessário (evitar over-fetching de
  campos sensíveis)
