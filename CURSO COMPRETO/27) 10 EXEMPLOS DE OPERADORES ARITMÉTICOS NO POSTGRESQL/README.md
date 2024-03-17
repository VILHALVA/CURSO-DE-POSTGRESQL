# 10 EXEMPLOS DE OPERADORES ARITMÉTICOS NO POSTGRESQL
Os operadores aritméticos no PostgreSQL permitem realizar operações matemáticas em valores numéricos em suas consultas SQL. Aqui estão 10 exemplos de operadores aritméticos no PostgreSQL:

**1. Adição (+):**
```sql
SELECT 5 + 3; -- Resultado: 8
```

**2. Subtração (-):**
```sql
SELECT 10 - 4; -- Resultado: 6
```

**3. Multiplicação (*):**
```sql
SELECT 6 * 7; -- Resultado: 42
```

**4. Divisão (/):**
```sql
SELECT 20 / 4; -- Resultado: 5
```

**5. Módulo (%):** (Resto da divisão)
```sql
SELECT 17 % 5; -- Resultado: 2 (resto da divisão de 17 por 5)
```

**6. Potência (^):**
```sql
SELECT 2 ^ 3; -- Resultado: 8 (2 elevado à potência de 3)
```

**7. Raiz Quadrada (√):**
```sql
SELECT sqrt(25); -- Resultado: 5 (raiz quadrada de 25)
```

**8. Valor Absoluto (| |):**
```sql
SELECT abs(-7); -- Resultado: 7 (valor absoluto de -7)
```

**9. Arredondamento (ROUND):**
```sql
SELECT round(6.75); -- Resultado: 7 (arredondamento para o número inteiro mais próximo)
```

**10. Truncamento (TRUNC):**
```sql
SELECT trunc(8.987, 2); -- Resultado: 8.98 (truncamento com duas casas decimais)
```

Estes são exemplos de operadores aritméticos comuns no PostgreSQL. Você pode usá-los em suas consultas para realizar cálculos matemáticos em valores numéricos, o que é útil para diversas aplicações, como cálculos financeiros, estatísticas e muito mais.