<h1>Movie Catalog API</h1>

Este é um aplicativo Rails que fornece uma API RESTful para o catálogo de filmes. Ele permite importar filmes a partir de um arquivo CSV por um endpoint e listar os filmes cadastrados em formato JSON, permitindo a filtragem por ano de lançamento, gênero, país, etc.

<h1>Configuração</h1>

Este projeto requer Ruby e Rails instalados na máquina.
Além de algumas "gems" não tão usuais, como kaminari. Relembramos de rodar todas as migrações e bundle install após clonagem.

<h1>Utilização</h1>

 - Os métodos abaixo foram testados na plataforma Postman

<h3>Para importar filmes do arquivo CSV, execute:</h3>

 > GET /api/v1/movies/read_csv

<h3>Para listar todos os filmes cadastrados em formato JSON, execute:</h3>

 > GET /api/v1/movies

<h3>Para filtrar os filmes por ano de lançamento, gênero, país, etc., use os parâmetros de consulta:</h3>

Exemplo:

> GET //api/v1/movies?genre=Dramas,%20Romantic%20Movies&year=1993

> GET //api/v1/movies?page=1


<h3>A resposta seguirá o seguinte padrão:</h3>

- {
  "movies": [
{
"id":"c9cc42c4bc23d51d135d9a8436dbbe6c",,
"title": "A Clockwork Orange",
"genre": "Classic Movies, Cult Movies, Dramas",
"year": "1971",
"country": "United Kingdom, United States",
"published_at": "2020-11-01",
"description": "In this dark satire from director Stanley Kubrick, a young, vicious sociopath in a dystopian England undergoes an experimental rehabilitation therapy.",
"created_at": "2023-04-13T21:22:24.196Z",
"updated_at": "2023-04-13T21:22:24.196Z"
} ..(continua)
.. ],
"current_page": 1,
"total_pages": 6,
"total_count": 131
}

![image](https://user-images.githubusercontent.com/93097561/232249738-08f173ef-c551-456b-895c-8e605e71c407.png)


<h1>Exemplo de Utilização</h1> 

O Aplicativo "Importer Movie" encontrado neste link: https://github.com/hurikzamith/importer-movie, foi criado apenas com intuito de fazer uso desta API diretamente da production, pois a API está em production pelo heroku. no link: https://movie-catalog2.herokuapp.com/api/v1/movies. 
Os dados foram facilmente importados da seguinte maneira: 


![image](https://user-images.githubusercontent.com/93097561/232249702-c6de8beb-8380-47e6-999d-14fa4d8eddba.png)


![image](https://user-images.githubusercontent.com/93097561/232252372-09ddb358-1dfa-436b-9937-4edd8d2cedf8.png)

![image](https://user-images.githubusercontent.com/93097561/232252390-ff697c30-bbe4-4769-8c6c-86dd7c2ea9e8.png)




<h1>Testes</h1>
Classe MovieTest (testes de unidade):

<h3>Testa o modelo Movie;</h3>

- Garante que o modelo se comporte conforme o esperado;

- Testa se um filme pode ser criado com atributos válidos;

- Testa se um filme com título duplicado não pode ser criado;

- Testa se um filme deve ter um título.

- Classe MoviesControllerTest (testes de integração):

<h3>Testa o MoviesController;</h3>

- Garante que o controller se comporte conforme o esperado;

- Testa se a ação index retorna uma lista de filmes com informações de paginação;

- Testa se os filmes podem ser filtrados por ano, título, gênero e país.

<h3>Importância dos testes:</h3>

Garante o correto funcionamento do aplicativo;
Ajuda a detectar bugs;
Garante que o aplicativo atenda aos requisitos do usuário.

<h3>Para executar os testes do projeto, execute:</h3>

> rails test



<h1>Contribuição</h1>
Este é um projeto de código aberto e estamos abertos a contribuições. Para contribuir, siga as etapas abaixo:

> Crie um fork deste projeto.
> Crie uma nova branch com suas alterações: git checkout -b minha-branch
> Faça commit das suas alterações: git commit -am 'Minhas alterações'
> Faça push para a branch: git push origin minha-branch
> Abra um pull request

<h1>Licença</h1>
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE.md para obter mais informações.
