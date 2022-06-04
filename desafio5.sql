-- Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

-- 1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

-- 2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

SELECT
	music.title AS `cancao`,
    COUNT(repro.music_id) AS `reproducoes`
  FROM SpotifyClone.music AS `music`
	INNER JOIN SpotifyClone.history AS `repro`
		ON music.music_id = repro.music_id
GROUP BY music.title
ORDER BY reproducoes DESC, title LIMIT 2;