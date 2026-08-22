# API

> Contrato da API do projecto. Se existir uma especificação OpenAPI/GraphQL
> formal, ligue para ela aqui e mantenha este ficheiro como resumo humano.

## Autenticação

- Método: (ex.: Bearer token JWT, API key, OAuth2)
- Como obter credenciais de teste:

## Convenções

- Base URL: `https://api.exemplo.com/v1`
- Formato de resposta: JSON
- Formato de erro:
  ```json
  { "error": { "code": "string", "message": "string" } }
  ```
- Paginação: `?page=1&limit=20`, resposta inclui `meta.total`, `meta.page`

## Endpoints

### `GET /recurso`
Descrição, parâmetros, exemplo de resposta.

### `POST /recurso`
Descrição, corpo esperado, exemplo de resposta.

<!-- Continue documentando cada endpoint ou ligue para a spec OpenAPI gerada -->
