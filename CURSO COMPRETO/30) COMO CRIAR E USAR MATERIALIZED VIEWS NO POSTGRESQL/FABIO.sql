-- Consulta utilizando INNER JOIN para unir dados de diferentes tabelas.
SELECT 
	-- Seleciona o nome do cliente, o produto e a quantidade do pedido.
	CL.nome AS nome_cliente, 
	PE.produto, 
	PR.quantidade
FROM 
	pedidos PE
	INNER JOIN clientes CL ON PE.cliente = CL.codigo
	INNER JOIN produtos PR ON PE.produto = PR.codigo;

-- Criando uma view materializada para armazenar os resultados da consulta.
CREATE MATERIALIZED VIEW materialized_view_pedidos AS
SELECT 
    -- Seleciona o nome do cliente, o produto e a quantidade do pedido.
    CL.nome AS nome_cliente,
    PE.produto,
    PR.quantidade
FROM 
    pedidos PE
    INNER JOIN clientes CL ON PE.cliente = CL.codigo
    INNER JOIN produtos PR ON PE.produto = PR.codigo;
	
-- Atualiza os dados da view materializada com os dados mais recentes das tabelas subjacentes.
REFRESH MATERIALIZED VIEW materialized_view_pedidos;

-- Consulta os dados da view materializada (agora com os dados carregados).
SELECT * FROM materialized_view_pedidos;

-- Modifica o nome da coluna na view materializada.
ALTER MATERIALIZED VIEW materialized_view_pedidos
RENAME COLUMN nome_cliente TO nome;

-- Consulta os dados da view materializada após a modificação.
SELECT * FROM materialized_view_pedidos;

-- Exclui a view materializada.
DROP MATERIALIZED VIEW materialized_view_pedidos;
