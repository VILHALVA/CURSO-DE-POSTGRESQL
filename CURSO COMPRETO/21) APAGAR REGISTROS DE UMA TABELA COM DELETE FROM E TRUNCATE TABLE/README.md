# APAGAR REGISTROS DE UMA TABELA COM DELETE FROM E TRUNCATE TABLE
No PostgreSQL, você pode excluir registros de uma tabela usando o comando `DELETE FROM` ou truncar completamente a tabela usando o comando `TRUNCATE TABLE`. Ambos têm suas finalidades e devem ser usados com cuidado, pois a exclusão de dados é irreversível. Aqui estão as diferenças entre esses dois comandos:

**DELETE FROM:**

O comando `DELETE FROM` é usado para excluir registros específicos de uma tabela com base em uma condição. Ele permite maior flexibilidade, pois você pode selecionar quais registros deseja excluir usando a cláusula `WHERE`. A sintaxe básica é a seguinte:

```sql
DELETE FROM nome_da_tabela
WHERE condição;
```

Exemplo de uso do `DELETE FROM` para excluir todas as pessoas com idade igual a 30 anos:

```sql
DELETE FROM pessoas
WHERE idade = 30;
```

Este comando excluirá todos os registros da tabela "pessoas" onde a idade é igual a 30.

**TRUNCATE TABLE:**

O comando `TRUNCATE TABLE` é usado para excluir todos os registros de uma tabela. Ele é mais rápido e eficiente do que o `DELETE FROM`, pois não registra as exclusões individualmente no log de transações. A sintaxe é simples:

```sql
TRUNCATE TABLE nome_da_tabela;
```

Exemplo de uso do `TRUNCATE TABLE` para excluir todos os registros da tabela "pessoas":

```sql
TRUNCATE TABLE pessoas;
```

Tenha em mente que o `TRUNCATE TABLE` não permite o uso da cláusula `WHERE` para filtrar os registros a serem excluídos; ele remove todos os registros da tabela.

**Diferenças Chave:**

- O `DELETE FROM` é mais flexível, pois permite a exclusão seletiva com base em uma condição. É adequado quando você precisa excluir registros específicos da tabela.

- O `TRUNCATE TABLE` é mais rápido e eficiente para excluir todos os registros de uma tabela, mas não permite a exclusão seletiva. Ele é útil quando você deseja limpar completamente uma tabela, mas não se importa em especificar quais registros devem ser excluídos.

- Lembre-se de que ambos os comandos são irreversíveis, portanto, use-os com cuidado e faça backup dos dados importantes antes de realizar operações de exclusão.