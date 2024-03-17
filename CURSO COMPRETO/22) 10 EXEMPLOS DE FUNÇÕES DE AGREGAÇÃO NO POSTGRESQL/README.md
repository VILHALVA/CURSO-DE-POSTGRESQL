# 10 EXEMPLOS DE FUNÇÕES DE AGREGAÇÃO NO POSTGRESQL
O PostgreSQL suporta várias funções de agregação que permitem realizar cálculos em grupos de valores, geralmente em conjunto com a cláusula `GROUP BY`. Aqui estão 10 exemplos de funções de agregação, incluindo `MAX`, `MIN`, `AVG`, `SUM`, `COUNT`, entre outras, juntamente com exemplos de uso:

1. **MAX:** Retorna o valor máximo em um grupo.

   Exemplo: Encontrar a idade máxima entre todas as pessoas.

   ```sql
   SELECT MAX(idade) FROM pessoas;
   ```

2. **MIN:** Retorna o valor mínimo em um grupo.

   Exemplo: Encontrar a idade mínima entre todas as pessoas.

   ```sql
   SELECT MIN(idade) FROM pessoas;
   ```

3. **AVG:** Calcula a média dos valores em um grupo.

   Exemplo: Encontrar a idade média das pessoas.

   ```sql
   SELECT AVG(idade) FROM pessoas;
   ```

4. **SUM:** Calcula a soma dos valores em um grupo.

   Exemplo: Encontrar a soma total dos salários de todos os funcionários.

   ```sql
   SELECT SUM(salário) FROM funcionários;
   ```

5. **COUNT:** Conta o número de valores em um grupo.

   Exemplo: Contar quantas pessoas têm mais de 30 anos.

   ```sql
   SELECT COUNT(*) FROM pessoas WHERE idade > 30;
   ```

6. **GROUP_CONCAT:** Concatena os valores de uma coluna em uma única string, separados por um delimitador (não nativo no PostgreSQL, mas pode ser simulado).

   Exemplo: Concatenar os nomes de todos os produtos em uma única string separada por vírgulas.

   ```sql
   SELECT STRING_AGG(nome_do_produto, ', ') FROM produtos;
   ```

7. **STDDEV:** Calcula o desvio padrão dos valores em um grupo.

   Exemplo: Calcular o desvio padrão das idades das pessoas.

   ```sql
   SELECT STDDEV(idade) FROM pessoas;
   ```

8. **VAR_POP:** Calcula a variância populacional dos valores em um grupo.

   Exemplo: Calcular a variância populacional das idades das pessoas.

   ```sql
   SELECT VAR_POP(idade) FROM pessoas;
   ```

9. **PERCENTILE_CONT:** Calcula o valor correspondente a uma determinada posição percentual no grupo.

   Exemplo: Encontrar o valor da idade que está no 75º percentil.

   ```sql
   SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY idade) FROM pessoas;
   ```

10. **ARRAY_AGG:** Retorna um array contendo todos os valores em um grupo.

    Exemplo: Obter um array com todas as idades das pessoas.

    ```sql
    SELECT ARRAY_AGG(idade) FROM pessoas;
    ```

Essas são apenas algumas das funções de agregação disponíveis no PostgreSQL. Elas podem ser usadas para realizar uma variedade de cálculos em seus dados, dependendo de suas necessidades específicas. Certifique-se de adaptar essas consultas ao seu próprio esquema de banco de dados e às colunas relevantes.