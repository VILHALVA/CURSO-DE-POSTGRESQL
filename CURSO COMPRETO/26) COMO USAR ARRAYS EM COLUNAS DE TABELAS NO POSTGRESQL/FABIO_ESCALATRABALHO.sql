-- Criando a tabela 'escalaTrabalho' para armazenar os códigos dos funcionários e suas respectivas escalas de trabalho.
CREATE TABLE escalaTrabalho (
	codFunc smallint, -- Define o código do funcionário como um inteiro pequeno.
	escala char(3)[] -- Define a escala de trabalho como um array de caracteres com tamanho fixo de 3.
);

-- Inserindo dados na tabela 'escalaTrabalho' para representar as escalas de trabalho dos funcionários.
INSERT INTO escalatrabalho(codfunc, escala)
VALUES
	(1, '{"SEG", "TER", "QUA"}'), -- Funcionário 1 trabalha nas segundas, terças e quartas-feiras.
	(2, '{"QUI", "SEX", "SAB"}'), -- Funcionário 2 trabalha nas quintas, sextas e sábados.
	(3, '{"SEG", "QUA", "SEX"}'); -- Funcionário 3 trabalha nas segundas, quartas e sextas-feiras.

-- Selecionando todos os dados da tabela 'escalaTrabalho'.
SELECT * FROM escalaTrabalho;

-- Selecionando a escala de trabalho do funcionário de código 2.
SELECT escala FROM escalaTrabalho
WHERE codfunc = 2;

-- Selecionando o dia da semana em que cada funcionário começa a trabalhar.
SELECT codfunc, escala[1]
FROM escalaTrabalho;

-- Selecionando os códigos dos funcionários que trabalham às quartas-feiras.
SELECT codfunc FROM escalaTrabalho
WHERE 'QUA' = ANY(escala);

-- Alterando a escala de trabalho do funcionário de código 3 para terças, quintas e sábados.
UPDATE escalaTrabalho
SET escala = ARRAY['TER', 'QUI', 'SAB']
WHERE codFunc = 3;

-- Selecionando todos os dados atualizados da tabela 'escalaTrabalho'.
SELECT * FROM escalaTrabalho;
