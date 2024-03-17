-- Seleciona todos os dados da tabela "produtos"
SELECT * FROM produtos;

-- Atualiza a descrição do produto com código 11 para "Pote de Margarina Vegetal"
UPDATE produtos
SET descricao = 'Pote de Margarina Vegetal'
WHERE codigo = 11;

-- Atualiza o preço do produto com código 4 para 3.95
UPDATE produtos
SET preco = 3.95
WHERE codigo = 4;

-- Reduz a quantidade em 4 unidades de todos os produtos com preço superior a 15.00
UPDATE produtos
SET quantidade = quantidade - 4
WHERE preco > 15.00;

-- Aumenta o preço de todos os produtos em 10%
UPDATE produtos
SET preco = preco * 1.10;

-- Seleciona todos os dados atualizados da tabela "produtos"
SELECT * FROM produtos;
