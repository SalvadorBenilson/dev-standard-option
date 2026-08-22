# Runbook Operacional

Guia prático para operar o sistema em produção — deploy, rollback, incidentes
e manutenção.

## Deploy

Ver skill `.claude/skills/deploy/SKILL.md` e workflows em
`.github/workflows/deploy-*.yml`. Resumo:

1. Merge para `main` com CI verde
2. Criar tag `vX.Y.Z`
3. Push da tag despoleta o deploy automático
4. Validar com `scripts/server/health-check.sh`

## Rollback

1. Identificar a última tag estável
2. Correr `scripts/server/rollback.sh <versão-anterior>`
3. Validar com `scripts/server/health-check.sh`
4. Registar o incidente (ver secção abaixo)

## Manutenção do servidor

- `scripts/server/backup.sh` — backup da base de dados e ficheiros críticos
  (agendado via `.github/workflows/server-maintenance.yml`)
- `scripts/server/health-check.sh` — verifica disponibilidade e responde com
  código de saída não-zero em falha (usado em CI e monitorização)
- Rotação de logs e limpeza de espaço em disco: ver
  `.github/workflows/server-maintenance.yml`

## Gestão de incidentes

1. Declarar o incidente (canal de comunicação da equipa)
2. Mitigar primeiro (rollback se necessário), diagnosticar depois
3. Após resolução, escrever um post-mortem curto: o que aconteceu, impacto,
   causa raiz, acções de prevenção
4. Guardar o post-mortem em `docs/incidents/AAAA-MM-DD-descricao.md`

## Contactos

| Papel | Nome | Contacto |
|---|---|---|
| Responsável técnico | | |
| Infra / DevOps | | |
| Escalonamento fora de horário | | |
