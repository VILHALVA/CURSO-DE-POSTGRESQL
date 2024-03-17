-- Seleciona o nome e o preço dos produtos onde o preço está entre 10.00 e 20.00
SELECT nome, preco
FROM produtos
WHERE preco BETWEEN 10.00 AND 20.00;

-- Seleciona o nome e o preço dos produtos onde o preço está entre 3.50 e 5.00 OU entre 10.00 e 20.00
SELECT nome, preco
FROM produtos
WHERE 
	preco BETWEEN 3.50 AND 5.00 OR
	preco BETWEEN 10.00 AND 20.00;
	
-- Seleciona o nome, preço e quantidade dos produtos onde o preço está entre 2.00 e 6.00 E a quantidade é menor que 10
SELECT nome, preco, quantidade
FROM produtos
WHERE 
	preco BETWEEN 2.00 AND 6.00 AND
	quantidade < 10;
	
-- Seleciona o nome, preço e quantidade dos produtos onde o preço está entre 5.00 e 12.00
SELECT nome, preco, quantidade
FROM produtos
WHERE preco BETWEEN 5.00 AND 12.00;

-- Seleciona o nome, preço e quantidade dos produtos onde o preço NÃO está entre 5.00 e 12.00
SELECT nome, preco, quantidade
FROM produtos
WHERE preco NOT BETWEEN 5.00 AND 12.00;
