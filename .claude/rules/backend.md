# Regras — Backend

> Carregado apenas quando se trabalha em código de servidor/serviços.

## Estrutura

- Separar camadas: rotas/controllers → serviços/casos de uso → acesso a
  dados
- Validação de entrada sempre na fronteira do sistema (API, filas)
- Erros tratados de forma consistente (formato de erro único na API)

## Configuração

- Toda a configuração via variáveis de ambiente (ver `.env.example`)
- Nunca hardcode credenciais, URLs de ambiente ou segredos

## Logging e observabilidade

- Logs estruturados (JSON) em produção
- Correlacionar pedidos com um `request_id`/`trace_id`
- Nunca logar dados sensíveis (senhas, tokens, dados pessoais)

## Testes

- Testes unitários para regras de negócio
- Testes de integração para endpoints e acesso a dados
