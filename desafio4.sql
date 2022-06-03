-- Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas no ano de **2021** se baseando na data mais recente no histórico de reprodução.

-- 1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

-- 2. A segunda coluna deve ter o alias "**condicao_usuario**" e exibir se a pessoa usuária está ativa ou inativa.

-- O resultado deve estar ordenado em ordem alfabética.

SELECT
	user.user_name AS `usuario`,
  IF(YEAR(MAX(hist.date_played)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.user AS `user`
  INNER JOIN SpotifyClone.history AS `hist`
    ON user.user_id = hist.user_id
GROUP BY user.user_id
ORDER BY usuario;
