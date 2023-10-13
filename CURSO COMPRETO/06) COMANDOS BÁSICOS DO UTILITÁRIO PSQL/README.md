# COMANDOS BÁSICOS DO UTILITÁRIO PSQL
O utilitário `psql` é uma ferramenta de linha de comando que permite interagir com o PostgreSQL e executar comandos SQL diretamente. Abaixo estão alguns comandos e operações básicas que você pode realizar com o `psql`:

1. **Acesso ao PostgreSQL:**

   Para entrar no `psql`, abra um terminal e execute o seguinte comando. Você será solicitado a inserir a senha do superusuário "postgres" ou a senha do usuário PostgreSQL, se aplicável:

   ```bash
   sudo -u postgres psql
   ```

2. **Listar Bancos de Dados:**

   Para listar todos os bancos de dados disponíveis no PostgreSQL, você pode usar o comando:

   ```sql
   \l
   ```

   Isso exibirá uma lista de todos os bancos de dados e suas propriedades.

3. **Conectar a um Banco de Dados:**

   Para se conectar a um banco de dados específico, use o comando:

   ```sql
   \c nome_do_banco_de_dados
   ```

   Substitua `nome_do_banco_de_dados` pelo nome do banco de dados ao qual deseja se conectar.

4. **Listar Tabelas:**

   Depois de se conectar a um banco de dados, você pode listar todas as tabelas dentro desse banco de dados usando:

   ```sql
   \dt
   ```

5. **Executar Comandos SQL:**

   Você pode executar comandos SQL diretamente no `psql`. Por exemplo, para criar uma tabela:

   ```sql
   CREATE TABLE minha_tabela (
       id serial PRIMARY KEY,
       nome VARCHAR(255),
       idade INT
   );
   ```

6. **Sair do `psql`:**

   Para sair do `psql`, você pode usar o comando:

   ```sql
   \q
   ```

   Isso o desconectará do PostgreSQL e o levará de volta ao prompt de comando.

7. **Ajuda:**

   Se você precisar de ajuda ou quiser saber mais sobre os comandos disponíveis, você pode usar:

   ```sql
   \?
   ```

   Isso exibirá uma lista de comandos disponíveis e uma breve descrição de cada um.

8. **Sair do PostgreSQL:**

   Para sair completamente do PostgreSQL, incluindo a sessão `psql`, use:

   ```sql
   \q
   ```

Estes são alguns dos comandos básicos do `psql`. Você pode usar o `psql` para executar uma ampla variedade de operações no PostgreSQL, desde a criação de tabelas e inserção de dados até a consulta e atualização de informações. Certifique-se de consultar a documentação do PostgreSQL e do `psql` para obter mais detalhes e comandos avançados.