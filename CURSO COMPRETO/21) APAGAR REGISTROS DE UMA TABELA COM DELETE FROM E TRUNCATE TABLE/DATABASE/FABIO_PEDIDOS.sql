-- Vamos a um exemplo. Primeiramente, visualizamos o conteúdo da tabela de pedidos de nosso banco de dados de testes:
SELECT * FROM pedidos;

-- Executamos agora TRUNCATE TABLE para apagar o conteúdo deste tabela:
TRUNCATE TABLE pedidos;

-- Conferimos se a tabela está limpa:
SELECT * FROM pedidos;

-- Todo o conteúdo da tabela foi excluído, mas a tabela continua existindo no banco de dados. Vamos agora inserir novos registros nesta tabela com a declaração INSERT INTO, pois a vamos utilizar nas pŕoximas lições de nosso curso de PostgreSQL:
INSERT INTO pedidos (cliente, produto, quantidade)
VALUES
(1,2,3),
(2,3,2),
(1,3,4),
(2,6,3),
(2,5,2),
(3,8,5);

-- Finalmente, conferimos se esses novos registros foram inseridos corretamente na tabela de pedidos:
SELECT * FROM pedidos;