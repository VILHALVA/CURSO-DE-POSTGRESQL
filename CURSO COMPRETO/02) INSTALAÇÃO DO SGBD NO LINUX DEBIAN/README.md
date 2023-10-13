# INSTALAÇÃO DO SGBD NO LINUX DEBIAN
Para instalar o PostgreSQL em um sistema Debian, você pode seguir estas etapas:

1. **Atualize o sistema:** Antes de instalar qualquer software, é uma boa prática atualizar a lista de pacotes e atualizar o sistema para garantir que você esteja usando os pacotes mais recentes. Abra um terminal e execute os seguintes comandos:

   ```bash
   sudo apt update
   sudo apt upgrade
   ```

2. **Instale o PostgreSQL:** Agora, você pode instalar o PostgreSQL usando o gerenciador de pacotes APT. Use o seguinte comando para instalar o PostgreSQL e o pacote cliente `psql`:

   ```bash
   sudo apt install postgresql postgresql-contrib
   ```

   Isso instalará o PostgreSQL e componentes adicionais que podem ser úteis.

3. **Inicie o serviço:** Após a instalação, o serviço do PostgreSQL deve iniciar automaticamente. No entanto, se não iniciar, você pode usar o seguinte comando para iniciá-lo:

   ```bash
   sudo service postgresql start
   ```

4. **Verifique o status do serviço:** Para verificar se o PostgreSQL está em execução, você pode usar o seguinte comando:

   ```bash
   sudo service postgresql status
   ```

   Você verá uma saída indicando que o PostgreSQL está ativo e em execução.

5. **Acesse o prompt `psql`:** Agora, você pode acessar o prompt `psql` para interagir com o PostgreSQL. Use o seguinte comando para entrar no prompt como o usuário padrão "postgres":

   ```bash
   sudo -u postgres psql
   ```

   Isso abrirá o prompt `psql`, onde você pode executar comandos SQL e administrar seu banco de dados.

Lembre-se de que você pode criar bancos de dados, tabelas e executar consultas SQL a partir do prompt `psql`. Certifique-se de substituir "postgres" pelo seu próprio nome de usuário, se aplicável.

Isso conclui a instalação do PostgreSQL no Debian. Você está pronto para começar a usar o PostgreSQL em seu sistema.