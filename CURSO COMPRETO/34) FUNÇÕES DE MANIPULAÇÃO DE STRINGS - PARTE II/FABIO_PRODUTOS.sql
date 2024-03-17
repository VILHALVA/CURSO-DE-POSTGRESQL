-- Selecionando apenas os três primeiros caracteres do nome de todos os produtos.
SELECT nome, SUBSTRING(nome FROM 1 FOR 3) AS tres_primeiros_caracteres
FROM produtos;

-- Localizando a posição da palavra "em" no nome de todos os produtos.
SELECT nome, POSITION('em' IN nome) AS posicao_em
FROM produtos;

-- Removendo os espaços em branco no início e no final do nome de todos os produtos.
SELECT nome, TRIM(nome) AS nome_sem_espacos
FROM produtos;

-- Substituindo "Refrigerante" por "Água" no nome de todos os produtos.
SELECT REPLACE(nome, 'Refrigerante', 'Água') AS nome_substituido
FROM produtos;

-- Invertendo o nome de todos os produtos.
SELECT nome, REVERSE(nome) AS nome_invertido
FROM produtos;

-- Selecionando os cinco primeiros caracteres do nome de todos os produtos.
SELECT nome, LEFT(nome, 5) AS cinco_primeiros_caracteres
FROM produtos;

-- Selecionando os cinco últimos caracteres do nome de todos os produtos.
SELECT nome, RIGHT(nome, 5) AS cinco_ultimos_caracteres
FROM produtos;
