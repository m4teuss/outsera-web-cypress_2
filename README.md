# PROJETO OUTSERA WEB

### Objetivo 
- Este projeto tem como objetivo automatizar os testes da funcionalidade de login de uma aplicação web, simulando cenários reais de uso e validação de credenciais.

### Tecnologias Utilizadas
- JavaScript
- Node.js
- Cypress 14.0.2
- Cucumber (BDD)

### Pré requisito
- Computador com no mínimo 2 cores e 8GB de RAM
- [Nodejs](https://nodejs.org/) ou [Yarn](https://yarnpkg.com/)
- [Git](https://git-scm.com/)
- IDE de desenvolvimento [(sugiro o VSCode)](https://code.visualstudio.com/)

### Instalação do Cypress

- Abrir terminal na pasta do projeto:

- Executar o comando `npm install --save-dev cypress`
  

### Executar os testes

- Executar os testes via headless `$ npx cypress run`

- Executar os testes via interface `$ npx cypress open`


### Estrutura de diretórios

```bash
outsera-web-cypress-tarefa1
│
├── cypress
│   ├── e2e/gui
│   │   └── 01_login.feature
│   │
│   ├── reports
│   │   └── cucumber-report.json
│   │
│   ├── support
│   │   ├── elements
│   │   │   └── Elements.js
│   │   │
│   │   ├── pages
│   │   │   └── LoginPage.js
│   │   │
│   │   ├── step_definitions
│   │   │   └── Steps.js
│   │   │
│   │   └── e2e.js
│
├── node_modules
├── cypress.config.js
├── package.json
└── README.md
```

### Padrões Utilizados

- Os cenários foram escritos utilizando Gherkin com arquivos .feature.
- Page Object Model (POM)


### Relatórios de Teste
- Após a execução dos testes, são gerados arquivos de resultado em:
- `cypress/cucumber-json`
