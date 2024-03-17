-- Selecionando o nome de todos os produtos em letras maiúsculas.
SELECT UPPER(nome) AS nome_maiusculo
FROM produtos;

-- Selecionando o nome de todos os produtos em letras minúsculas.
SELECT LOWER(nome) AS nome_minusculo
FROM produtos;

-- Concatenando o nome e a descrição dos produtos.
SELECT CONCAT(nome, ' - ', descricao) AS nome_descricao_concatenados
FROM produtos;

-- Calculando o comprimento em bits do nome de todos os produtos.
SELECT nome, BIT_LENGTH(nome) AS comprimento_bits
FROM produtos;

-- Calculando o comprimento em caracteres do nome de todos os produtos.
SELECT nome, CHAR_LENGTH(nome) AS comprimento_caracteres
FROM produtos;

-- Calculando o comprimento do nome de todos os produtos (em caracteres ASCII).
SELECT nome, LENGTH(nome) AS comprimento_ascii
FROM produtos;
