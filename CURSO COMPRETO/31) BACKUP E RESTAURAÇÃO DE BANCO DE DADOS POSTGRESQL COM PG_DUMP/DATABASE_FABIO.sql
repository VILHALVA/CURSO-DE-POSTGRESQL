--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-16 21:24:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS "FABIO";
--
-- TOC entry 4846 (class 1262 OID 16400)
-- Name: FABIO; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "FABIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "FABIO" OWNER TO postgres;

\connect "FABIO"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16401)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    codigo integer NOT NULL,
    nome character varying(20) NOT NULL,
    sobrenome character varying(40) NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16438)
-- Name: escalatrabalho; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.escalatrabalho (
    codfunc smallint,
    escala character(3)[]
);


ALTER TABLE public.escalatrabalho OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16464)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicacao (
    id integer NOT NULL,
    nome character varying(50),
    datapub date,
    idioma character varying(25),
    npaginas smallint
);


ALTER TABLE public.publicacao OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16470)
-- Name: livros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livros (
    isbn13 character(13),
    tipocapa character varying(20),
    edicao smallint
)
INHERITS (public.publicacao);


ALTER TABLE public.livros OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16416)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    codigo integer NOT NULL,
    cliente integer NOT NULL,
    produto integer NOT NULL,
    quantidade smallint NOT NULL
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16415)
-- Name: pedidos_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_codigo_seq OWNER TO postgres;

--
-- TOC entry 4847 (class 0 OID 0)
-- Dependencies: 217
-- Name: pedidos_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_codigo_seq OWNED BY public.pedidos.codigo;


--
-- TOC entry 225 (class 1259 OID 16483)
-- Name: peds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peds (
    id integer NOT NULL,
    pedido json NOT NULL
);


ALTER TABLE public.peds OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16482)
-- Name: peds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.peds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.peds_id_seq OWNER TO postgres;

--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 224
-- Name: peds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.peds_id_seq OWNED BY public.peds.id;


--
-- TOC entry 216 (class 1259 OID 16406)
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    codigo integer NOT NULL,
    nome character varying(30) NOT NULL,
    descricao text,
    preco numeric NOT NULL,
    quantidade smallint DEFAULT 0,
    CONSTRAINT produtos_preco_check CHECK ((preco > (0)::numeric))
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16463)
-- Name: publicacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publicacao_id_seq OWNER TO postgres;

--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 220
-- Name: publicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicacao_id_seq OWNED BY public.publicacao.id;


--
-- TOC entry 223 (class 1259 OID 16476)
-- Name: revistas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.revistas (
    issn character(8),
    numero smallint
)
INHERITS (public.publicacao);


ALTER TABLE public.revistas OWNER TO postgres;

--
-- TOC entry 4667 (class 2604 OID 16473)
-- Name: livros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros ALTER COLUMN id SET DEFAULT nextval('public.publicacao_id_seq'::regclass);


--
-- TOC entry 4665 (class 2604 OID 16419)
-- Name: pedidos codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN codigo SET DEFAULT nextval('public.pedidos_codigo_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 16486)
-- Name: peds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peds ALTER COLUMN id SET DEFAULT nextval('public.peds_id_seq'::regclass);


--
-- TOC entry 4666 (class 2604 OID 16467)
-- Name: publicacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao ALTER COLUMN id SET DEFAULT nextval('public.publicacao_id_seq'::regclass);


--
-- TOC entry 4668 (class 2604 OID 16479)
-- Name: revistas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revistas ALTER COLUMN id SET DEFAULT nextval('public.publicacao_id_seq'::regclass);


--
-- TOC entry 4830 (class 0 OID 16401)
-- Dependencies: 215
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (codigo, nome, sobrenome) FROM stdin;
1	FABIO	DOS REIS
2	MÔNICA 	SILVEIRA
3	ANA 	TEIXEIRA
\.


--
-- TOC entry 4834 (class 0 OID 16438)
-- Dependencies: 219
-- Data for Name: escalatrabalho; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.escalatrabalho (codfunc, escala) FROM stdin;
1	{SEG,TER,QUA}
2	{QUI,SEX,SAB}
3	{TER,QUI,SAB}
\.


--
-- TOC entry 4837 (class 0 OID 16470)
-- Dependencies: 222
-- Data for Name: livros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livros (id, nome, datapub, idioma, isbn13, tipocapa, edicao, npaginas) FROM stdin;
2	50 Ideias de Quimica	2022-02-02	Português	9786555356519	Brochura	2	\N
\.


--
-- TOC entry 4833 (class 0 OID 16416)
-- Dependencies: 218
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (codigo, cliente, produto, quantidade) FROM stdin;
4	1	2	3
5	2	3	2
6	1	3	4
7	2	6	3
8	2	5	2
9	3	8	5
\.


--
-- TOC entry 4840 (class 0 OID 16483)
-- Dependencies: 225
-- Data for Name: peds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peds (id, pedido) FROM stdin;
1	{"comprador": "Fábio", "produtos": {"bebida": "suco de caju", "comida": "Pizza de Atum"}}
2	{"comprador": "Mônica", "produtos": {"bebida": "Água Tônica", "comida": "Beirute"}}
3	{"comprador": "Lauro", "produtos": {"bebida": "Campari", "comida": "Espaguete"}}
4	{"comprador": "Henrique", "produtos": {"bebida": "Coca-cola", "comida": "Feijoada"}}
\.


--
-- TOC entry 4831 (class 0 OID 16406)
-- Dependencies: 216
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (codigo, nome, descricao, preco, quantidade) FROM stdin;
1	Álcool em gel	Garrafa de alcool em gel de 1 litro	15.609000	20
3	Pasta de dentes	Tubo de pasta de dentes de 90g	4.356000	12
6	Detergente	Detergente líquido 500 ml	2.286900	32
7	Leite Integral	Leite Integral de 1 litro	5.566000	70
8	Refrigerante	Garrafa de refrigerante de 600 ml	4.477000	14
9	Refrigerante	Garrafa de refrigerante de 1 litro	8.336900	16
10	Refrigerante	Lata de refrigerante de 350 ml	3.617900	45
11	Margarida	Pote de Margarida Vegetal	3.872000	8
2	Luvas de Latex	Caixa de luvas de Latex com 100 únidades	39.325000	13
5	Enxaguante Bucal	Antisséptico bucal de 500 ml	20.570000	16
13	Biscoito	Pacote de Biscoito integral 110g	3.75	16
\.


--
-- TOC entry 4836 (class 0 OID 16464)
-- Dependencies: 221
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publicacao (id, nome, datapub, idioma, npaginas) FROM stdin;
1	Le Monde	2022-04-11	Francês	\N
\.


--
-- TOC entry 4838 (class 0 OID 16476)
-- Dependencies: 223
-- Data for Name: revistas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.revistas (id, nome, datapub, idioma, issn, numero, npaginas) FROM stdin;
3	Saber Eletrônica	2020-04-15	Português	01016717	299	\N
\.


--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 217
-- Name: pedidos_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_codigo_seq', 9, true);


--
-- TOC entry 4851 (class 0 OID 0)
-- Dependencies: 224
-- Name: peds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.peds_id_seq', 4, true);


--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 220
-- Name: publicacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publicacao_id_seq', 3, true);


--
-- TOC entry 4672 (class 2606 OID 16405)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4680 (class 2606 OID 16475)
-- Name: livros livros_isbn13_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_isbn13_key UNIQUE (isbn13);


--
-- TOC entry 4676 (class 2606 OID 16421)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4684 (class 2606 OID 16490)
-- Name: peds peds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peds
    ADD CONSTRAINT peds_pkey PRIMARY KEY (id);


--
-- TOC entry 4678 (class 2606 OID 16469)
-- Name: publicacao pk_id_pub; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao
    ADD CONSTRAINT pk_id_pub PRIMARY KEY (id);


--
-- TOC entry 4674 (class 2606 OID 16414)
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4682 (class 2606 OID 16481)
-- Name: revistas revistas_issn_numero_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revistas
    ADD CONSTRAINT revistas_issn_numero_key UNIQUE (issn, numero);


--
-- TOC entry 4685 (class 2606 OID 16422)
-- Name: pedidos pedidos_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(codigo);


--
-- TOC entry 4686 (class 2606 OID 16427)
-- Name: pedidos pedidos_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_produto_fkey FOREIGN KEY (produto) REFERENCES public.produtos(codigo);


-- Completed on 2024-03-16 21:24:18

--
-- PostgreSQL database dump complete
--

