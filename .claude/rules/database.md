# Regras — Base de Dados

> Carregado ao trabalhar em esquema, queries ou migrações.

## Migrações

- Toda a alteração de esquema via ficheiro de migração versionado — nunca
  alterar o esquema directamente em produção
- Migrações devem ser reversíveis sempre que possível (`up`/`down`)
- Testar migrações contra uma cópia de dados representativa antes de aplicar
  em produção

## Modelagem

- Chaves primárias e estrangeiras explícitas, com índices nas colunas usadas
  em `WHERE`/`JOIN`
- Nomes de tabelas/colunas em `snake_case`, consistentes em todo o esquema
- Evitar `NULL` implícito com significado de negócio — preferir valores
  explícitos ou colunas separadas

## Performance e segurança

- Nenhuma query concatenada com input do utilizador — usar sempre queries
  parametrizadas/ORM
- Analisar `EXPLAIN` em queries críticas antes de merge
- Backups automáticos e testados periodicamente (ver
  `scripts/server/backup.sh` e `.github/workflows/server-maintenance.yml`)
