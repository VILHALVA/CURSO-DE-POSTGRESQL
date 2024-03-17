# CLÁUSULA UPDATE - ATUALIZAR DADOS INSERIDOS NAS TABELAS
A cláusula `UPDATE` é usada em consultas SQL no PostgreSQL para atualizar registros em uma tabela existente. Ela permite modificar os valores de uma ou mais colunas em um ou mais registros com base em uma condição. A sintaxe básica da cláusula `UPDATE` é a seguinte:

```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2, ...
WHERE condição;
```

Aqui estão algumas explicações e exemplos de uso da cláusula `UPDATE`:

**Exemplo 1: Atualizar o Nome de uma Pessoa:**

Suponha que você tenha uma tabela chamada "pessoas" e deseje atualizar o nome de uma pessoa com base no ID dela. Por exemplo, vamos atualizar o nome da pessoa com ID 1 para "João Silva".

```sql
UPDATE pessoas
SET nome = 'João Silva'
WHERE id = 1;
```

Neste exemplo, estamos atualizando o registro na tabela "pessoas" onde o ID é igual a 1, definindo o novo valor "João Silva" na coluna "nome".

**Exemplo 2: Aumentar o Preço de Todos os Produtos:**

Suponha que você tenha uma tabela chamada "produtos" e deseje aumentar o preço de todos os produtos em 10%. Você pode fazer isso da seguinte maneira:

```sql
UPDATE produtos
SET preço = preço * 1.10;
```

Neste exemplo, estamos atualizando todos os registros na tabela "produtos" multiplicando o valor existente na coluna "preço" por 1.10, o que equivale a um aumento de 10%.

**Exemplo 3: Atualizar o Cargo de Funcionários por Departamento:**

Suponha que você tenha uma tabela chamada "funcionários" e deseje atualizar o cargo de todos os funcionários em um departamento específico. Por exemplo, vamos atualizar o cargo de todos os funcionários do departamento "Vendas" para "Gerente de Vendas".

```sql
UPDATE funcionários
SET cargo = 'Gerente de Vendas'
WHERE departamento = 'Vendas';
```

Neste exemplo, estamos atualizando todos os registros na tabela "funcionários" onde o departamento é "Vendas" e definindo o novo cargo como "Gerente de Vendas".

A cláusula `UPDATE` é uma ferramenta poderosa para fazer alterações em dados existentes em tabelas. Lembre-se sempre de usar a cláusula `WHERE` para especificar quais registros devem ser atualizados, evitando atualizar acidentalmente todos os registros na tabela. Certifique-se de que os valores e tipos de dados estejam corretos ao realizar atualizações em suas tabelas.