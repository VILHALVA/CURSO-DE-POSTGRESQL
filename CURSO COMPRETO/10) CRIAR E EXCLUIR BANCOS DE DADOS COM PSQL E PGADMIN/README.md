# CRIAR E EXCLUIR BANCOS DE DADOS COM PSQL E PGADMIN
Você pode criar e excluir bancos de dados no PostgreSQL tanto usando o `psql` (utilitário de linha de comando) quanto através do pgAdmin (interface gráfica). Abaixo, descrevo como fazer isso nos dois ambientes.

**Criar um Banco de Dados:**

**Usando `psql` (linha de comando):**

1. Abra um terminal.

2. Conecte-se ao PostgreSQL como um superusuário, geralmente "postgres", usando o comando `psql`:

   ```bash
   sudo -u postgres psql
   ```

3. Para criar um banco de dados, use o comando SQL `CREATE DATABASE`:

   ```sql
   CREATE DATABASE nome_do_banco_de_dados;
   ```

   Substitua `nome_do_banco_de_dados` pelo nome desejado para o novo banco de dados.

4. Após criar o banco de dados, saia do `psql`:

   ```sql
   \q
   ```

**Usando o pgAdmin (interface gráfica):**

1. Abra o pgAdmin.

2. No painel de navegação à esquerda, clique com o botão direito em "Bancos de Dados" e escolha "Novo Banco de Dados".

3. Preencha o nome do banco de dados desejado na guia "Geral" e configure outras opções, se necessário.

4. Clique em "Salvar" para criar o banco de dados.

**Excluir um Banco de Dados:**

**Usando `psql` (linha de comando):**

1. Abra um terminal.

2. Conecte-se ao PostgreSQL como um superusuário usando o comando `psql`:

   ```bash
   sudo -u postgres psql
   ```

3. Para excluir um banco de dados, use o comando SQL `DROP DATABASE`:

   ```sql
   DROP DATABASE nome_do_banco_de_dados;
   ```

   Substitua `nome_do_banco_de_dados` pelo nome do banco de dados que você deseja excluir.

4. Após excluir o banco de dados, saia do `psql`:

   ```sql
   \q
   ```

**Usando o pgAdmin (interface gráfica):**

1. Abra o pgAdmin.

2. No painel de navegação à esquerda, expanda "Bancos de Dados" e selecione o banco de dados que você deseja excluir.

3. Clique com o botão direito no banco de dados e escolha "Excluir/Drop" no menu de contexto.

4. Confirme a exclusão quando solicitado.

Lembre-se de que a exclusão de um banco de dados é uma operação irreversível, e todos os dados no banco de dados serão permanentemente apagados. Portanto, tenha cuidado ao excluir bancos de dados. Certifique-se de ter cópias de segurança adequadas, se necessário.