-- Seleciona todos os registros da tabela "pedidos"
SELECT * FROM pedidos;

-- Seleciona o código do pedido, o nome do produto e a quantidade do pedido da tabela "pedidos", juntamente com o nome do produto correspondente da tabela "produtos", utilizando uma junção interna (INNER JOIN) entre as duas tabelas baseada no código do pedido
SELECT pedidos.codigo, produtos.nome, pedidos.quantidade
FROM pedidos
INNER JOIN produtos
ON pedidos.codigo = produtos.codigo;

-- Seleciona o código do pedido, o nome do produto e a quantidade do pedido da tabela "pedidos" onde o código do pedido é igual a 9, juntamente com o nome do produto correspondente da tabela "produtos", utilizando uma junção interna (INNER JOIN) entre as duas tabelas baseada no código do pedido
SELECT PE.codigo, PR.nome, PE.quantidade
FROM pedidos PE
INNER JOIN produtos PR
ON PE.codigo = PR.codigo
WHERE PE.codigo = 9;

-- Seleciona o código do pedido, o nome do produto, o nome do cliente e a quantidade do pedido da tabela "pedidos" onde o código do pedido é igual a 9, juntamente com o nome do produto correspondente da tabela "produtos" e o nome do cliente correspondente da tabela "clientes", utilizando junções internas (INNER JOIN) entre as três tabelas baseadas no código do pedido
SELECT PE.codigo, PR.nome, CL.nome, PE.quantidade
FROM pedidos PE
INNER JOIN produtos PR
ON PE.codigo = PR.codigo
INNER JOIN clientes CL
ON PE.codigo = CL.codigo
WHERE PE.codigo = 9;

-- Seleciona o código do pedido, o nome do produto e o nome do cliente da tabela "pedidos" onde o código do cliente é igual a 1, juntamente com o nome do produto correspondente da tabela "produtos" e o nome do cliente correspondente da tabela "clientes", utilizando junções internas (INNER JOIN) entre as três tabelas baseadas no código do pedido e do cliente
SELECT PE.codigo, PR.nome, CL.nome
FROM pedidos PE
INNER JOIN produtos PR
ON PE.codigo = PR.codigo
INNER JOIN clientes CL
ON PE.codigo = CL.codigo
WHERE CL.codigo = 1;
