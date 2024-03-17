# COMO CRIAR TABELAS COM CREATE TABLE
Para criar tabelas no PostgreSQL usando SQL, você pode usar o comando `CREATE TABLE`. Abaixo, descrevo a sintaxe do comando `CREATE TABLE` e forneço exemplos de como criar tabelas com diferentes recursos, como constraints, colunas de auto-incremento, chaves primárias, chaves estrangeiras e relacionamentos entre tabelas.

**Sintaxe do Comando CREATE TABLE (SQL):**

A sintaxe geral para criar uma tabela no PostgreSQL usando o comando `CREATE TABLE` é a seguinte:

```sql
CREATE TABLE nome_da_tabela (
    nome_da_coluna tipo_de_dado [constraints],
    nome_da_coluna tipo_de_dado [constraints],
    ...
);
```

Aqui está uma descrição detalhada da sintaxe:

- `CREATE TABLE`: Inicia o comando de criação de tabela.
- `nome_da_tabela`: Especifica o nome da tabela que você deseja criar.
- `nome_da_coluna`: Define o nome da coluna.
- `tipo_de_dado`: Define o tipo de dados que a coluna irá armazenar.
- `[constraints]`: Define restrições opcionais, como `NOT NULL`, `DEFAULT`, `CHECK`, etc.

**Exemplo de Criação de Tabela:**

Aqui está um exemplo de criação de uma tabela chamada "pessoas" com algumas colunas:

```sql
CREATE TABLE pessoas (
    id serial PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    email VARCHAR(100) UNIQUE,
    data_de_nascimento DATE,
    criado_em TIMESTAMP DEFAULT current_timestamp
);
```

Neste exemplo, a tabela "pessoas" é criada com as seguintes colunas:

- `id`: Uma coluna de auto-incremento usada como chave primária.
- `nome`: Uma coluna de texto que não pode ser nula.
- `idade`: Uma coluna numérica.
- `email`: Uma coluna de texto única (não pode haver duplicatas).
- `data_de_nascimento`: Uma coluna para armazenar datas.
- `criado_em`: Uma coluna que registra a data e hora de criação com um valor padrão.

**Chaves Primárias e Chaves Estrangeiras:**

Para criar uma chave primária, você pode usar a cláusula `PRIMARY KEY` em uma coluna. Para criar uma chave estrangeira, use a cláusula `REFERENCES` em uma coluna que faz referência a outra tabela.

**Exemplo de Chave Primária e Chave Estrangeira:**

```sql
CREATE TABLE pedidos (
    id serial PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
```

Neste exemplo, a tabela "pedidos" possui uma coluna `cliente_id` que é uma chave estrangeira que faz referência à coluna `id` na tabela "clientes".

**Visualizar Tabelas no pgAdmin4:**

Para visualizar tabelas no pgAdmin 4:

1. Abra o pgAdmin 4 e conecte-se ao seu servidor PostgreSQL.

2. No painel de navegação à esquerda, expanda o servidor, vá para "Databases" e selecione o banco de dados no qual você criou as tabelas.

3. Expanda "Schemas", depois "public" e você verá a seção "Tables", onde todas as tabelas que você criou devem ser listadas.

**Usar a Ferramenta Query Tool no pgAdmin:**

A ferramenta Query Tool no pgAdmin permite que você execute comandos SQL. Para usá-la:

1. No pgAdmin 4, clique com o botão direito no banco de dados no qual deseja executar os comandos SQL.

2. Escolha "Query Tool" no menu de contexto.

3. Na Query Tool, você pode digitar e executar comandos SQL para criar tabelas, inserir dados, fazer consultas e muito mais.

Com essas informações e exemplos, você deve ser capaz de criar tabelas no PostgreSQL com diferentes recursos e usar o pgAdmin 4 para gerenciar suas tabelas e executar comandos SQL.