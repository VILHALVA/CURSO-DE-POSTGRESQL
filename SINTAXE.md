# SINTAXE
## TIPOS PRIMITIVOS:
O PostgreSQL é um sistema de gerenciamento de banco de dados relacional (RDBMS) amplamente utilizado. Ele suporta vários tipos de dados primitivos que podem ser usados para definir colunas em tabelas. Abaixo estão alguns dos tipos de dados primitivos mais comuns no PostgreSQL:

* **1. INTEGER ou INT:** Representa números inteiros, positivos ou negativos, com tamanho fixo. Exemplos incluem INTEGER, SMALLINT e BIGINT.
* **2. FLOAT:** Representa números de ponto flutuante com precisão simples. Pode armazenar números decimais, mas a precisão pode ser limitada.
* **3. DOUBLE PRECISION:** Representa números de ponto flutuante com precisão dupla. É capaz de armazenar números decimais com maior precisão do que o tipo FLOAT.
* **4. NUMERIC:** É usado para armazenar números decimais de alta precisão. É uma opção adequada para valores monetários e cálculos que exigem alta precisão decimal.
* **5. CHAR:** Armazena uma sequência de caracteres com tamanho fixo. O tamanho é especificado entre parênteses, como CHAR(10). O espaço não utilizado é preenchido com espaços em branco.
* **6. VARCHAR:** Armazena uma sequência de caracteres com tamanho variável. O tamanho máximo é especificado entre parênteses, como VARCHAR(255). Ele ocupa apenas o espaço necessário para armazenar os dados.
* **7. TEXT:** Armazena grandes volumes de texto, como uma sequência longa de caracteres. Não possui limite de tamanho.
* **8. DATE:** Armazena valores de data no formato 'AAAA-MM-DD'. Pode ser usado para armazenar datas sem informações de hora.
* **9. TIME:** Armazena valores de tempo no formato 'HH:MM:SS'. Pode ser usado para armazenar valores de hora sem informações de data.
* **10. TIMESTAMP:** Armazena um valor de data e hora no formato 'AAAA-MM-DD HH:MM:SS'. Geralmente usado para registrar a data e hora em que um registro foi inserido ou atualizado.

Esses são apenas alguns dos tipos de dados primitivos suportados pelo PostgreSQL. Existem outros tipos, como BOOLEAN, BYTEA, JSON, entre outros, que oferecem funcionalidades adicionais e opções de armazenamento.

Aqui está um exemplo de como você pode criar uma tabela no PostgreSQL usando os tipos de dados mencionados anteriormente, juntamente com algumas opções adicionais:

```sql
CREATE TABLE minha_tabela (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INTEGER,
    altura REAL,
    salario NUMERIC(10, 2),
    descricao TEXT,
    data_nascimento DATE,
    hora_atual TIME,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Neste exemplo, criamos uma tabela chamada "minha_tabela" com as seguintes colunas:

- "id": Um número inteiro único que é autoincrementado.
- "nome": Uma sequência de caracteres com tamanho máximo de 255.
- "idade": Um número inteiro que representa a idade.
- "altura": Um número de ponto flutuante para representar a altura.
- "salario": Um número decimal com uma parte inteira de tamanho máximo de 10 dígitos e 2 casas decimais.
- "descricao": Uma coluna de texto para armazenar uma descrição.
- "data_nascimento": Uma data.
- "hora_atual": Uma hora específica.
- "data_atualizacao": Um registro automático da data e hora da última atualização.

A coluna "id" é definida como chave primária usando a cláusula PRIMARY KEY, garantindo que cada registro tenha um valor exclusivo para essa coluna.

Observe que essas definições são apenas um exemplo e podem ser ajustadas de acordo com as necessidades específicas do seu projeto.

## COMANDOS MAIS USADOS:
### NO BANCO DE DADOS:
Aqui estão alguns dos principais comandos do PostgreSQL para criação, seleção e exclusão de bancos de dados:

* **1. CREATE DATABASE:** O comando CREATE DATABASE é usado para criar um novo banco de dados no servidor.
Exemplo:
```sql
CREATE DATABASE meu_banco_de_dados;
```

* **2. \c:** O comando \c é usado para conectar-se a um banco de dados específico no qual você deseja trabalhar.
Exemplo:
```sql
\c meu_banco_de_dados;
```

* **3. \l:** O comando \l é usado para exibir uma lista de todos os bancos de dados disponíveis no servidor.
Exemplo:
```sql
\l;
```

* **4. DROP DATABASE:** O comando DROP DATABASE é usado para excluir um banco de dados existente do servidor. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura do banco de dados.
Exemplo:
```sql
DROP DATABASE meu_banco_de_dados;
```

Esses são alguns dos comandos básicos do PostgreSQL relacionados à criação, seleção e exclusão de bancos de dados. Lembre-se de que esses comandos são específicos do PostgreSQL e podem variar um pouco em outros sistemas de gerenciamento de banco de dados.

### NAS TABELAS:
Aqui estão alguns dos principais comandos do PostgreSQL para criação, alteração e exclusão de tabelas:

* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Você precisa especificar o nome da tabela e as colunas que ela terá, juntamente com seus tipos de dados e outras opções.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);
```

* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Você pode adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e muito mais.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN idade INTEGER,
ALTER COLUMN nome TYPE VARCHAR(100),
DROP COLUMN email;
```

* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura da tabela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```

* **4. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```

* **5. RENAME TABLE:** O comando RENAME TABLE é usado para renomear uma tabela existente no banco de dados.
Exemplo:
```sql
ALTER TABLE minha_tabela RENAME TO nova_tabela;
```

* **6. \dt:** O comando \dt é usado para exibir uma lista de todas as tabelas existentes no banco de dados.
Exemplo:
```sql
\dt;
```

* **7. \d:** O comando \d é usado para exibir a estrutura de uma tabela, ou seja, as colunas e seus tipos de dados.
Exemplo:
```sql
\d minha_tabela;
```

Esses são apenas alguns dos principais comandos do PostgreSQL relacionados à criação, alteração e exclusão de tabelas. Existem muitos outros comandos e opções disponíveis para manipular e gerenciar bancos de dados no PostgreSQL.

## CATEGORIAS DE COMANDOS:
### DDL:
Os comandos DDL (Data Definition Language) são um conjunto de comandos utilizados no PostgreSQL para definir e gerenciar a estrutura dos objetos de um banco de dados, como tabelas, índices e restrições. Abaixo estão alguns dos principais comandos DDL do PostgreSQL:

* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Ele define o nome da tabela, suas colunas, tipos de dados, restrições e índices.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INTEGER
);
```

* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Pode ser usado para adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e índices, entre outras operações.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN sobrenome VARCHAR(50),
ALTER COLUMN idade SET NOT NULL,
DROP COLUMN idade;
```

* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados juntamente com todos os dados e estrutura associados a ela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```

* **4. CREATE INDEX:** O comando CREATE INDEX é usado para criar um índice em uma ou mais colunas de uma tabela. Isso melhora a velocidade de busca e classificação dos dados.
Exemplo:
```sql
CREATE INDEX idx_nome ON minha_tabela (nome);
```

* **5. DROP INDEX:** O comando DROP INDEX é usado para excluir um índice existente de uma tabela.
Exemplo:
```sql
DROP INDEX idx_nome;
```

* **6. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```

Esses são apenas alguns dos comandos DDL mais comumente usados no PostgreSQL. Eles permitem criar, modificar e excluir objetos do banco de dados, bem como definir índices para otimizar o desempenho das consultas.

### DML:
Os comandos DML (Data Manipulation Language) são um conjunto de comandos utilizados no PostgreSQL para manipular dados dentro de tabelas existentes. Eles são usados para inserir, atualizar, excluir e consultar dados. Abaixo estão alguns dos principais comandos DML do PostgreSQL:

* **1. SELECT:** O comando SELECT é usado para consultar e recuperar dados de uma tabela ou conjunto de tabelas. Ele permite especificar colunas, condições de filtro, ordenação e junções entre tabelas.
Exemplo:
```sql
SELECT nome, idade FROM minha_tabela WHERE idade > 18 ORDER BY nome;
```

* **2. INSERT:** O comando INSERT é usado para inserir novos registros em uma tabela. É possível especificar os valores das colunas diretamente ou usar uma consulta SELECT para inserir dados de outra tabela.
Exemplo:
```sql
INSERT INTO minha_tabela (nome, idade) VALUES ('João', 25);
```

* **3. UPDATE:** O comando UPDATE é usado para atualizar dados existentes em uma tabela. Ele permite modificar valores de colunas com base em condições de filtro.
Exemplo:
```sql
UPDATE minha_tabela SET idade = 26 WHERE nome = 'João';
```

* **4. DELETE:** O comando DELETE é usado para excluir registros de uma tabela com base em condições de filtro. Ele remove permanentemente os dados correspondentes às condições especificadas.
Exemplo:
```sql
DELETE FROM minha_tabela WHERE idade < 18;
```

* **5. UPSERT (INSERT ... ON CONFLICT):** O comando UPSERT é usado para inserir novos registros ou atualizar registros existentes com base em uma condição de conflito. É útil para garantir que os dados não sejam duplicados.
Exemplo:
```sql
INSERT INTO minha_tabela (id, nome, idade) VALUES (1, 'João', 25)
ON CONFLICT (id) DO UPDATE SET nome = EXCLUDED.nome, idade = EXCLUDED.idade;
```

Esses são alguns dos principais comandos DML do PostgreSQL. Eles permitem inserir, atualizar, excluir e consultar dados em tabelas, fornecendo flexibilidade para manipular os dados conforme necessário.

### DCL:
Os comandos DCL (Data Control Language) são um conjunto de comandos utilizados no PostgreSQL para controlar o acesso aos dados do banco de dados. Eles são usados para gerenciar permissões e definir privilégios de acesso para usuários e roles. Abaixo estão alguns dos principais comandos DCL do PostgreSQL:

* **1. GRANT:** O comando GRANT é usado para conceder permissões a usuários ou roles. Permite especificar quais operações um usuário ou role pode realizar em objetos do banco de dados, como tabelas, esquemas e funções.
Exemplo:
```sql
GRANT SELECT, INSERT, UPDATE ON minha_tabela TO usuario;
```

* **2. REVOKE:** O comando REVOKE é usado para revogar permissões previamente concedidas a usuários ou roles. Ele remove os privilégios especificados de um usuário ou role.
Exemplo:
```sql
REVOKE INSERT, UPDATE ON minha_tabela FROM usuario;
```

* **3. CREATE USER:** O comando CREATE USER é usado para criar um novo usuário no banco de dados. Um usuário pode ter permissões e roles atribuídas a ele.
Exemplo:
```sql
CREATE USER novo_usuario WITH PASSWORD 'senha_secreta';
```

* **4. CREATE ROLE:** O comando CREATE ROLE é usado para criar uma nova role no banco de dados. Uma role é um conjunto de permissões que pode ser atribuída a vários usuários.
Exemplo:
```sql
CREATE ROLE minha_role;
```

* **5. ALTER USER:** O comando ALTER USER é usado para modificar as propriedades de um usuário existente, como sua senha ou associação a roles.
Exemplo:
```sql
ALTER USER novo_usuario WITH PASSWORD 'nova_senha';
```

* **6. DROP USER:** O comando DROP USER é usado para excluir um usuário do banco de dados. O usuário será removido permanentemente e suas permissões serão revogadas.
Exemplo:
```sql
DROP USER novo_usuario;
```

Esses são alguns dos principais comandos DCL do PostgreSQL. Eles permitem gerenciar permissões de acesso e controlar a segurança do banco de dados, garantindo que apenas usuários autorizados possam realizar determinadas operações nos objetos do banco de dados.

### TCL:
Os comandos TCL (Transaction Control Language) são um conjunto de comandos utilizados no PostgreSQL para gerenciar transações no banco de dados. Eles permitem controlar o início, o commit (confirmação) e o rollback (reversão) de transações, garantindo a integridade dos dados. Abaixo estão alguns dos principais comandos TCL do PostgreSQL:

* **1. BEGIN:** O comando BEGIN é usado para iniciar uma nova transação. Todas as operações subsequentes dentro dessa transação serão tratadas como um único bloco, até que seja feito um commit ou rollback.
Exemplo:
```sql
BEGIN;
```

* **2. COMMIT:** O comando COMMIT é usado para confirmar todas as operações realizadas dentro de uma transação. As alterações são permanentemente aplicadas ao banco de dados.
Exemplo:
```sql
COMMIT;
```

* **3. ROLLBACK:** O comando ROLLBACK é usado para reverter todas as operações realizadas dentro de uma transação. As alterações são desfeitas e o banco de dados retorna ao estado anterior ao início da transação.
Exemplo:
```sql
ROLLBACK;
```

* **4. SAVEPOINT:** O comando SAVEPOINT é usado para definir um ponto de salvamento dentro de uma transação. Isso permite que você faça rollback parcial até esse ponto, sem reverter toda a transação.
Exemplo:
```sql
SAVEPOINT ponto_de_salvamento;
```

* **5. ROLLBACK TO SAVEPOINT:** O comando ROLLBACK TO SAVEPOINT é usado para reverter parcialmente uma transação até um ponto de salvamento especificado, mantendo todas as operações anteriores a esse ponto.
Exemplo:
```sql
ROLLBACK TO SAVEPOINT ponto_de_salvamento;
```

* **6. RELEASE SAVEPOINT:** O comando RELEASE SAVEPOINT é usado para liberar um ponto de salvamento, indicando que não será mais necessário fazer rollback para esse ponto específico.
Exemplo:
```sql
RELEASE SAVEPOINT ponto_de_salvamento;
```

Esses são alguns dos principais comandos TCL do PostgreSQL. Eles permitem gerenciar transações de forma eficiente, garantindo a consistência e integridade dos dados no banco de dados.

## COMANDOS DE POSTGRESQL VERSUS [MYSQL](https://github.com/VILHALVA/CURSO-DE-MYSQL)
Aqui está uma tabela comparativa dos principais comandos entre PostgreSQL e MySQL:

| Operação             | PostgreSQL                                         | MySQL                                      |
|----------------------|----------------------------------------------------|--------------------------------------------|
| Criar Banco de Dados | `CREATE DATABASE database_name;`                   | `CREATE DATABASE database_name;`          |
| Usar Banco de Dados  | `\c database_name;`                                | `USE database_name;`                      |
| Criar Tabela         | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` |
| Inserir Registro     | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` |
| Selecionar Registro(s) | `SELECT * FROM table_name WHERE condition;`       | `SELECT * FROM table_name WHERE condition;` |
| Atualizar Registro   | `UPDATE table_name SET column1 = value1 WHERE condition;` | `UPDATE table_name SET column1 = value1 WHERE condition;` |
| Excluir Registro     | `DELETE FROM table_name WHERE condition;`         | `DELETE FROM table_name WHERE condition;` |
| Excluir Tabela       | `DROP TABLE table_name;`                          | `DROP TABLE table_name;`                  |
| Listar Bancos de Dados | `\l` ou `SELECT datname FROM pg_database;`       | `SHOW DATABASES;`                         |
| Listar Tabelas       | `\dt` ou `SELECT tablename FROM pg_tables WHERE schemaname='public';` | `SHOW TABLES;`                            |

Esta tabela compara os comandos básicos entre PostgreSQL e MySQL. Enquanto a funcionalidade essencial é bastante semelhante, há algumas diferenças de sintaxe e abordagem entre os dois sistemas. Sempre consulte a documentação oficial para obter detalhes específicos sobre os comandos e suas funcionalidades em cada sistema de banco de dados.