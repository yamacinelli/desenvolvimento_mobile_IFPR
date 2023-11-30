# Aplicação orientada a evento

Esta aplicação segue a arquitetura orientada ao evento, utilizando o Redux Toolkit para gerenciar o estado global da aplicação. Abaixo estão os principais componentes e funcionalidades:

## Redux Store e Redutor

### Store (loja):
* Criada utilizando @reduxjs/toolkit;
* Um único redutor (redutorEvento) é combinado para gerenciar o estado relacionado aos eventos.

### Redutor (redutorEvento)
* Localizado em src/reducers/Reducers.js;
* Responsável por tratar as ações relacionadas aos eventos, como adicionar um novo evento à lista.

## Ações

### Ação de Adicionar Evento:
* A ação adicionarEvento é definida em src/actions/Action.js;
* Dispara a ação de adicionar um novo evento com os dados fornecidos como carga útil;

## Componente de Evento (EventoComponent)

### Componente React Native:
* Localizado em src/components/EventoComponent.js;
* Conectado à loja Redux para acessar o estado global;
* Exibe uma lista de eventos utilizando FlatList e permite a adição de novos eventos.

## Uso de useEffect:

Utiliza useEffect para monitorar e exibir alterações no estado de eventos.

## Conexão com Redux:
Conecta-se ao estado global (eventos) e à ação adicionarEvento por meio do método connect do react-redux.

## Execução e instalação

Certifique-se de ter as dependências instaladas executando npm install.

### Execução da Aplicação

* Execute a aplicação React Native com npm run web.

## Observações:
* A arquitetura orientada ao evento simplifica o gerenciamento de estado, proporcionando uma estrutura clara para ações, redutores e a loja global;
* O Redux Toolkit é utilizado para simplificar a configuração do Redux e reduzir a quantidade de código boilerplate;
* O componente EventoComponent ilustra a integração entre a loja Redux e um componente React Native.