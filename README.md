Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
<h1>Catálogo de Filmes</h1>
Este é um aplicativo Rails que fornece uma API RESTful para o catálogo de filmes. Ele permite importar filmes a partir de um arquivo CSV e listar os filmes cadastrados em formato JSON, permitindo a filtragem por ano de lançamento, gênero, país, etc.

<h1>Configuração</h1>

Este projeto requer Ruby e Rails instalados na máquina.

<h1>Utilização</h1>

<h3>Para importar filmes do arquivo CSV, execute:</h3>

<h3>Para listar todos os filmes cadastrados em formato JSON, execute:</h3>

 - GET /movies

<h3>Para filtrar os filmes por ano de lançamento, gênero, país, etc., use os parâmetros de consulta:</h3>

- GET /movies?year=2021&genre=Drama&country=United%20States
 
<h3>A resposta seguirá o seguinte padrão:</h3>

- "movies": [
{
"id": 93,
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

<h1>Testes</h1>
Para executar os testes do projeto, execute:

- rails test

<h1>Contribuição</h1>
Este é um projeto de código aberto e estamos abertos a contribuições. Para contribuir, siga as etapas abaixo:

- Crie um fork deste projeto.
- Crie uma nova branch com suas alterações: git checkout -b minha-branch
- Faça commit das suas alterações: git commit -am 'Minhas alterações'
- Faça push para a branch: git push origin minha-branch
- Abra um pull request

<h1>Licença</h1>
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE.md para obter mais informações.
