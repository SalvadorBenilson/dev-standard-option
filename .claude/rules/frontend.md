# Regras — Frontend

> Carregado apenas quando se trabalha em código de UI. Preencha com os
> padrões reais do projecto; o que segue são exemplos de estrutura.

## Componentes

- Componentes pequenos e focados numa responsabilidade
- Estado local por padrão; estado global só quando partilhado entre várias
  árvores de componentes
- Nomes de ficheiros e componentes em PascalCase; hooks em camelCase com
  prefixo `use`

## Estilo e acessibilidade

- Seguir o design system do projecto (ligar aqui para o Figma/Storybook)
- Contraste mínimo AA, navegação por teclado testada, `alt` em imagens

## Testes

- Testes de componente para lógica de interacção
- Testes end-to-end para os fluxos críticos (login, checkout, etc.)

## Performance

- Lazy-load de rotas/componentes pesados
- Evitar re-renders desnecessários (memoização só quando medido como
  necessário)
