-- Seleciona todas as colunas da tabela produtos e ordena os resultados pelo nome em ordem crescente
SELECT * FROM produtos
ORDER BY nome;

-- Seleciona todas as colunas da tabela produtos e ordena os resultados pela quantidade em ordem decrescente
SELECT * FROM produtos
ORDER BY quantidade DESC;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos e ordena os resultados pelo nome em ordem crescente
SELECT nome, preco
FROM produtos
ORDER BY nome;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos e ordena os resultados pelo nome em ordem crescente e pelo preço em ordem crescente
SELECT nome, preco
FROM produtos
ORDER BY nome, preco;

-- Seleciona as colunas 'nome' e 'descricao' da tabela produtos e ordena os resultados pela descricao em ordem crescente
SELECT nome, descricao
FROM produtos
ORDER BY descricao;

-- Seleciona as colunas 'nome' e 'descricao' da tabela produtos e ordena os resultados pela descricao em ordem crescente, com os valores nulos por último
SELECT nome, descricao
FROM produtos
ORDER BY descricao NULLS LAST;

-- Seleciona as colunas 'nome' e 'descricao' da tabela produtos e ordena os resultados pela descricao em ordem crescente, com os valores nulos primeiro
SELECT nome, descricao
FROM produtos
ORDER BY descricao NULLS FIRST;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos onde o preço é maior que 10 e ordena os resultados pelo preço em ordem crescente
SELECT nome, preco
FROM produtos
WHERE preco > 10
ORDER BY preco;

-- Seleciona as colunas 'nome' e 'preco' da tabela produtos onde o preço é maior que 10 e ordena os resultados pelo preço em ordem decrescente
SELECT nome, preco
FROM produtos
WHERE preco > 10
ORDER BY preco DESC;
