-- Comando para inserir um novo registro na tabela "pessoas"
INSERT INTO pessoas (nome, idade, email, data_de_nascimento)
VALUES ('João Silva', 30, 'joao@email.com', '1993-05-15');

-- Comando para inserir outro registro na tabela "pessoas"
INSERT INTO pessoas (nome, idade, email, data_de_nascimento)
VALUES ('Maria Souza', 25, 'maria@email.com', '1998-08-20');

-- Comando para inserir registros na tabela "pedidos" com base na tabela "clientes"
INSERT INTO pedidos (cliente_id, data_pedido)
SELECT id, '2023-10-13' FROM clientes;
