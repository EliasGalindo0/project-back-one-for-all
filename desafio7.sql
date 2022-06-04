-- Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:

-- A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

-- A segunda coluna deve exibir o nome do álbum, com o alias "album".

-- A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".

-- Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

SELECT
	art.artist_name AS `artista`,
    alb.album_name AS `album`,
    COUNT(fol.artist_id) AS `seguidores`
FROM SpotifyClone.artist AS `art`
	INNER JOIN SpotifyClone.album AS `alb`
		ON art.artist_id = alb.artist_id
	INNER JOIN SpotifyClone.follow AS `fol`
		ON alb.artist_id = fol.artist_id
GROUP BY alb.album_name, art.artist_name
ORDER BY seguidores DESC, art.artist_name, alb.album_name;