-- A sintaxe básica para a criação de uma subconsulta SQL é a seguinte:
SELECT coluna(s)
FROM tabela(s)
WHERE coluna operador (SELECT coluna
                       FROM tabela WHERE condições);


-- Vamos efetuar uma consulta à tabela de livros de nosso banco de dados db_biblioteca, retornando os livros (tbl_livro) publicados pela editora Wiley (tbl_editora), porém usando uma subconsulta em vez de usar INNER JOIN:
SELECT NomeLivro, PrecoLivro, IdEditora
FROM tbl_livro
WHERE IdEditora = 
    (SELECT IdEditora
     FROM tbl_editora
     WHERE NomeEditora = 'Wiley');

-- Podemos usar subconsultas também com a instrução de inserção de registros INSERT INTO, e outras instruções de linguagem de manipulação de dados (DML). Com a instrução INSERT INTO, os dados retornados por uma subconsulta são usados para realizar a inserção de um registro em outra tabela.
INSERT INTO tabela (colunas)
                   (SELECT coluna(s)
                   FROM tabela(s)
                   WHERE coluna operador valor);

-- Exemplo: Vamos criar uma tabela de exemplo chamada de LivrosAssuntos, contendo os campos ID, NomeLivro e NomeAssunto:
CREATE TABLE LivrosAssuntos (
  ID TINYINT PRIMARY KEY AUTO_INCREMENT,
  NomeLivro VARCHAR(50),
  NomeAssunto VARCHAR(40)
)

-- Usando uma subconsulta, vamos popular esta nova tabela com os livros que tenham mais de 600 páginas e seus respectivos assuntos:
INSERT INTO LivrosAssuntos (NomeLivro, NomeAssunto)
  (SELECT L.NomeLivro, A,NomeAssunto
  FROM tbl_livro L
  INNER JOIN tbl_assunto A
    ON L.IdAssunto = A.IdAssunto
  WHERE L.NumPaginas >= 600);

-- Após executar o comando, efetuamos uma consulta à nova tabela para verificar se os dados foram inseridos com sucesso:
SELECT * FROM LivrosAssuntos

-- Também podemos usar uma subconsulta com uma instrução UPDATE, permitindo atualizar os valores de registros de uma tabela com base no resultado retornado pela subconsulta.
UPDATE tabela
SET coluna(s) = valor
WHERE coluna operador (SELECT coluna(s)
                       FROM tabela
                       WHERE coluna operador valor);

-- Exemplo: Vamos aumentar os preços dos livros da editora Microsoft Press em 12% usando a declaração UPDATE. Como não sabemos o ID desta editora de memória, vamos usar uma subconsulta para nos auxiliar:
UPDATE tbl_livro
SET PrecoLivro = PrecoLivro * 1.12
WHERE IdEditora = 
    (SELECT IdEditora
     FROM tbl_Editora
     WHERE NomeEditora = 'Microsoft Press');

-- Finalmente, podemos usar subconsultas em instruções DELETE, selecionando o valor a ser excluído de uma tabela de acordo com o retorno da subconsulta.
DELETE FROM tabela
WHERE coluna operador (SELECT coluna
                       FROM tabela
                       WHERE coluna operador valor);

-- Exemplo: Desejamos excluir os livros publicados cujo assunto é “Dinossauros“, porém não sabemos o ID deste assunto na tabela de livros. Suponha também que não sabemos com exatidão se o nome do assunto é “Dinossauros”, “Dinossauro” (no singular), “Dinos” ou algo do gênero – apenas os lembramos que o nome do assunto começa com “Dino”:
DELETE FROM tbl_livro
WHERE IdAssunto =
   (SELECT IdAssunto
    FROM tbl_Assunto
    WHERE NomeAssunto LIKE 'Dino%');

-- Podemos aninhar uma subconsulta dentro de outra subconsulta, da mesma maneira que uma subconsulta é aninhada dentro de uma consulta principal. Neste caso, a subconsulta mais interna é resolvida primeiro, depois a subconsulta intermediária, e finalmente o resultado é repassado para a consulta principal.
SELECT coluna(s)
FROM tabela(s)
WHERE coluna operador (SELECT coluna
                       FROM tabela
                       WHERE coluna operador (SELECT coluna
                                              FROM tabela
                                              WHERE coluna operador valor);