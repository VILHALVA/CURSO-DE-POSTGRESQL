-- Comando para criar uma tabela chamada "pessoas"
CREATE TABLE pessoas (
    -- Coluna "id" que é uma chave primária (auto-incremento)
    id serial PRIMARY KEY,
    
    -- Coluna "nome" para armazenar nomes (não pode ser nulo)
    nome VARCHAR(50) NOT NULL,
    
    -- Coluna "idade" para armazenar valores numéricos
    idade INT,
    
    -- Coluna "email" para armazenar endereços de e-mail (único)
    email VARCHAR(100) UNIQUE,
    
    -- Coluna "data_de_nascimento" para armazenar datas
    data_de_nascimento DATE,
    
    -- Coluna "criado_em" para registrar a data e hora de criação (padrão: data/hora atual)
    criado_em TIMESTAMP DEFAULT current_timestamp
);

-- Comando para criar uma tabela chamada "pedidos"
CREATE TABLE pedidos (
    -- Coluna "id" que é uma chave primária (auto-incremento)
    id serial PRIMARY KEY,
    
    -- Coluna "cliente_id" para armazenar o ID do cliente (chave estrangeira)
    cliente_id INT,
    
    -- Coluna "data_pedido" para armazenar datas
    data_pedido DATE,
    
    -- Chave estrangeira que faz referência à tabela "clientes" e sua coluna "id"
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
