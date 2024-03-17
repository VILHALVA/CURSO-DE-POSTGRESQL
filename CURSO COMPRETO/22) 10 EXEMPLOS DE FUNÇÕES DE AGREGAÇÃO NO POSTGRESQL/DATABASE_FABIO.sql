-- Conta o número total de registros na tabela "clientes"
SELECT COUNT(*) FROM clientes;

-- Conta o número total de registros na tabela "clientes" e renomeia a coluna resultante como "quantidade"
SELECT COUNT(*) AS quantidade FROM clientes;

-- Conta o número total de registros na coluna "nome" da tabela "clientes"
SELECT COUNT(nome) FROM clientes;

-- Conta o número total de registros na coluna "nome" da tabela "produtos"
SELECT COUNT(nome) FROM produtos;

-- Conta o número total de valores distintos na coluna "nome" da tabela "produtos"
SELECT COUNT(DISTINCT nome) FROM produtos;

-- Conta o número total de registros na tabela "produtos" onde o preço é igual ou superior a 10.00
SELECT COUNT(*) FROM produtos WHERE preco >= 10.00;

-- Retorna o maior valor da coluna "preco" da tabela "produtos"
SELECT MAX(preco) FROM produtos;

-- Retorna o menor valor da coluna "preco" da tabela "produtos"
SELECT MIN(preco) FROM produtos;

-- Retorna a soma de todos os valores da coluna "preco" da tabela "produtos"
SELECT SUM(preco) FROM produtos;

-- Retorna a média dos valores da coluna "preco" da tabela "produtos"
SELECT AVG(preco) FROM produtos;

-- Retorna a média dos valores da coluna "preco" da tabela "produtos" arredondada para duas casas decimais, onde o nome é 'Refrigerante'
SELECT ROUND(AVG(preco), 2) FROM produtos WHERE nome = 'Refrigerante';
