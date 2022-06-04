-- Crie uma `QUERY` que altere o nome de algumas músicas e as ordene em ordem alfabética com as colunas abaixo se baseando nos seguintes critérios:

-- 1. O nome da música em seu estado normal com o alias **nome_musica**

-- 2. O nome da música atualizado com o alias **novo_nome**

-- **Critérios**

-- - Trocar a palavra **"Streets"** no final do nome de uma música por **"Code Review"**

-- - Trocar a palavra **"Her Own"** no final do nome de uma música por **"Trybe"**

-- - Trocar a palavra **"Inner Fire"** no final do nome de uma música por **"Project"**

-- - Trocar a palavra **"Silly"** no final do nome de uma música por **"Nice"**

-- - Trocar a palavra **"Circus"** no final do nome de uma música por **"Pull Request"**

SELECT
	title AS `nome_musica`,
    CASE
    WHEN title LIKE '%Streets'THEN REPLACE(title, 'Streets', 'Code Review')
    WHEN title LIKE '%Her Own' THEN REPLACE(title, 'Her Own', 'Trybe')
    WHEN title LIKE '%Inner Fire' THEN REPLACE(title, 'Inner Fire', 'Project')
    WHEN title LIKE '%Silly' THEN REPLACE(title, 'Silly', 'Nice')
    WHEN title LIKE '%Circus' THEN REPLACE(title, 'Circus', 'Pull Request')
    END AS `novo_nome`
FROM SpotifyClone.music
	WHERE title LIKE '%Streets'
    OR title LIKE '%Her Own'
    OR title LIKE '%Inner Fire'
	OR title LIKE '%Silly'
    OR title LIKE '%Circus'
ORDER BY title;