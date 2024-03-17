-- Criando ou substituindo a visualização 'vendas' para armazenar informações sobre vendas.
CREATE OR REPLACE VIEW vendas AS
	SELECT 
		-- Selecionando o nome do cliente e o nome do produto da tabela clientes e produtos, respectivamente.
		CL.nome AS "CLIENTE", 
		PR.nome AS "PRODUTOS",
		-- Selecionando a quantidade e o código do pedido da tabela pedidos.
		PE.quantidade AS "QUANTIDADE",
		PE.codigo AS "PEDIDO",
		-- Calculando o total da fatura multiplicando o preço do produto pela quantidade.
		PR.preco * PE.quantidade AS "FATURA"
	FROM pedidos PE
	INNER JOIN clientes CL ON PE.codigo = CL.codigo
	INNER JOIN produtos PR ON PE.produto = PR.codigo;

-- Selecionando todos os dados da visualização 'vendas'.
SELECT * FROM vendas;

-- Selecionando o nome do cliente e o código do pedido da visualização 'vendas'.
SELECT "CLIENTE", "PEDIDO" FROM vendas;

-- Selecionando o nome do cliente e a soma total das faturas agrupadas por cliente da visualização 'vendas'.
SELECT "CLIENTE", SUM("FATURA") 
FROM vendas
GROUP BY "CLIENTE";

-- Alterando o nome da visualização de 'vendas' para 'faturas'.
ALTER VIEW vendas RENAME TO faturas;

-- Selecionando todos os dados da visualização 'faturas'.
SELECT * FROM faturas;

-- Removendo a visualização 'faturas', caso exista.
DROP VIEW IF EXISTS faturas;

-- Tentativa de seleção dos dados da visualização 'faturas' após sua remoção.
SELECT * FROM faturas;
