-- Crie uma `QUERY` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal de acordo com os detalhes a seguir:

-- * A primeira coluna deve exibir o nome da canção, com o alias "**nome**";

-- * A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";

-- * Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

SELECT
	mus.title AS `nome`,
    COUNT(hist.music_id) AS `reproducoes`
FROM SpotifyClone.history AS hist
	LEFT JOIN SpotifyClone.music AS `mus`
		ON hist.music_id = mus.music_id
	RIGHT JOIN SpotifyClone.user AS `user`
		ON user.user_id = hist.user_id
	RIGHT JOIN SpotifyClone.plan AS `plan`
		ON user.plan_id = plan.plan_id
	WHERE plan.plan_type IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome;