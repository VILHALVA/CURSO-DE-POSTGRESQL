-- Seleciona todas as colunas da tabela clientes onde o código é igual a 1
SELECT * FROM clientes
WHERE codigo = 1;

-- Seleciona todas as colunas da tabela clientes onde o código é igual a 2
SELECT * FROM clientes
WHERE codigo = 2;

-- Seleciona todas as colunas da tabela clientes onde o código é igual a 3
SELECT * FROM clientes
WHERE codigo = 3;


-- Seleciona as colunas 'nome' e 'quantidade' da tabela produtos
-- onde a quantidade é menor que 10
SELECT nome, quantidade
FROM produtos
WHERE quantidade < 10;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos
-- onde o preço é maior ou igual a 15.00
SELECT nome, preco
FROM produtos
WHERE preco >= 15.00;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos
-- onde o preço é menor que 15.00
SELECT nome, preco
FROM produtos
WHERE preco < 15.00;


-- Seleciona todas as colunas da tabela pedidos
SELECT * FROM pedidos;

-- Seleciona as colunas 'codigo' e 'quantidade' da tabela pedidos
-- onde o código é igual a 1
SELECT codigo, quantidade 
FROM pedidos
WHERE codigo = 1;
