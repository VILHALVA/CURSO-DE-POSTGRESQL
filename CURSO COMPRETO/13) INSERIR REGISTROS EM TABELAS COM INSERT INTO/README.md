# INSERIR REGISTROS EM TABELAS COM INSERT INTO
Para inserir registros em tabelas no PostgreSQL, você pode usar o comando `INSERT INTO`. Abaixo, descrevo a sintaxe do comando `INSERT INTO` e forneço exemplos de como inserir registros em uma tabela.

**Sintaxe do Comando INSERT INTO (SQL):**

A sintaxe geral para inserir registros em uma tabela no PostgreSQL usando o comando `INSERT INTO` é a seguinte:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

Aqui está uma descrição detalhada da sintaxe:

- `INSERT INTO`: Inicia o comando de inserção de registros.
- `nome_da_tabela`: Especifica o nome da tabela na qual você deseja inserir registros.
- `(coluna1, coluna2, coluna3, ...)`: Lista as colunas nas quais você deseja inserir valores.
- `VALUES (valor1, valor2, valor3, ...)`: Lista os valores que você deseja inserir nas colunas correspondentes.

**Exemplo de Inserção de Registros:**

Suponha que temos uma tabela chamada "pessoas" com as seguintes colunas: `id`, `nome`, `idade`, `email` e `data_de_nascimento`. Podemos inserir registros da seguinte maneira:

```sql
-- Inserir um novo registro na tabela "pessoas"
INSERT INTO pessoas (nome, idade, email, data_de_nascimento)
VALUES ('João Silva', 30, 'joao@email.com', '1993-05-15');

-- Inserir outro registro
INSERT INTO pessoas (nome, idade, email, data_de_nascimento)
VALUES ('Maria Souza', 25, 'maria@email.com', '1998-08-20');
```

Neste exemplo, estamos inserindo dois registros na tabela "pessoas". Para cada inserção, especificamos as colunas nas quais desejamos inserir valores e os valores correspondentes.

**Inserção de Registros com Valores de Outra Tabela:**

Você também pode inserir registros em uma tabela com base em valores de outra tabela. Veja um exemplo:

```sql
-- Inserir registros na tabela "pedidos" com base em outra tabela "clientes"
INSERT INTO pedidos (cliente_id, data_pedido)
SELECT id, '2023-10-13' FROM clientes;
```

Neste exemplo, estamos inserindo registros na tabela "pedidos" com base na tabela "clientes". Estamos especificando as colunas `cliente_id` e `data_pedido` e usando uma consulta `SELECT` para buscar os valores da tabela "clientes".

Você pode adaptar esses exemplos ao seu próprio esquema de banco de dados e aos nomes de suas tabelas e colunas. Certifique-se de que os tipos de dados correspondam e de que os valores sejam válidos.