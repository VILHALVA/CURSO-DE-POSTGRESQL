# ALIASES COM CLÁUSULA AS
Na linguagem SQL, um alias é um nome alternativo que você pode atribuir a uma coluna, uma tabela ou até mesmo a uma função. O uso de aliases torna as consultas mais legíveis e permite que você se refira às colunas ou tabelas de uma maneira mais amigável. Você pode criar aliases usando a cláusula `AS`. Aqui estão exemplos de como usar aliases com a cláusula `AS`:

**1. Alias para Colunas:**

Você pode atribuir um alias a uma coluna em uma consulta, facilitando a referência posterior. Por exemplo, se você tem uma coluna chamada "nome_completo", pode atribuir a ela um alias mais simples, como "nome":

```sql
SELECT nome_completo AS nome
FROM pessoas;
```

Neste exemplo, a coluna "nome_completo" é renomeada como "nome" na consulta, tornando os resultados mais legíveis.

**2. Alias para Tabelas:**

Você também pode atribuir aliases a tabelas. Isso é útil quando você está trabalhando com várias tabelas na mesma consulta e deseja abreviar os nomes das tabelas:

```sql
SELECT p.nome, a.endereço
FROM pessoas AS p
JOIN endereços AS a ON p.id = a.pessoa_id;
```

Neste exemplo, atribuímos o alias "p" para a tabela "pessoas" e "a" para a tabela "endereços". Isso torna a consulta mais concisa e legível.

**3. Alias para Funções:**

Você pode atribuir um alias a uma função em uma consulta. Isso é útil para dar um nome mais descritivo a funções personalizadas ou a resultados de funções agregadas:

```sql
SELECT AVG(idade) AS idade_média
FROM pessoas;
```

Neste exemplo, atribuímos o alias "idade_média" à função AVG, tornando o resultado da consulta mais fácil de entender.

Os aliases são úteis para tornar suas consultas SQL mais legíveis e autodescritivas, facilitando a manutenção do código. Certifique-se de escolher nomes de alias que sejam descritivos e que façam sentido em relação aos dados ou às operações que estão sendo realizadas.