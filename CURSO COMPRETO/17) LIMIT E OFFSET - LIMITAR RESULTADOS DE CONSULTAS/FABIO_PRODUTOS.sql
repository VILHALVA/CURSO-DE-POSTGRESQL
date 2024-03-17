-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo preço em ordem crescente, limitando os resultados às 4 primeiras linhas
SELECT * FROM produtos
ORDER BY preco
LIMIT 4;

-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo preço em ordem decrescente, limitando os resultados às 3 primeiras linhas
SELECT * FROM produtos
ORDER BY preco DESC
LIMIT 3;

-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo preço em ordem decrescente, limitando os resultados às 3 primeiras linhas e pulando as 2 primeiras linhas
SELECT * FROM produtos
ORDER BY preco DESC
LIMIT 3 OFFSET 2;

-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo preço em ordem decrescente, pulando as 2 primeiras linhas
SELECT * FROM produtos
ORDER BY preco DESC
OFFSET 2;

-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo preço em ordem decrescente, sem limite máximo de linhas
SELECT * FROM produtos
ORDER BY preco DESC
LIMIT ALL;

-- Seleciona todas as colunas da tabela produtos e limita os resultados às 5 primeiras linhas
SELECT * FROM produtos
LIMIT 5;
