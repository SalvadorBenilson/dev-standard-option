# Arquitectura

> Preencha com a arquitectura real do projecto. Estrutura sugerida abaixo.

## Visão geral

Diagrama de alto nível dos componentes (frontend, backend, base de dados,
filas, serviços externos) e como comunicam.

```
[Cliente] -> [API / Backend] -> [Base de Dados]
                 |
                 v
          [Serviços externos]
```

## Componentes

### Frontend
- Stack:
- Responsabilidades:

### Backend / API
- Stack:
- Responsabilidades:

### Base de dados
- Motor:
- Estratégia de migrações:

### Infra-estrutura
- Onde corre (cloud/servidor dedicado):
- Como é feito o deploy (ver `.github/workflows/`):
- Ambientes existentes (dev, staging, produção):

## Decisões arquitecturais

Ver [adr/](adr) para o histórico detalhado de decisões e alternativas
consideradas.

## Diagramas adicionais

Adicione aqui diagramas de sequência, fluxos de dados ou modelo de dados
conforme necessário.
