-- Cria a tabela publicacao com as colunas id, nome, dataPub e idioma.
CREATE TABLE publicacao (
	id serial CONSTRAINT pk_id_pub PRIMARY KEY,
	nome VARCHAR(50),
	dataPub date,
	idioma VARCHAR(25)
);

-- Cria a tabela livros como uma subclasse de publicacao, adicionando as colunas isbn13, tipoCapa e edicao.
CREATE TABLE livros (
	isbn13 char(13) UNIQUE,
	tipoCapa VARCHAR(20),
	edicao smallint
) INHERITS(publicacao);

-- Cria a tabela revistas como uma subclasse de publicacao, adicionando as colunas issn e numero.
CREATE TABLE revistas (
	issn char(8),
	numero smallint,
	UNIQUE(issn, numero)
) INHERITS(publicacao);

-- Insere uma nova publicação na tabela publicacao.
INSERT INTO publicacao (nome, datapub, idioma)
VALUES ('Le Monde', '20220411', 'Francês');
-- Retorna todas as publicações da tabela publicacao.
SELECT * FROM publicacao;

-- Insere um novo livro na tabela livros.
INSERT INTO livros (nome, datapub, idioma, isbn13, tipocapa, edicao)
VALUES ('50 Ideias de Quimica', '20220202', 'Português', '9786555356519', 'Brochura', 2);
-- Retorna todos os livros da tabela livros.
SELECT * FROM livros;
-- Retorna todas as publicações (incluindo livros) da tabela publicacao.
SELECT * FROM publicacao;

-- Insere uma nova revista na tabela revistas.
INSERT INTO revistas (nome, datapub, idioma, issn, numero)
VALUES 
	('Saber Eletrônica', '19971201', 'Português', '01016717', 299);
-- Retorna todas as revistas da tabela revistas.
SELECT * FROM revistas;
-- Retorna todas as publicações (incluindo revistas) da tabela publicacao.
SELECT * FROM publicacao;

-- Adiciona uma nova coluna nPaginas na tabela publicacao.
ALTER TABLE publicacao 
ADD COLUMN nPaginas SMALLINT;
-- Retorna todas as publicações da tabela publicacao após a alteração.
SELECT * FROM publicacao;

-- Atualiza a data de publicação de uma revista na tabela publicacao.
UPDATE publicacao 
SET datapub = '20200415'
WHERE id = 3;
-- Retorna todas as revistas da tabela revistas após a atualização.
SELECT * FROM revistas;
-- Retorna todas as publicações (incluindo revistas) da tabela publicacao após a atualização.
SELECT * FROM publicacao;
