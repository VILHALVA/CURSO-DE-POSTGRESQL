# COMO INSTALAR O POSTGRESQL NO LINUX DEBIAN
Para instalar o PostgreSQL no Debian, você pode seguir estas etapas:

1. **Atualize o sistema:**

   Antes de instalar qualquer software, é uma boa prática garantir que seu sistema esteja atualizado. Abra um terminal e execute os seguintes comandos:

   ```bash
   sudo apt update
   sudo apt upgrade
   ```

2. **Instale o PostgreSQL:**

   Use o gerenciador de pacotes `apt` para instalar o PostgreSQL e seus componentes. O pacote principal do PostgreSQL inclui o servidor e as bibliotecas necessárias:

   ```bash
   sudo apt install postgresql
   ```

   Durante a instalação, você será solicitado a confirmar a instalação e também será criado um usuário de sistema chamado "postgres," que é o superusuário do PostgreSQL.

3. **Inicie o serviço do PostgreSQL:**

   O PostgreSQL é instalado como um serviço e, normalmente, é iniciado automaticamente. Para ter certeza de que o serviço está em execução, você pode usar o seguinte comando:

   ```bash
   sudo service postgresql status
   ```

   Isso deve mostrar que o serviço está ativo.

4. **Acesso ao PostgreSQL:**

   O PostgreSQL utiliza autenticação baseada em senhas. Por padrão, o usuário "postgres" é o superusuário do PostgreSQL e é usado para administrar o banco de dados. Você pode entrar no PostgreSQL com o seguinte comando:

   ```bash
   sudo -u postgres psql
   ```

   Isso abrirá o prompt `psql`, onde você pode executar comandos SQL e gerenciar seu banco de dados.

Agora você tem o PostgreSQL instalado no Debian e está pronto para começar a criar bancos de dados, tabelas e realizar operações SQL. Lembre-se de manter a senha do superusuário "postgres" segura, pois ela é essencial para a administração do PostgreSQL.