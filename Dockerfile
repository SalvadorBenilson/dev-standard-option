# ==== Vanguard IT — Dockerfile genérico multi-stage ====
# Este ficheiro é um ESQUELETO. Escolha a imagem base da linguagem do
# projecto e ajuste os passos de build/instalação. Mantém-se o padrão de
# multi-stage build (imagem final mínima) independentemente da stack.
#
# Exemplos de imagem base por stack:
#   Node.js  -> node:20-alpine
#   Python   -> python:3.12-slim
#   Java     -> eclipse-temurin:21-jdk-alpine (build) + eclipse-temurin:21-jre-alpine (run)
#   Go       -> golang:1.22-alpine (build) + gcr.io/distroless/static (run)
#   .NET     -> mcr.microsoft.com/dotnet/sdk:8.0 (build) + mcr.microsoft.com/dotnet/aspnet:8.0 (run)
#   PHP      -> php:8.3-fpm-alpine

# ---- Stage 1: build ----
FROM alpine:3.20 AS build
WORKDIR /app

# Copie apenas os manifestos de dependências primeiro (cache de camadas)
COPY . .

# Instale dependências e compile/empacote a aplicação aqui
# RUN <comando de instalação>
# RUN <comando de build>

# ---- Stage 2: runtime ----
FROM alpine:3.20 AS runtime
WORKDIR /app

# Utilizador não-root por segurança
RUN addgroup -S app && adduser -S app -G app
USER app

COPY --from=build /app .

EXPOSE 3000

# Healthcheck genérico — ajuste o endpoint/porta ao projecto
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://localhost:3000/health || exit 1

# Ajuste ao comando real de arranque da aplicação
CMD ["./start.sh"]
