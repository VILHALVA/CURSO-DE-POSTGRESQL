# FUNÇÕES DE MANIPULAÇÃO DE STRINGS - PARTE I
No PostgreSQL, você pode usar uma variedade de funções para manipular strings em consultas SQL. Essas funções permitem realizar tarefas como converter o texto para maiúsculas, minúsculas, concatenar strings, calcular o comprimento de uma string e muito mais. Aqui estão algumas funções de manipulação de strings no PostgreSQL:

1. **Função UPPER:**
   - A função `UPPER` converte uma string em letras maiúsculas.
   ```sql
   SELECT UPPER('hello world'); -- Resultado: 'HELLO WORLD'
   ```

2. **Função LOWER:**
   - A função `LOWER` converte uma string em letras minúsculas.
   ```sql
   SELECT LOWER('Hello World'); -- Resultado: 'hello world'
   ```

3. **Função CONCAT:**
   - A função `CONCAT` concatena duas ou mais strings.
   ```sql
   SELECT CONCAT('Hello', ' ', 'World'); -- Resultado: 'Hello World'
   ```

4. **Função BIT_LENGTH:**
   - A função `BIT_LENGTH` retorna o número de bits na string especificada.
   ```sql
   SELECT BIT_LENGTH('Hello World'); -- Resultado: 88
   ```

5. **Função CHAR_LENGTH (ou LENGTH):**
   - A função `CHAR_LENGTH` (também pode ser usada como `LENGTH`) retorna o número de caracteres na string.
   ```sql
   SELECT CHAR_LENGTH('Olá, mundo'); -- Resultado: 11
   ```

6. **Função SUBSTRING:**
   - A função `SUBSTRING` extrai uma parte de uma string com base em posições e comprimento especificados.
   ```sql
   SELECT SUBSTRING('Hello World', 1, 5); -- Resultado: 'Hello'
   ```

7. **Função REPLACE:**
   - A função `REPLACE` substitui todas as ocorrências de uma substring por outra.
   ```sql
   SELECT REPLACE('A string com espaços', ' ', '-'); -- Resultado: 'A-string-com-espaços'
   ```

8. **Função POSITION:**
   - A função `POSITION` encontra a posição de uma substring dentro de uma string.
   ```sql
   SELECT POSITION('world' IN 'Hello world'); -- Resultado: 7
   ```

9. **Função TRIM:**
   - A função `TRIM` remove espaços em branco do início e do final de uma string.
   ```sql
   SELECT TRIM('   Hello World   '); -- Resultado: 'Hello World'
   ```

10. **Função INITCAP:**
    - A função `INITCAP` converte a primeira letra de cada palavra em maiúscula.
    ```sql
    SELECT INITCAP('hello world'); -- Resultado: 'Hello World'
    ```

Essas funções são úteis para manipular strings e realizar tarefas de formatação em consultas SQL. Você pode combiná-las e usá-las de acordo com as necessidades específicas das suas consultas e aplicativos.