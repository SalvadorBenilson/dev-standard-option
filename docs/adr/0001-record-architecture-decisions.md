# 1. Registar decisões de arquitectura

Data: AAAA-MM-DD

## Estado

Aceite

## Contexto

Precisamos de registar as decisões arquitecturais importantes deste
projecto, para que a equipa (actual e futura) entenda não só *o que* foi
decidido mas *porquê*, e quais as alternativas consideradas.

## Decisão

Vamos usar Architecture Decision Records (ADR), guardados em `docs/adr/`,
numerados sequencialmente. Cada ADR segue o formato:

- **Estado** — proposto / aceite / substituído por ADR-NNNN
- **Contexto** — o problema ou força que motiva a decisão
- **Decisão** — o que foi decidido
- **Consequências** — o que fica mais fácil ou mais difícil como resultado

## Consequências

- Novas decisões técnicas relevantes devem gerar um novo ficheiro
  `NNNN-titulo-curto.md` nesta pasta
- ADRs antigos não são apagados, apenas marcados como substituídos
