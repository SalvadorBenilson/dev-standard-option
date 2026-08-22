# Onboarding — Ambiente de Desenvolvimento

## Pré-requisitos

- Git
- <runtime da linguagem, ex.: Node 20+, Python 3.12+, JDK 21, Go 1.22+, .NET 8>
- Docker + Docker Compose (opcional, para correr dependências localmente)

## Configuração inicial

```bash
git clone <url-do-repositório>
cd <projecto>
cp .env.example .env
# preencher .env com valores locais/de desenvolvimento
```

## Instalar dependências

```bash
<comando de instalação específico da stack>
```

## Correr localmente

```bash
docker compose up -d   # dependências (base de dados, etc.)
<comando para arrancar a aplicação>
```

## Correr testes

```bash
<comando de testes>
```

## Problemas comuns

- **Porta já em uso:** ajuste `APP_PORT` no `.env`
- **Erro de ligação à base de dados:** confirme que `docker compose up -d`
  está a correr e que `DATABASE_URL` no `.env` aponta para o serviço correcto
