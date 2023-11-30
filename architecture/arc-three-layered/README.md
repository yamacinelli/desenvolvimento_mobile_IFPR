# Aplicação de Tarefas Simples em React Native

Este é um exemplo simples de uma aplicação React Native que segue a arquitetura de três camadas. A aplicação consiste em uma lista de tarefas que podem ser adicionadas e removidas.

## Estrutura do Projeto

A estrutura do projeto é organizada em três camadas:

1. **Camada de Apresentação (UI)**:
   - Componentes React Native que cuidam da interface do usuário.
   - Exemplo: `TarefaLista` - renderiza a lista de tarefas e lida com interações do usuário.

2. **Camada de Lógica de Negócios**:
   - Módulos que gerenciam a lógica da aplicação.
   - Exemplo: `GerenciadorTarefas` - gerencia o estado das tarefas, incluindo adição e remoção.

3. **Camada de Dados**:
   - Funções e dados relacionados ao gerenciamento de dados.
   - Exemplo: `data.js` - simula a obtenção, salvamento e exclusão de tarefas.

## Executando a Aplicação

1. Certifique-se de ter o ambiente de desenvolvimento React Native configurado.

2. Clone este repositório.

3. Instale as dependências do projeto:
* npm install