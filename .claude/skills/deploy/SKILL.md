---
name: deploy
description: Playbook para preparar e executar o deploy do projecto (qualquer stack) — valida, faz build, e despoleta o workflow de deploy correcto em .github/workflows/.
---

# Deploy

Fluxo padrão para publicar uma nova versão em produção ou staging.

## Passos

1. Confirmar que a branch está actualizada com `main` e que o CI está verde.
2. Confirmar a versão a publicar e actualizar `CHANGELOG.md` (mover itens de
   "Não lançado" para a nova secção de versão).
3. Criar uma tag semântica (`vX.Y.Z`) seguindo [SemVer](https://semver.org/lang/pt-BR/).
4. Fazer push da tag — isto despoleta automaticamente o workflow de deploy
   correspondente à stack do projecto em `.github/workflows/deploy-*.yml`.
5. Acompanhar o workflow no separador Actions do GitHub.
6. Após o deploy, correr `scripts/server/health-check.sh` (ou confirmar que o
   workflow o fez) para validar que o serviço está saudável.
7. Se algo correr mal, seguir `scripts/server/rollback.sh` ou o passo de
   rollback documentado em `docs/runbook.md`.

## Quando usar

Sempre que for necessário publicar uma nova versão do projecto — não é
preciso repetir manualmente estes passos em cada conversa, basta invocar esta
skill.
