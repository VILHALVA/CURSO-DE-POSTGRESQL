-- Seleciona todos os dados da tabela "produtos"
SELECT * FROM produtos;

-- Insere novos registros na tabela "produtos"
INSERT INTO produtos (codigo, nome, descricao, preco, quantidade)
VALUES
	(12, 'Sabão em Pó', 'Caixa de Sabão em Pó 1/2 kg', 12.50, 5),
	(13, 'Biscoito', 'Pacote de Biscoito integral 110g', 3.75, 16),
	(14, 'Manteiga', 'Pote de Manteiga 250g', 8.70, 5);
	
-- Seleciona todos os dados atualizados da tabela "produtos"
SELECT * FROM produtos;

-- Remove o produto com código 12 da tabela "produtos"
DELETE FROM produtos
WHERE codigo = 12;

-- Remove o produto com nome 'Manteiga' da tabela "produtos"
DELETE FROM produtos
WHERE nome = 'Manteiga';

-- Remove produtos com quantidade igual ou inferior a 5 da tabela "produtos"
DELETE FROM produtos
WHERE quantidade <= 5;

-- Executamos uma consulta à tabela de produtos para verificar se os registros foram realmente apagados:
SELECT * FROM produtos;


