-- Cria uma tabela chamada "exemplo" com uma coluna "valores" que é um array de inteiros.
CREATE TABLE exemplo (
    id serial PRIMARY KEY,
    valores integer[]
);

-- Insere um array de inteiros na coluna "valores" da tabela "exemplo".
INSERT INTO exemplo (valores)
VALUES ('{1, 2, 3}');

-- Consulta os registros na tabela "exemplo" em que o array "valores" contém o valor 2.
SELECT * FROM exemplo
WHERE valores @> '{2}';

-- Adiciona o valor 4 ao array "valores" no registro com ID 1 na tabela "exemplo".
UPDATE exemplo
SET valores = array_append(valores, 4)
WHERE id = 1;

-- Remove o valor 2 do array "valores" no registro com ID 1 na tabela "exemplo".
UPDATE exemplo
SET valores = array_remove(valores, 2)
WHERE id = 1;

-- Cria uma tabela chamada "produtos" com uma coluna "descrições" que é um array de texto.
CREATE TABLE produtos (
    id serial PRIMARY KEY,
    descrições text[]
);
