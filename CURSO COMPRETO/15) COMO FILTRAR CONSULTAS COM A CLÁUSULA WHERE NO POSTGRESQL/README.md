# COMO FILTRAR CONSULTAS COM A CLÁUSULA WHERE NO POSTGRESQL
A cláusula `WHERE` é usada em consultas SQL no PostgreSQL para filtrar os resultados com base em uma condição específica. Ela permite que você selecione apenas as linhas que atendem aos critérios especificados. Abaixo, vou explicar como usar a cláusula `WHERE` em consultas SQL no PostgreSQL com exemplos.

**Sintaxe Básica da Cláusula WHERE:**

A sintaxe básica da cláusula `WHERE` é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

Aqui estão alguns operadores comuns que podem ser usados nas condições da cláusula `WHERE:

- `=`: Igual a
- `<>` ou `!=`: Diferente de
- `<`: Menor que
- `>`: Maior que
- `<=`: Menor ou igual a
- `>=`: Maior ou igual a
- `AND`: Operador lógico "E"
- `OR`: Operador lógico "OU"
- `NOT`: Operador lógico "NÃO"
- `BETWEEN`: Dentro de um intervalo
- `IN`: Igual a um valor de uma lista

**Exemplos de Uso da Cláusula WHERE:**

Aqui estão alguns exemplos de como usar a cláusula `WHERE` em consultas SQL:

1. Selecionar todas as pessoas com idade maior que 30 anos:

   ```sql
   SELECT nome, idade
   FROM pessoas
   WHERE idade > 30;
   ```

2. Selecionar todos os produtos com preço menor ou igual a 50:

   ```sql
   SELECT nome_do_produto, preço
   FROM produtos
   WHERE preço <= 50;
   ```

3. Selecionar todas as vendas feitas em uma data específica:

   ```sql
   SELECT data_venda, valor
   FROM vendas
   WHERE data_venda = '2023-10-13';
   ```

4. Selecionar todas as pessoas com um nome específico:

   ```sql
   SELECT nome, idade
   FROM pessoas
   WHERE nome = 'Maria Souza';
   ```

5. Selecionar produtos com um determinado nome ou categoria:

   ```sql
   SELECT nome_do_produto, categoria
   FROM produtos
   WHERE nome_do_produto = 'Produto X' OR categoria = 'Eletrônicos';
   ```

6. Selecionar todos os funcionários que não são gerentes:

   ```sql
   SELECT nome, cargo
   FROM funcionários
   WHERE cargo <> 'Gerente';
   ```

7. Selecionar todas as vendas em um intervalo de datas:

   ```sql
   SELECT data_venda, valor
   FROM vendas
   WHERE data_venda BETWEEN '2023-01-01' AND '2023-12-31';
   ```

8. Selecionar produtos em uma lista de IDs específicos:

   ```sql
   SELECT nome_do_produto, preço
   FROM produtos
   WHERE id_produto IN (1, 3, 5, 7);
   ```

Estes são exemplos de como a cláusula `WHERE` pode ser usada para filtrar consultas em tabelas no PostgreSQL. Você pode combinar operadores lógicos e criar condições complexas para atender aos requisitos específicos de sua consulta.