-- Criação da tabela para armazenar pedidos em formato JSON.
CREATE TABLE peds (
	id SERIAL PRIMARY KEY,
	pedido JSON NOT NULL
);

-- Inserção de registros de pedidos na tabela "peds".
INSERT INTO peds (pedido)
VALUES
('{"comprador": "Fábio", "produtos": {"bebida": "suco de caju", "comida": "Pizza de Atum"}}'),
('{"comprador": "Mônica", "produtos": {"bebida": "Água Tônica", "comida": "Beirute"}}'),
('{"comprador": "Lauro", "produtos": {"bebida": "Campari", "comida": "Espaguete"}}'),
('{"comprador": "Henrique", "produtos": {"bebida": "Coca-cola", "comida": "Feijoada"}}');

-- Consulta para visualizar todos os registros de pedidos.
SELECT * FROM peds;

-- Retorna os nomes dos compradores em formato JSON.
SELECT pedido -> 'comprador' AS Comprador
FROM peds;

-- Retorna os nomes dos compradores como texto.
SELECT pedido ->> 'comprador' AS Comprador
FROM peds;

-- Retorna as bebidas vendidas em cada pedido.
SELECT pedido -> 'produtos' ->> 'bebida' AS "Bebidas Vendidas"
FROM peds;

-- Consulta para encontrar quem comprou Coca Cola.
SELECT pedido ->> 'comprador' AS Comprador
FROM peds
WHERE pedido -> 'produtos' ->> 'bebida' = 'Coca-cola';

-- Funções JSON: Retorna um conjunto de linhas, cada uma com um par de chave e valor.
SELECT json_each(pedido)
FROM peds;

-- Funções JSON: Retorna um conjunto de linhas, cada uma com uma chave e valor como texto.
SELECT json_each_text(pedido)
FROM peds;

-- Retorna as chaves do objeto JSON 'produtos' em cada pedido.
SELECT JSON_OBJECT_KEYS(pedido -> 'produtos')
FROM peds;
