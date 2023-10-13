# OPERADORES DE COMPARAÇÃO EM CONSULTAS SQL
Os operadores de comparação são usados em consultas SQL no PostgreSQL para comparar valores e determinar se uma determinada condição é verdadeira ou falsa. Eles são fundamentais para filtrar resultados com a cláusula `WHERE`, para ordenar com `ORDER BY`, entre outros usos em consultas SQL. Abaixo, vou listar alguns dos operadores de comparação mais comuns em SQL e explicar como usá-los.

**Operadores de Igualdade:**

- `=`: Igual a. Usado para comparar se dois valores são iguais.

**Exemplo:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade = 30;
```

**Operadores de Desigualdade:**

- `<>` ou `!=`: Diferente de. Usado para comparar se dois valores são diferentes.

**Exemplo:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade <> 30;
```

**Operadores de Maior e Menor:**

- `<`: Menor que.
- `>`: Maior que.
- `<=`: Menor ou igual a.
- `>=`: Maior ou igual a.

**Exemplo:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade > 30;
```

**Operadores de Intervalo:**

- `BETWEEN`: Usado para verificar se um valor está dentro de um intervalo.

**Exemplo:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade BETWEEN 25 AND 40;
```

**Operador de Pertencimento:**

- `IN`: Usado para verificar se um valor está em um conjunto de valores.

**Exemplo:**
```sql
SELECT nome, cidade
FROM clientes
WHERE cidade IN ('Nova York', 'Los Angeles', 'Chicago');
```

**Operador de Correspondência de Padrões:**

- `LIKE`: Usado para comparar uma coluna com uma expressão de padrão.

**Exemplo:**
```sql
SELECT nome, email
FROM pessoas
WHERE email LIKE '%@gmail.com';
```

**Operadores Lógicos:**

- `AND`: Usado para combinar várias condições e todas devem ser verdadeiras.
- `OR`: Usado para combinar várias condições e pelo menos uma delas deve ser verdadeira.
- `NOT`: Usado para negar uma condição.

**Exemplo:**
```sql
SELECT nome, idade
FROM pessoas
WHERE idade > 30 AND cidade = 'Nova York';
```

Estes são alguns dos operadores de comparação mais comuns usados em consultas SQL. Eles são fundamentais para a filtragem de dados, seleção de registros específicos e criação de condições complexas nas consultas SQL.