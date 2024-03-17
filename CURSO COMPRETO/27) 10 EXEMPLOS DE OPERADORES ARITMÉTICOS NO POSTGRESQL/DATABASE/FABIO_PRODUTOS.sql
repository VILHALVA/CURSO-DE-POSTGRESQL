-- Retorna todos os dados da tabela produtos.
SELECT * FROM produtos;

-- Multiplica o preço de um produto pelo valor 5.
SELECT preco * 5
FROM produtos
WHERE codigo = 5;

-- Calcula o custo de uma luva, dividindo o preço pelo valor 100.
SELECT preco / 100 AS "Custo de uma luva"
FROM produtos
WHERE nome = 'Luvas de Latex';

-- Calcula o custo de uma luva, arredondando o resultado para 4 casas decimais.
SELECT round(preco / 100, 4) AS "Custo de uma luva"
FROM produtos
WHERE nome = 'Luvas de Latex';

-- Calcula o custo de uma luva, arredondando o resultado para 2 casas decimais.
SELECT round(preco / 100, 2) AS "Custo de uma luva"
FROM produtos
WHERE nome = 'Luvas de Latex';

-- Calcula o total de vendas multiplicando o preço de cada produto pela quantidade vendida e somando-os.
SELECT SUM(preco * quantidade)
FROM produtos;
