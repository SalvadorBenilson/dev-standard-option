# CLAUDE.md — Infra

> Contexto carregado apenas quando se trabalha dentro de `infra/`.
> Complementa o `CLAUDE.md` da raiz — não repita aqui o que já está lá.

## O que vive aqui

Infra-estrutura como código e configuração de ambientes: Terraform/Pulumi,
Ansible, manifests Kubernetes, configs por ambiente. Os workflows de CI/CD
(`.github/workflows/`) e os scripts operacionais (`scripts/server/`)
mantêm-se centralizados na raiz — não duplique deploy/backup aqui, apenas a
definição da infra-estrutura que esses scripts operam.

## Stack

- **Provisionamento:** <preencher, ex.: Terraform, Pulumi, CloudFormation>
- **Orquestração:** <preencher, ex.: Kubernetes, Docker Swarm, ECS>
- **Ambientes:** dev, staging, produção — <detalhar diferenças>

## Comandos

```bash
# validar/plan
<comando, ex.: terraform plan>

# aplicar
<comando, ex.: terraform apply>
```

## Estrutura interna

```
infra/
  environments/
    dev/
    staging/
    production/
  modules/        # módulos reutilizáveis de IaC
```

## Regras aplicáveis

- [.claude/rules/infra.md](../.claude/rules/infra.md) — IaC, ambientes,
  segredos, provisionamento
- [.claude/rules/security.md](../.claude/rules/security.md) — menor
  privilégio, segredos nunca em código

## Documentação relacionada

- [docs/runbook.md](../docs/runbook.md) — deploy, rollback, manutenção do
  servidor
- [scripts/server/](../scripts/server) — scripts operacionais chamados pelos
  workflows
