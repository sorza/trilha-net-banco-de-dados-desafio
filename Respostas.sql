--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano >= 2000

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
	Ano, COUNT(Ano) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
	Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT
	Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
	Nome, Genero
FROM Filmes 
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT 
	Nome, Genero
FROM Filmes 
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE
	Generos.Genero = 'Mistério'

--12
SELECT
	Nome, PrimeiroNome, UltimoNome, Papel
FROM Atores 
	INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
	INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme

