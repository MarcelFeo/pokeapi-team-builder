<p align="center">
  <img src="pokeball-PhotoRoom.png-PhotoRoom.png" alt="Descrição da imagem">
</p>


# Poketeam Builder 📚

Este projeto é uma API que faz a requisição na PokéAPI: https://pokeapi.co
A API consiste em gerar um time aleatório com uma quantidade de pokemons informada pelo usuário

## Como instalar o projeto 💻

Siga as instruções abaixo para instalar e executar o projeto localmente:

1. Certifique-se de ter o Ruby e o Ruby on Rails instalados em sua máquina. Caso não os tenha, consulte a documentação oficial do Ruby on Rails para obter instruções de instalação: [https://rubyonrails.org/](https://rubyonrails.org/)

2. Clone este repositório para o seu ambiente de desenvolvimento local utilizando o seguinte comando:

```shell
git clone https://github.com/MarcelFeo/pokeapi-team-builder
```

Acesse o diretório do projeto:

```shell
cd pokeapi-team-builder
```
Instale as dependências do projeto executando o seguinte comando:

```shell
bundle install
```

Execute as migrações do banco de dados para criar as tabelas necessárias:

```shell
rails db:migrate
```

Inicie o servidor local:

```shell
rails server
```

Agora você pode acessar a API localmente em http://localhost:3000. Você pode utilizar uma ferramenta como o cURL ou o Postman para fazer requisições à API e realizar operações com os super-heróis armazenados.
