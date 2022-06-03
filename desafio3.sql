-- Crie uma `QUERY` que deverá ter apenas três colunas:

-- 1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

-- 2. A segunda coluna deve possuir o alias "**qtde_musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

-- 3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

-- Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

SELECT
	user.user_name AS `usuario`,
    COUNT(hist.music_id) AS `qtde_musicas_ouvidas`,
    ROUND(SUM(music.duration) / 60, 2) AS `total_minutos`
FROM SpotifyClone.user AS `user`
	INNER JOIN SpotifyClone.history AS `hist`
		ON user.user_id = hist.user_id
	INNER JOIN SpotifyClone.music AS `music`
		ON music.music_id = hist.music_id
GROUP BY user.user_id
ORDER BY usuario ASC;