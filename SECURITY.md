# Política de Segurança

## Versões suportadas

| Versão | Suportada |
|---|---|
| última `main` | ✅ |
| versões anteriores | ❌ (excepto se indicado no CHANGELOG) |

## Reportar uma vulnerabilidade

**Não abra uma issue pública para vulnerabilidades de segurança.**

Reporte de forma privada para **security@vanguardit.ao** com:

- Descrição da vulnerabilidade e impacto potencial
- Passos para reproduzir (PoC, se possível)
- Versão/commit afectado

Compromisso de resposta:

- Confirmação de recepção em até **2 dias úteis**
- Avaliação inicial e plano de correcção em até **7 dias úteis**
- Divulgação coordenada após a correcção estar disponível

## Boas práticas aplicadas neste projecto

- Segredos nunca em código-fonte — apenas em variáveis de ambiente/secrets do
  CI
- Dependências verificadas automaticamente (`.github/dependabot.yml` +
  workflow de `dependency-review`)
- Análise estática de segurança via CodeQL (`.github/workflows/codeql.yml`)
- Revisão de código obrigatória antes de merge para `main`
