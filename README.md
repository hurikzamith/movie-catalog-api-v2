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

O Aplicativo "Importer Movie" encontrado neste link: https://github.com/hurikzamith/importer-movie, foi criado apenas com intuito de fazer uso desta API. 
Os dados foram facilmente importados da seguinte maneira: 


![image](https://user-images.githubusercontent.com/93097561/232249702-c6de8beb-8380-47e6-999d-14fa4d8eddba.png)


![image](https://user-images.githubusercontent.com/93097561/232227900-bdb35090-65ee-451f-8664-64764d93515b.png)

![image](https://user-images.githubusercontent.com/93097561/232228164-10cdd6c0-f7fc-4d51-b14c-0c550ac32c82.png)




<h1>Testes</h1>
Para executar os testes do projeto, execute:

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
