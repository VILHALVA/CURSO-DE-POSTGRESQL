-- Inserindo dados na tabela produtos
INSERT INTO produtos (codigo, nome, descricao, preco, quantidade)
VALUES 
(1, 'Álcool em gel', 'Garrafa de alcool em gel de 1 litro', 12.90, 20),
(2, 'Luvas de Latex', 'Caixa de luvas de Latex com 100 únidades', 32.50, 25),
(3, 'Pasta de dentes', 'Tubo de pasta de dentes de 90g', 3.60, 12),
(4, 'Sabonete', 'Sabonete antibacteriano', 3.50, 5),
(5, 'Enxaguante Bucal', 'Antisséptico bucal de 500 ml', 17.00, 28);

-- Consulta para selecionar todos os registros da tabela produtos
SELECT * FROM produtos;