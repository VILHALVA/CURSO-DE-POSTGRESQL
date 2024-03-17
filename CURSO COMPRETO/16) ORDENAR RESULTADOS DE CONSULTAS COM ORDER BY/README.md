# ORDENAR RESULTADOS DE CONSULTAS COM ORDER BY
A cláusula `ORDER BY` é usada em consultas SQL no PostgreSQL para classificar os resultados da consulta em ordem ascendente ou descendente com base em uma ou mais colunas. Além disso, você pode controlar o tratamento de valores nulos na ordenação usando as opções `NULLS FIRST` e `NULLS LAST`. Abaixo, vou explicar como usar a cláusula `ORDER BY` com exemplos.

**Sintaxe Básica da Cláusula ORDER BY:**

A sintaxe básica da cláusula `ORDER BY` é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
ORDER BY coluna_para_ordenar [ASC | DESC];
```

- `coluna_para_ordenar`: Especifica a coluna pela qual os resultados serão ordenados.
- `[ASC | DESC]`: Define a ordem de classificação. `ASC` (ascendente) é o padrão, e `DESC` (descendente) é usado para classificação em ordem decrescente.

**Exemplos de Uso da Cláusula ORDER BY:**

Aqui estão alguns exemplos de como usar a cláusula `ORDER BY` em consultas SQL:

1. Ordenar pessoas por idade em ordem ascendente:

   ```sql
   SELECT nome, idade
   FROM pessoas
   ORDER BY idade ASC;
   ```

2. Ordenar produtos por preço em ordem descendente:

   ```sql
   SELECT nome_do_produto, preço
   FROM produtos
   ORDER BY preço DESC;
   ```

3. Ordenar vendas por data em ordem ascendente:

   ```sql
   SELECT data_venda, valor
   FROM vendas
   ORDER BY data_venda ASC;
   ```

**Tratamento de Valores Nulos:**

Você pode usar as opções `NULLS FIRST` e `NULLS LAST` na cláusula `ORDER BY` para controlar o tratamento de valores nulos na ordenação. Por padrão, os valores nulos são tratados como se fossem os maiores valores.

- `NULLS FIRST`: Coloca os valores nulos no início da lista ordenada.
- `NULLS LAST`: Coloca os valores nulos no final da lista ordenada.

Exemplo de uso:

```sql
SELECT nome, data_contrato
FROM funcionários
ORDER BY data_contrato DESC NULLS LAST;
```

Neste exemplo, estamos ordenando os funcionários por data de contratação em ordem descendente e colocando os valores nulos no final da lista.

**Ordenação com Duas ou Mais Colunas:**

Você também pode classificar os resultados usando duas ou mais colunas, o que é útil quando deseja uma ordenação secundária. Por exemplo, para ordenar pessoas por idade em ordem descendente e, em seguida, por nome em ordem ascendente:

```sql
SELECT nome, idade
FROM pessoas
ORDER BY idade DESC, nome ASC;
```

Neste exemplo, primeiro os resultados são ordenados por idade em ordem descendente e, em seguida, por nome em ordem ascendente para desempate quando a idade é a mesma.

A cláusula `ORDER BY` é poderosa para classificar resultados em consultas SQL e pode ser adaptada para atender a várias necessidades de ordenação.