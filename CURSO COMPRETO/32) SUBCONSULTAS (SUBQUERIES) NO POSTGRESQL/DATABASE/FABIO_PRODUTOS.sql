-- Consulta utilizando uma subconsulta para selecionar os produtos com preço maior que a média dos preços de todos os produtos.
SELECT nome, preco
FROM produtos
WHERE preco > (
    SELECT AVG(preco)
    FROM produtos
);

-- Exemplo de utilização de uma subconsulta em uma instrução UPDATE para aumentar os preços dos produtos com base em um critério.
UPDATE produtos
SET preco = preco * 1.1
WHERE codigo IN (
    SELECT codigo
    FROM produtos
    WHERE quantidade < 10
);

-- Exemplo de utilização de uma subconsulta em uma instrução DELETE para excluir produtos com base em um critério.
DELETE FROM produtos
WHERE codigo IN (
    SELECT codigo
    FROM produtos
    WHERE preco > 100
);
