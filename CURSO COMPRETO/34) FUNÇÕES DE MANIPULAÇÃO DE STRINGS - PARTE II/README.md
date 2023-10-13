# FUNÇÕES DE MANIPULAÇÃO DE STRINGS - PARTE II
Continuando com as funções de manipulação de strings no PostgreSQL, aqui estão mais algumas funções úteis:

11. **Função OVERLAY:**
    - A função `OVERLAY` permite substituir uma parte de uma string por outra, especificando a posição de início e a quantidade de caracteres a serem substituídos.
    ```sql
    SELECT OVERLAY('Hello World', 'New', 1, 5); -- Resultado: 'New World'
    ```

12. **Função POSITION (ou STRPOS):**
    - A função `POSITION` (também pode ser usada como `STRPOS`) encontra a posição de uma substring dentro de uma string. É semelhante à função `IN`.
    ```sql
    SELECT POSITION('world' IN 'Hello world'); -- Resultado: 7
    ```

13. **Função SUBSTRING:**
    - A função `SUBSTRING` permite extrair uma parte de uma string com base em posições e comprimento especificados. Pode ser usada para extrair substrings com base em expressões regulares.
    ```sql
    SELECT SUBSTRING('Hello World', 1, 5); -- Resultado: 'Hello'
    ```

14. **Função TRIM:**
    - A função `TRIM` remove espaços em branco ou outros caracteres do início e do final de uma string. Você pode especificar os caracteres a serem removidos.
    ```sql
    SELECT TRIM('x' FROM 'xxHello Worldxx'); -- Resultado: 'Hello World'
    ```

15. **Função LTRIM:**
    - A função `LTRIM` remove espaços em branco ou outros caracteres do início de uma string.
    ```sql
    SELECT LTRIM('   Hello World   '); -- Resultado: 'Hello World   '
    ```

16. **Função RTRIM:**
    - A função `RTRIM` remove espaços em branco ou outros caracteres do final de uma string.
    ```sql
    SELECT RTRIM('   Hello World   '); -- Resultado: '   Hello World'
    ```

17. **Função REVERSE:**
    - A função `REVERSE` inverte a ordem dos caracteres em uma string.
    ```sql
    SELECT REVERSE('Hello World'); -- Resultado: 'dlroW olleH'
    ```

18. **Função TRANSLATE:**
    - A função `TRANSLATE` substitui caracteres na string de origem por caracteres correspondentes em uma string de destino.
    ```sql
    SELECT TRANSLATE('Hello', 'aeiou', '12345'); -- Resultado: 'H2ll4'
    ```

Essas funções adicionais de manipulação de strings no PostgreSQL podem ser muito úteis para realizar tarefas específicas de formatação e extração de dados de strings em suas consultas SQL. Certifique-se de consultar a documentação do PostgreSQL para obter informações detalhadas sobre cada função e exemplos de uso.