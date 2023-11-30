# Aplicação de Pesquisa de Endereço por CEP em React Native
Este é um exemplo de uma aplicação React Native que demonstra a funcionalidade de busca de endereço por CEP, implementada com uma arquitetura de camadas (hexagonal). A aplicação é organizada em três camadas principais: Camada de Aplicação, Camada de Domínio e Camada de Infraestrutura.

## Camada de Aplicação
A camada de aplicação contém as telas da aplicação e a lógica de apresentação. Neste exemplo, temos uma única tela de pesquisa.

### PesquisaScreen.js
Esta é a tela principal da aplicação onde os usuários podem inserir um CEP, acionar a busca e visualizar o resultado.

## Camada de Domínio
A camada de domínio define as entidades e casos de uso da aplicação.

### Endereco.js
Esta é a entidade de domínio que representa um objeto de endereço.

### CasoUsoEndereco.js
O caso de uso (Use Case) que coordena a busca de endereços por CEP. Ele utiliza o repositório para buscar os dados do endereço e cria instâncias da entidade Endereco.

## Camada de Infraestrutura
A camada de infraestrutura contém a implementação concreta do repositório que simula a busca de endereços por CEP.

### CEPRepositorio.js
Esta implementação de repositório simula a busca de endereços por CEP. Em um aplicativo real, esta camada se comunicaria com uma API externa para obter os dados do endereço.

## Configuração de Navegação
A configuração de navegação é feita usando o React Navigation, que permite a navegação entre as telas.

App.js

# Executando a Aplicação

1. Certifique-se de ter o ambiente de desenvolvimento React Native configurado.

2. Clone este repositório.

3. Instale as dependências do projeto:
* npm install