# COMO CRIAR E EXCLUIR USUÁRIOS COM CREATEUSER E DROPUSER
Você pode criar e excluir usuários no PostgreSQL usando os comandos `createuser` e `dropuser`. Aqui estão as instruções para criar e excluir usuários usando esses comandos:

**Criar um Usuário com `createuser`:**

Para criar um usuário no PostgreSQL usando o comando `createuser`, siga as etapas abaixo:

1. Abra um terminal.

2. Para criar um novo usuário, execute o seguinte comando, substituindo `<nome_do_usuario>` pelo nome do usuário que você deseja criar:

   ```bash
   createuser <nome_do_usuario>
   ```

   Por exemplo, se você deseja criar um usuário chamado "meuusuario", execute:

   ```bash
   createuser meuusuario
   ```

3. O comando `createuser` solicitará informações adicionais, como se o novo usuário deve ser um superusuário ou se deve poder criar bancos de dados. Responda de acordo com as permissões necessárias para esse usuário.

4. Após responder às perguntas, o novo usuário será criado.

**Excluir um Usuário com `dropuser`:**

Para excluir um usuário do PostgreSQL usando o comando `dropuser`, siga as etapas abaixo:

1. Abra um terminal.

2. Para excluir um usuário, execute o seguinte comando, substituindo `<nome_do_usuario>` pelo nome do usuário que você deseja excluir:

   ```bash
   dropuser <nome_do_usuario>
   ```

   Por exemplo, se você deseja excluir o usuário "meuusuario", execute:

   ```bash
   dropuser meuusuario
   ```

3. O comando `dropuser` solicitará confirmação. Digite "y" e pressione Enter para confirmar a exclusão do usuário.

4. O usuário será excluído do PostgreSQL.

Lembre-se de que a criação e exclusão de usuários devem ser realizadas com cuidado, pois afetam as permissões de acesso ao banco de dados. Certifique-se de estar autorizado a realizar essas ações e de que está ciente das implicações das permissões concedidas aos usuários.