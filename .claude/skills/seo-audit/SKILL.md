---
name: seo-audit
description: Auditoria básica de SEO/performance para projectos com frontend web (meta tags, semântica HTML, Core Web Vitals, sitemap/robots).
---

# Auditoria de SEO

Só relevante para projectos com uma superfície web pública. Ignorar em
APIs/serviços internos.

## Checklist

- [ ] `<title>` e `meta description` únicos e descritivos por página
- [ ] Open Graph / Twitter Card configurados para partilha social
- [ ] HTML semântico (`h1` único por página, hierarquia de headings correcta)
- [ ] Imagens com `alt` descritivo
- [ ] `sitemap.xml` e `robots.txt` presentes e correctos
- [ ] URLs amigáveis e canónicas (`<link rel="canonical">`)
- [ ] Core Web Vitals dentro do aceitável (LCP < 2.5s, CLS < 0.1, INP < 200ms)
- [ ] Site responsivo e testado em mobile

## Quando usar

Antes de um lançamento público, ou periodicamente em projectos com tráfego
orgânico relevante.
