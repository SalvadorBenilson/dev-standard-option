# Regras — Segurança

> Carregado ao tocar em autenticação, autorização, dados sensíveis ou
> dependências externas. Aplica-se a qualquer stack.

## Princípios

- Menor privilégio: cada componente/serviço só acede ao que precisa
- Nunca confiar em input do utilizador sem validação/sanitização
- Segredos apenas em variáveis de ambiente ou cofre de segredos (nunca em
  código ou histórico de commits)

## Checklist ao introduzir código novo

- [ ] Input validado e sanitizado nas fronteiras (API, formulários, filas)
- [ ] Queries parametrizadas (sem SQL injection)
- [ ] Saída escapada correctamente (sem XSS)
- [ ] Autenticação e autorização verificadas por endpoint/acção
- [ ] Nenhum segredo, chave ou credencial commitado
- [ ] Dependências novas revistas (licença, manutenção activa, CVEs
      conhecidos)

## Automação

- `dependabot.yml` mantém dependências actualizadas
- `codeql.yml` corre análise estática em cada PR
- `dependency-review.yml` bloqueia PRs que introduzam vulnerabilidades
  conhecidas
