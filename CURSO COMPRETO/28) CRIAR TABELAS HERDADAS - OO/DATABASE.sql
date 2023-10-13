-- Cria uma tabela chamada "entidade" para servir como a tabela pai.
CREATE TABLE entidade (
    id serial PRIMARY KEY,   -- Um identificador único para cada entidade.
    nome text,              -- O nome da entidade.
    descricao text          -- Uma descrição da entidade.
);

-- Cria a tabela "pessoa" como uma tabela filha da "entidade".
CREATE TABLE pessoa (
    documento text
) INHERITS (entidade);

-- Cria a tabela "produto" como uma tabela filha da "entidade".
CREATE TABLE produto (
    preço numeric
) INHERITS (entidade);

-- Inserir uma pessoa na tabela "pessoa" com seu nome e número de documento.
INSERT INTO pessoa (nome, documento) VALUES ('João', '123456789');

-- Inserir um produto na tabela "produto" com nome e preço.
INSERT INTO produto (nome, preço) VALUES ('Produto A', 19.99);

-- Consultar todas as entidades (pais e filhas) na tabela "entidade".
SELECT * FROM entidade;

-- Consultar todas as pessoas na tabela "pessoa".
SELECT * FROM pessoa;

-- Consultar todos os produtos na tabela "produto".
SELECT * FROM produto;
