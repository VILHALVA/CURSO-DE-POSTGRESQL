# INSTALANDO O PHPPGADMIN PARA GERENCIAMENTO REMOTO DO SGBD
Para instalar o phpPgAdmin, uma interface web que permite gerenciar remotamente o PostgreSQL, você pode seguir estas etapas. Certifique-se de que o PostgreSQL já esteja instalado e funcionando em seu sistema Debian, conforme mencionado anteriormente.

1. **Instale o phpPgAdmin:**

   Use o comando `apt` para instalar o phpPgAdmin:

   ```bash
   sudo apt install phppgadmin
   ```

   Durante o processo de instalação, você será solicitado a configurar o servidor web para usar o phpPgAdmin. Selecione o servidor web que você está usando (por exemplo, Apache2) e continue com a instalação.

2. **Configure o acesso ao PostgreSQL:**

   Por padrão, o phpPgAdmin é configurado para acessar o PostgreSQL apenas localmente. Para permitir o acesso remoto, você precisa editar o arquivo de configuração do phpPgAdmin. Abra o arquivo `config.inc.php` em um editor de texto:

   ```bash
   sudo nano /etc/phppgadmin/config.inc.php
   ```

   Dentro do arquivo, localize a seção onde são definidos os hosts permitidos. Para permitir o acesso de qualquer host, você pode adicionar o seguinte trecho:

   ```php
   $conf['extra_login_security'] = false;
   $conf['hosts'] = array('localhost', 'seu_endereco_ip');
   ```

   Substitua `'seu_endereco_ip'` pelo endereço IP do computador de onde você deseja acessar o phpPgAdmin.

3. **Reinicie o servidor web:**

   Após fazer as alterações, reinicie seu servidor web (geralmente o Apache) para aplicar as configurações:

   ```bash
   sudo service apache2 restart
   ```

4. **Acesso ao phpPgAdmin:**

   Agora, você pode acessar o phpPgAdmin pelo navegador da web. Abra seu navegador e acesse o seguinte URL:

   ```
   http://seu_endereco_ip/phppgadmin
   ```

   Substitua `seu_endereco_ip` pelo endereço IP do servidor onde você instalou o phpPgAdmin.

5. **Faça login:** No phpPgAdmin, faça login usando as credenciais do PostgreSQL. Geralmente, o nome de usuário padrão é "postgres", e você deve fornecer a senha que você configurou durante a instalação do PostgreSQL.

Agora você deve estar conectado ao phpPgAdmin e pode começar a gerenciar seu banco de dados PostgreSQL remotamente através da interface web. Lembre-se de que a segurança é importante ao disponibilizar ferramentas de gerenciamento web, portanto, mantenha as senhas seguras e restrinja o acesso apenas aos usuários autorizados.