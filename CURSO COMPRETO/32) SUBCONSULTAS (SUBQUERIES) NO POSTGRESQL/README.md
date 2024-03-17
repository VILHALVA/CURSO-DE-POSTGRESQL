# SUBCONSULTAS (SUBQUERIES) NO POSTGRESQL
As subconsultas, também conhecidas como subqueries, são consultas aninhadas dentro de uma consulta SQL maior no PostgreSQL. Elas permitem que você consulte dados em uma tabela com base em informações obtidas em outra tabela, e podem ser usadas em várias cláusulas SQL, como WHERE, FROM, SELECT, e assim por diante. As subconsultas são uma ferramenta poderosa para consultas complexas e tarefas de filtragem. Aqui estão alguns exemplos de subconsultas no PostgreSQL:

**1. Subconsulta na Cláusula WHERE:**

Uma subconsulta pode ser usada na cláusula WHERE para filtrar registros com base em uma consulta interna. Por exemplo, para selecionar todos os produtos com preço superior à média:

```sql
SELECT nome, preço
FROM produtos
WHERE preço > (SELECT AVG(preço) FROM produtos);
```

**2. Subconsulta na Cláusula FROM:**

Você pode usar uma subconsulta na cláusula FROM para criar temporariamente uma tabela derivada para consulta. Por exemplo, para encontrar o total de vendas por vendedor:

```sql
SELECT vendedor, total_vendas
FROM (SELECT vendedor, SUM(valor) as total_vendas FROM vendas GROUP BY vendedor) AS subquery;
```

**3. Subconsulta na Cláusula SELECT:**

Você pode usar subconsultas na cláusula SELECT para calcular valores ou resultados com base em dados da consulta principal. Por exemplo, para encontrar a diferença entre o preço atual e o preço mínimo de um produto:

```sql
SELECT nome, preço, (preço - (SELECT MIN(preço) FROM produtos)) AS diferença
FROM produtos;
```

**4. Subconsulta na Cláusula IN:**

A cláusula IN permite que você teste se um valor está presente em uma lista retornada por uma subconsulta. Por exemplo, para encontrar todos os produtos com vendas acima de uma quantidade mínima:

```sql
SELECT nome
FROM produtos
WHERE id IN (SELECT produto_id FROM vendas WHERE quantidade > 100);
```

**5. Subconsulta na Cláusula EXISTS:**

A cláusula EXISTS é usada para verificar se a subconsulta retorna algum resultado. Por exemplo, para encontrar todos os vendedores que fizeram pelo menos uma venda:

```sql
SELECT nome
FROM vendedores
WHERE EXISTS (SELECT 1 FROM vendas WHERE vendas.vendedor_id = vendedores.id);
```

Subconsultas são uma parte essencial de consultas SQL avançadas e permitem consultas mais complexas e sofisticadas. Elas podem ser usadas para realizar tarefas de filtragem, agregação, comparação e cálculos em suas consultas, tornando-as uma ferramenta valiosa para manipular dados em bancos de dados PostgreSQL. Certifique-se de entender bem a estrutura e o propósito das subconsultas ao usá-las em suas consultas SQL.