# CONSULTAS EM DUAS OU MAIS TABELAS COM INNER JOIN
A cláusula `INNER JOIN` é usada em consultas SQL para combinar duas ou mais tabelas com base em uma condição de junção, retornando apenas os registros que têm correspondências em ambas as tabelas. Isso é útil para recuperar informações de várias tabelas relacionadas em um único resultado. Abaixo estão exemplos de consultas que usam a cláusula `INNER JOIN` para combinar duas ou mais tabelas:

**Exemplo 1: Consulta com INNER JOIN entre duas tabelas:**

Suponha que você tenha duas tabelas, "pessoas" e "endereços," e deseje combinar essas tabelas para obter informações de pessoas e seus endereços.

```sql
SELECT pessoas.nome, endereços.endereço
FROM pessoas
INNER JOIN endereços ON pessoas.id = endereços.pessoa_id;
```

Neste exemplo, usamos `INNER JOIN` para combinar as tabelas "pessoas" e "endereços" com base na coluna "id" na tabela "pessoas" e na coluna "pessoa_id" na tabela "endereços." O resultado incluirá o nome da pessoa e seu endereço correspondente.

**Exemplo 2: Consulta com INNER JOIN entre três tabelas:**

Suponha que você tenha três tabelas, "pedidos," "itens_pedido," e "produtos," e deseje combinar essas tabelas para obter informações sobre os produtos incluídos em cada pedido.

```sql
SELECT pedidos.numero_pedido, produtos.nome_do_produto, itens_pedido.quantidade
FROM pedidos
INNER JOIN itens_pedido ON pedidos.id = itens_pedido.pedido_id
INNER JOIN produtos ON itens_pedido.produto_id = produtos.id;
```

Neste exemplo, usamos duas cláusulas `INNER JOIN` para combinar as três tabelas. Primeiro, combinamos "pedidos" com "itens_pedido" com base na coluna "id" em "pedidos" e na coluna "pedido_id" em "itens_pedido." Em seguida, combinamos "itens_pedido" com "produtos" com base na coluna "produto_id" em "itens_pedido" e na coluna "id" em "produtos." Isso nos permite obter informações sobre os produtos incluídos em cada pedido.

**Exemplo 3: Consulta com INNER JOIN e filtro de condição:**

Você também pode usar a cláusula `WHERE` para adicionar condições de filtro a consultas com `INNER JOIN`. Por exemplo, para selecionar apenas os pedidos feitos por um cliente específico:

```sql
SELECT pedidos.numero_pedido, produtos.nome_do_produto, itens_pedido.quantidade
FROM pedidos
INNER JOIN itens_pedido ON pedidos.id = itens_pedido.pedido_id
INNER JOIN produtos ON itens_pedido.produto_id = produtos.id
WHERE pedidos.cliente_id = 1;
```

Neste exemplo, adicionamos a cláusula `WHERE` para filtrar os pedidos feitos pelo cliente com `cliente_id` igual a 1.

A cláusula `INNER JOIN` é uma ferramenta poderosa para combinar informações de várias tabelas em consultas SQL, permitindo que você recupere dados relacionados de maneira eficiente. Certifique-se de escolher as condições de junção apropriadas com base em como suas tabelas estão relacionadas.