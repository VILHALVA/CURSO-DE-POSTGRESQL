-- Definição de configurações de sessão
-- Configurações de tempo e codificação
SET statement_timeout = 0; -- Tempo máximo de execução das instruções SQL, 0 indica sem limite
SET lock_timeout = 0; -- Tempo máximo de espera para adquirir uma trava, 0 indica sem limite
SET idle_in_transaction_session_timeout = 0; -- Tempo máximo para sessões inativas em transações
SET client_encoding = 'UTF8'; -- Codificação de caracteres do cliente
SET standard_conforming_strings = on; -- Habilita o tratamento padrão de strings
SELECT pg_catalog.set_config('search_path', '', false); -- Define o caminho de busca para objetos no banco de dados
SET check_function_bodies = false; -- Desativa a verificação de corpos de função
SET xmloption = content; -- Define a opção XML para conteúdo
SET client_min_messages = warning; -- Define o nível mínimo de mensagens para o cliente
SET row_security = off; -- Desativa a segurança por linha

-- Criação do banco de dados "FABIO"
CREATE DATABASE "FABIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';

-- Altera o proprietário do banco de dados "FABIO" para o usuário "postgres"
ALTER DATABASE "FABIO" OWNER TO postgres;

-- Conecta-se ao banco de dados "FABIO"
\connect "FABIO"

-- Configurações de sessão específicas para o banco de dados "FABIO"
-- Configurações de tempo e codificação
SET statement_timeout = 0; -- Tempo máximo de execução das instruções SQL, 0 indica sem limite
SET lock_timeout = 0; -- Tempo máximo de espera para adquirir uma trava, 0 indica sem limite
SET idle_in_transaction_session_timeout = 0; -- Tempo máximo para sessões inativas em transações
SET client_encoding = 'UTF8'; -- Codificação de caracteres do cliente
SET standard_conforming_strings = on; -- Habilita o tratamento padrão de strings
SELECT pg_catalog.set_config('search_path', '', false); -- Define o caminho de busca para objetos no banco de dados
SET check_function_bodies = false; -- Desativa a verificação de corpos de função
SET xmloption = content; -- Define a opção XML para conteúdo
SET client_min_messages = warning; -- Define o nível mínimo de mensagens para o cliente
SET row_security = off; -- Desativa a segurança por linha

SET default_tablespace = ''; -- Define o espaço de tabela padrão
SET default_table_access_method = heap; -- Define o método de acesso a tabela padrão

-- Criação da tabela "clientes"
CREATE TABLE public.clientes (
    codigo integer NOT NULL, -- Coluna de código do cliente
    nome character varying(20) NOT NULL, -- Coluna de nome do cliente
    sobrenome character varying(40) NOT NULL -- Coluna de sobrenome do cliente
);

-- Define o proprietário da tabela "clientes" como "postgres"
ALTER TABLE public.clientes OWNER TO postgres;

-- Criação da tabela "pedidos"
CREATE TABLE public.pedidos (
    codigo integer NOT NULL, -- Coluna de código do pedido
    cliente integer NOT NULL, -- Coluna de código do cliente associado ao pedido
    produto integer NOT NULL, -- Coluna de código do produto associado ao pedido
    quantidade smallint NOT NULL -- Coluna de quantidade do produto no pedido
);

-- Define o proprietário da tabela "pedidos" como "postgres"
ALTER TABLE public.pedidos OWNER TO postgres;

-- Criação da sequência para a coluna "codigo" da tabela "pedidos"
CREATE SEQUENCE public.pedidos_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Define o proprietário da sequência como "postgres"
ALTER SEQUENCE public.pedidos_codigo_seq OWNER TO postgres;

-- Define que a sequência "pedidos_codigo_seq" é usada pela coluna "codigo" da tabela "pedidos"
ALTER SEQUENCE public.pedidos_codigo_seq OWNED BY public.pedidos.codigo;

-- Criação da tabela "produtos"
CREATE TABLE public.produtos (
    codigo integer NOT NULL, -- Coluna de código do produto
    nome character varying(30) NOT NULL, -- Coluna de nome do produto
    descricao text, -- Coluna de descrição do produto
    preco numeric NOT NULL, -- Coluna de preço do produto
    quantidade smallint DEFAULT 0, -- Coluna de quantidade em estoque do produto, com valor padrão de 0
    CONSTRAINT produtos_preco_check CHECK ((preco > (0)::numeric)) -- Restrição de verificação do preço do produto
);

-- Define o proprietário da tabela "produtos" como "postgres"
ALTER TABLE public.produtos OWNER TO postgres;

-- Define que o valor padrão da coluna "codigo" da tabela "pedidos" é gerado pela sequência "pedidos_codigo_seq"
ALTER TABLE ONLY public.pedidos ALTER COLUMN codigo SET DEFAULT nextval('public.pedidos_codigo_seq'::regclass);

-- Instruções COPY para carregar dados nas tabelas
COPY public.clientes (codigo, nome, sobrenome) FROM stdin;
\.

COPY public.pedidos (codigo, cliente, produto, quantidade) FROM stdin;
\.

COPY public.produtos (codigo, nome, descricao, preco, quantidade) FROM stdin;
\.

-- Define o próximo valor da sequência "pedidos_codigo_seq" como 1
SELECT pg_catalog.setval('public.pedidos_codigo_seq', 1, false);

-- Adiciona a restrição de chave primária à coluna "codigo" da tabela "clientes"
ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (codigo);

-- Adiciona a restrição de chave primária à coluna "codigo" da tabela "pedidos"
ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (codigo);

-- Adiciona a restrição de chave primária à coluna "codigo" da tabela "produtos"
ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (codigo);

-- Adiciona a restrição de chave estrangeira à coluna "cliente" da tabela "pedidos"
ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(codigo);

-- Adiciona a restrição de chave estrangeira à coluna "produto" da tabela "pedidos"
ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_produto_fkey FOREIGN KEY (produto) REFERENCES public.produtos(codigo);
