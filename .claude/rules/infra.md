# Regras — Infra

> Carregado ao trabalhar em infra-estrutura como código, configuração de
> ambientes ou provisionamento (`infra/`).

## Infra como código

- Toda a infra-estrutura definida em código versionado — nunca alterar
  recursos directamente na consola do provedor cloud
- Alterações a recursos de produção passam por `plan`/`dry-run` revisto em PR
  antes de `apply`
- Módulos reutilizáveis em vez de duplicar configuração entre ambientes

## Ambientes

- Isolamento claro entre dev, staging e produção (contas/projectos/subscrições
  separadas sempre que possível)
- Nenhum recurso de produção acessível a partir de credenciais de
  desenvolvimento

## Segredos e acesso

- Segredos de infra-estrutura (chaves cloud, tokens) apenas em cofre de
  segredos ou GitHub Secrets — nunca em ficheiros de IaC
- Menor privilégio: cada pipeline/CI usa credenciais com o escopo mínimo
  necessário
- Rotação periódica de chaves de acesso e SSH

## Observabilidade

- Recursos críticos com alertas configurados (disponibilidade, uso de
  recursos, custos)
- Logs de infra-estrutura centralizados e retidos conforme política de
  compliance do projecto
