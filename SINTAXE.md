# SINTAXE
Abaixo, fornecerei alguns exemplos de comandos SQL comuns usados no PostgreSQL, juntamente com uma breve explicação de cada um:

1. **Criar uma Tabela:**

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

- **Explicação:** Este comando cria uma nova tabela chamada "users" com quatro colunas: "id" (chave primária), "username", "email" e "created_at". A coluna "id" é definida como SERIAL, o que significa que será automaticamente incrementada para cada nova linha adicionada. As colunas "username" e "email" são definidas como únicas e obrigatórias (NOT NULL). A coluna "created_at" é definida com um valor padrão de timestamp atual.

2. **Inserir Dados em uma Tabela:**

```sql
INSERT INTO users (username, email) VALUES ('joao123', 'joao@example.com');
```

- **Explicação:** Este comando insere um novo registro na tabela "users" com os valores especificados para as colunas "username" e "email".

3. **Selecionar Dados de uma Tabela:**

```sql
SELECT * FROM users;
```

- **Explicação:** Este comando seleciona todos os registros da tabela "users" e retorna todas as colunas para cada registro.

4. **Atualizar Dados em uma Tabela:**

```sql
UPDATE users SET email = 'joao@gmail.com' WHERE username = 'joao123';
```

- **Explicação:** Este comando atualiza o valor da coluna "email" para o usuário com o nome de usuário 'joao123' para 'joao@gmail.com'.

5. **Excluir Dados de uma Tabela:**

```sql
DELETE FROM users WHERE username = 'joao123';
```

- **Explicação:** Este comando exclui o registro da tabela "users" onde o nome de usuário é 'joao123'.

Esses são apenas alguns exemplos básicos de comandos SQL que podem ser executados no PostgreSQL. Cada comando tem sua própria função específica dentro do banco de dados e pode ser personalizado e combinado para atender às necessidades do aplicativo em questão.