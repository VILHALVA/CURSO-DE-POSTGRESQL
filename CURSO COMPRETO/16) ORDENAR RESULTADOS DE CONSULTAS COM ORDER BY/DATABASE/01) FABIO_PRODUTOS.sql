-- Inserindo mais dados na tabela produtos
INSERT INTO produtos (codigo, nome, descricao, preco, quantidade)
VALUES 
(6, 'Detergente', 'Detergente líquido 500 ml', 1.89, 32),
(7, 'Leite Integral', 'Leite Integral de 1 litro', 4.60, 70),
(8, 'Refrigerante', 'Garrafa de refrigerante de 600 ml', 3.70, 14),
(9, 'Refrigerante', 'Garrafa de refrigerante de 1 litro', 6.89, 16),
(10, 'Refrigerante', 'Lata de refrigerante de 350 ml', 2.99, 45);

-- Inserindo mais dados na tabela produtos, desta vez omitindo a descrição
INSERT INTO produtos (codigo, nome, preco, quantidade)
VALUES 
(11, 'Margarida', 3.20, 8);

-- Consulta para selecionar todos os registros da tabela produtos
SELECT * FROM produtos;