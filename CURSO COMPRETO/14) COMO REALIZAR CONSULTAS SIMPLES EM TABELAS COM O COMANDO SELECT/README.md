# COMO REALIZAR CONSULTAS SIMPLES EM TABELAS COM O COMANDO SELECT
Para realizar consultas simples em tabelas no PostgreSQL, você pode usar o comando `SELECT`. Este comando permite recuperar dados de uma ou mais tabelas com base em critérios específicos. Abaixo, descrevo a sintaxe do comando `SELECT` e forneço exemplos de como realizar consultas simples.

**Sintaxe do Comando SELECT (SQL):**

A sintaxe geral para realizar uma consulta simples usando o comando `SELECT` é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

Aqui está uma descrição detalhada da sintaxe:

- `SELECT`: Inicia o comando de seleção de dados.
- `coluna1, coluna2, ...`: Lista as colunas que você deseja selecionar. Use `*` para selecionar todas as colunas.
- `FROM nome_da_tabela`: Especifica a tabela da qual você deseja selecionar os dados.
- `WHERE condição`: Define critérios para filtrar os resultados. Esta parte é opcional.

**Exemplo de Consulta Simples:**

Suponha que temos uma tabela chamada "pessoas" com as seguintes colunas: `id`, `nome`, `idade`, `email` e `data_de_nascimento`. Podemos realizar uma consulta simples para selecionar todos os registros da tabela:

```sql
SELECT * FROM pessoas;
```

Neste exemplo, o comando `SELECT *` seleciona todas as colunas da tabela "pessoas". Se você quiser selecionar apenas colunas específicas, pode listar seus nomes separados por vírgulas em vez de usar `*`.

**Exemplo de Consulta com Condição:**

Você também pode realizar consultas com condições para filtrar os resultados. Por exemplo, para selecionar todas as pessoas com idade maior que 30 anos:

```sql
SELECT nome, idade FROM pessoas
WHERE idade > 30;
```

Neste caso, estamos selecionando apenas as colunas `nome` e `idade` da tabela "pessoas" onde a condição `idade > 30` é atendida.

**Ordenar os Resultados:**

Você também pode ordenar os resultados usando a cláusula `ORDER BY`. Por exemplo, para selecionar todas as pessoas ordenadas por idade em ordem decrescente:

```sql
SELECT nome, idade FROM pessoas
ORDER BY idade DESC;
```

Neste exemplo, os resultados são ordenados pela coluna `idade` em ordem decrescente (do maior para o menor).

Esses são exemplos simples de como usar o comando `SELECT` para consultar dados em tabelas. Você pode adaptar as consultas de acordo com seus próprios requisitos e especificar as colunas, tabelas e critérios necessários.