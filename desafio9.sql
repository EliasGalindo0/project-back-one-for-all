-- Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário `"Bill"` e a consulta deve retornar a seguinte coluna:

-- 1. O valor da quantidade, com o alias "**quantidade_musicas_no_historico**".


SELECT
	COUNT(hist.music_id) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.history AS `hist`
	INNER JOIN SpotifyClone.user AS `user`
		ON hist.user_id = user.user_id
	WHERE user.user_name LIKE 'Bill';