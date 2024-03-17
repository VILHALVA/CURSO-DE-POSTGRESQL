# CRIAR TABELAS HERDADAS - OO 
No PostgreSQL, você pode criar tabelas herdadas para implementar a herança de objetos (OO - Orientação a Objetos) em bancos de dados. A herança de tabelas permite criar uma relação entre uma tabela "pai" e uma ou mais tabelas "filhas". As tabelas filhas herdam a estrutura da tabela pai, o que pode ser útil para modelar dados comuns compartilhados por várias entidades em uma hierarquia. Aqui estão os passos para criar tabelas herdadas no PostgreSQL:

**Passo 1: Criar a Tabela Pai**

Primeiro, crie a tabela "pai" que conterá os atributos comuns compartilhados por todas as tabelas "filhas". Por exemplo:

```sql
CREATE TABLE entidade (
    id serial PRIMARY KEY,
    nome text,
    descricao text
);
```

Neste exemplo, a tabela "entidade" é a tabela pai que contém os atributos "id", "nome" e "descricao".

**Passo 2: Criar as Tabelas Filhas**

Agora, crie as tabelas "filhas" que herdarão os atributos da tabela "pai" usando a cláusula `INHERITS`. Cada tabela filha pode adicionar seus próprios atributos, além dos atributos herdados.

```sql
CREATE TABLE pessoa (
    documento text
) INHERITS (entidade);

CREATE TABLE produto (
    preço numeric
) INHERITS (entidade);
```

Neste exemplo, criamos duas tabelas filhas, "pessoa" e "produto". Cada uma delas herda os atributos "id", "nome" e "descricao" da tabela "entidade" e adiciona seus próprios atributos, como "documento" e "preço", respectivamente.

**Passo 3: Inserir Dados nas Tabelas Filhas**

Agora você pode inserir dados nas tabelas filhas, conforme necessário:

```sql
-- Inserir uma pessoa
INSERT INTO pessoa (nome, documento) VALUES ('João', '123456789');

-- Inserir um produto
INSERT INTO produto (nome, preço) VALUES ('Produto A', 19.99);
```

**Passo 4: Consultar Dados de Tabelas Herdadas**

Você pode consultar os dados das tabelas filhas como faria com qualquer outra tabela:

```sql
-- Consultar todas as entidades (pais e filhas)
SELECT * FROM entidade;

-- Consultar todas as pessoas
SELECT * FROM pessoa;

-- Consultar todos os produtos
SELECT * FROM produto;
```

As tabelas herdadas permitem modelar hierarquias de objetos de forma eficaz, mantendo os atributos comuns em uma tabela pai e adicionando atributos específicos nas tabelas filhas. Isso pode ser útil em casos em que você deseja criar um esquema de banco de dados que reflete a estrutura de herança de classes em um sistema orientado a objetos. Certifique-se de definir corretamente as relações de herança e as chaves primárias nas tabelas filhas para garantir a integridade dos dados.