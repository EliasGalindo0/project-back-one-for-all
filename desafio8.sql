-- Mostre uma relação dos álbuns produzidos por um artista específico, neste caso `"Walter Phoenix"`.
-- Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

-- 1. O nome da pessoa artista, com o alias "**artista**".

-- 2. O nome do álbum, com o alias "**album**".

-- Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

SELECT
	art.artist_name AS `artista`,
    alb.album_name AS `album`
FROM SpotifyClone.artist AS `art`
	INNER JOIN SpotifyClone.album AS `alb`
		ON art.artist_id = alb.artist_id
	WHERE art.artist_name LIKE 'Walter Phoenix'
ORDER BY alb.album_name;