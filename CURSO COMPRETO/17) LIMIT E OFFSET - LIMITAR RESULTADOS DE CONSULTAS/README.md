# LIMIT E OFFSET - LIMITAR RESULTADOS DE CONSULTAS
As cláusulas `LIMIT` e `OFFSET` são usadas em consultas SQL no PostgreSQL para limitar o número de linhas retornadas pelos resultados da consulta e para pular um número específico de linhas. Essas cláusulas são frequentemente usadas para paginar os resultados de uma consulta ou para retornar um subconjunto específico de linhas. Abaixo, vou explicar como usar as cláusulas `LIMIT` e `OFFSET` com exemplos.

**Cláusula LIMIT:**

A cláusula `LIMIT` é usada para limitar o número de linhas retornadas pela consulta. A sintaxe é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
LIMIT quantidade_de_linhas;
```

Por exemplo, para selecionar os 10 primeiros registros de uma tabela chamada "pessoas":

```sql
SELECT nome, idade
FROM pessoas
LIMIT 10;
```

Neste exemplo, apenas as 10 primeiras linhas da tabela "pessoas" serão retornadas.

**Cláusula OFFSET:**

A cláusula `OFFSET` é usada para pular um número específico de linhas antes de começar a retornar os resultados. A sintaxe é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
OFFSET quantidade_de_linhas;
```

Por exemplo, para selecionar os próximos 10 registros após os 10 primeiros registros de uma tabela "pessoas":

```sql
SELECT nome, idade
FROM pessoas
LIMIT 10
OFFSET 10;
```

Neste exemplo, estamos pulando as 10 primeiras linhas e, em seguida, retornando as próximas 10 linhas da tabela "pessoas". Isso é útil para a paginação de resultados.

**Combinando LIMIT e OFFSET:**

Você pode combinar as cláusulas `LIMIT` e `OFFSET` para paginar os resultados. Por exemplo, para exibir a terceira página de 20 resultados por página:

```sql
SELECT nome, idade
FROM pessoas
LIMIT 20
OFFSET 40;
```

Neste caso, estamos limitando os resultados a 20 linhas e pulando as 40 primeiras linhas, o que resulta na terceira página de resultados.

As cláusulas `LIMIT` e `OFFSET` são úteis para controlar a quantidade de dados retornados em consultas, especialmente quando você precisa exibir resultados em partes ou implementar a funcionalidade de paginação em seu aplicativo.