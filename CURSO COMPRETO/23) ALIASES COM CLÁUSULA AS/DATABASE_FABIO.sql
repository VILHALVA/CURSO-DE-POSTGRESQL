-- Seleciona o nome dos produtos da tabela "produtos" onde a quantidade é maior que 5, renomeando a coluna resultante como "Produto"
SELECT nome AS "Produto" FROM produtos WHERE quantidade > 5;

-- Seleciona o nome e sobrenome dos clientes da tabela "clientes", renomeando as colunas resultantes como "Nome" e "Sobrenome"
SELECT nome AS "Nome", sobrenome AS "Sobrenome" FROM clientes AS CL;

-- Seleciona o código e a quantidade dos pedidos da tabela "pedidos", renomeando as colunas resultantes como "CODIGO DO PEDIDO" e "QUANTIDADE", respectivamente, e ordenando pela coluna "QUANTIDADE" de forma descendente
SELECT codigo AS "CODIGO DO PEDIDO", quantidade AS "QUANTIDADE" FROM pedidos AS P ORDER BY "QUANTIDADE" DESC;
