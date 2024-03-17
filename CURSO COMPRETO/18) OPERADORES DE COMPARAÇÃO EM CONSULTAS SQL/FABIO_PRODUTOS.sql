-- Seleciona o nome e o preço dos produtos onde o preço é maior que 12.00
SELECT nome, preco
FROM produtos
WHERE preco > 12.00;

-- Seleciona o nome e a quantidade dos produtos onde a quantidade é menor ou igual a 20
SELECT nome, quantidade
FROM produtos
WHERE quantidade <= 20;

-- Seleciona o nome e a quantidade dos produtos onde a quantidade é menor ou igual a 20 e maior que 10
SELECT nome, quantidade
FROM produtos
WHERE quantidade <= 20 AND quantidade > 10;

-- Seleciona o nome e a quantidade dos produtos onde o nome não é 'Refrigerante'
SELECT nome, quantidade
FROM produtos
WHERE nome != 'Refrigerante';
