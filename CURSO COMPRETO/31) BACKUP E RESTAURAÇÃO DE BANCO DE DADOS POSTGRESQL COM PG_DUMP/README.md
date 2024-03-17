# BACKUP E RESTAURAÇÃO DE BANCO DE DADOS POSTGRESQL COM PG_DUMP
## VIA TERMINAL:
O **pg_dump** é uma ferramenta que acompanha o PostgreSQL e é usada para fazer backups de bancos de dados PostgreSQL. Ele permite criar um arquivo de backup que contém todos os dados do banco de dados, estrutura das tabelas e outras informações que podem ser usadas para restaurar o banco de dados em caso de falhas, perda de dados ou para migração para outro servidor. Aqui estão os passos para realizar um backup e uma restauração de banco de dados usando o **pg_dump**:

**Fazendo um Backup com pg_dump:**

1. Abra o terminal ou prompt de comando.

2. Use o comando `pg_dump` para criar o backup. A sintaxe básica é a seguinte:

```bash
pg_dump -U seu_usuario -d nome_do_banco -f caminho_para_arquivo_de_backup
```

Substitua:
- `seu_usuario` pelo nome de usuário do PostgreSQL.
- `nome_do_banco` pelo nome do banco de dados que deseja fazer o backup.
- `caminho_para_arquivo_de_backup` pelo caminho onde deseja salvar o arquivo de backup. Pode ser um caminho absoluto ou relativo.

Por exemplo, para fazer um backup do banco de dados "meubanco" com o usuário "meuusuario" e salvar o arquivo de backup como "backup_meubanco.sql" na pasta atual, você pode usar o seguinte comando:

```bash
pg_dump -U meuusuario -d meubanco -f backup_meubanco.sql
```

3. O comando irá solicitar a senha do usuário PostgreSQL. Digite a senha quando solicitado.

4. O backup será criado no arquivo especificado.

**Restaurando um Banco de Dados com pg_restore:**

Para restaurar um banco de dados a partir de um arquivo de backup criado com o **pg_dump**, você pode usar o comando **pg_restore**.

1. Abra o terminal ou prompt de comando.

2. Use o comando `pg_restore` para restaurar o banco de dados. A sintaxe básica é a seguinte:

```bash
pg_restore -U seu_usuario -d nome_do_banco -c caminho_para_arquivo_de_backup
```

Substitua:
- `seu_usuario` pelo nome de usuário do PostgreSQL.
- `nome_do_banco` pelo nome do banco de dados que deseja restaurar.
- `caminho_para_arquivo_de_backup` pelo caminho para o arquivo de backup que deseja restaurar.

Por exemplo, para restaurar o banco de dados "meubanco" com o usuário "meuusuario" a partir do arquivo de backup "backup_meubanco.sql" na pasta atual, você pode usar o seguinte comando:

```bash
pg_restore -U meuusuario -d meubanco -c backup_meubanco.sql
```

3. O comando irá solicitar a senha do usuário PostgreSQL. Digite a senha quando solicitado.

4. O banco de dados será restaurado a partir do arquivo de backup.

Lembre-se de que o backup e a restauração de um banco de dados podem ser processos demorados, especialmente em bancos de dados grandes. 

## VIA PGADMIN:
Aqui está um tutorial passo a passo para fazer o backup de um banco de dados, apagá-lo e depois importá-lo usando o pgAdmin:

### Fazendo Backup do Banco de Dados:
1. **Abra o pgAdmin:**
   - Inicie o pgAdmin e conecte-se ao servidor PostgreSQL.

2. **Navegue até o Banco de Dados:**
   - No painel esquerdo do pgAdmin, expanda o servidor e acesse o banco de dados que deseja fazer o backup.

3. **Selecione a Opção de Backup:**
   - Clique com o botão direito do mouse sobre o banco de dados e selecione a opção "Backup..." no menu de contexto.

4. **Defina as Opções de Backup:**
   - Na janela de backup, selecione as opções desejadas, como o formato do arquivo de backup, o local de destino e outras opções relevantes.
   - Escolha o formato de arquivo preferido (por exemplo, "Plain" para um arquivo SQL legível).

5. **Inicie o Backup:**
   - Após configurar as opções, clique em "Backup" para iniciar o processo de backup.

6. **Aguarde a Conclusão:**
   - Aguarde até que o backup seja concluído. O pgAdmin irá gerar um arquivo de backup no formato especificado.

7. **Verifique o Backup:**
   - Após a conclusão do backup, verifique se o arquivo de backup foi criado no local especificado.

### Apagando o Banco de Dados:
1. **Abra o pgAdmin:**
   - Inicie o pgAdmin e conecte-se ao servidor PostgreSQL.

2. **Navegue até o Banco de Dados:**
   - No painel esquerdo do pgAdmin, localize o banco de dados que deseja excluir.

3. **Exclua o Banco de Dados:**
   - Clique com o botão direito do mouse sobre o banco de dados e selecione a opção "Delete/Drop" ou "Drop Database" no menu de contexto.

4. **Confirme a Exclusão:**
   - Na janela de confirmação, confirme que deseja excluir o banco de dados.

### Importando o Banco de Dados:
1. **Abra o pgAdmin:**
   - Inicie o pgAdmin e conecte-se ao servidor PostgreSQL.

2. **Selecione a Opção de Restauração:**
   - Clique com o botão direito do mouse em "Databases" e selecione a opção "Restore...".

3. **Localize o Arquivo de Backup:**
   - Na janela de restauração, selecione o arquivo de backup que deseja importar.

4. **Defina as Opções de Restauração:**
   - Escolha as opções de restauração conforme necessário, como o esquema de destino, desabilitar a restauração de objetos específicos, etc.

5. **Inicie a Restauração:**
   - Após configurar as opções, clique em "Restore" para iniciar o processo de importação.

6. **Aguarde a Conclusão:**
   - Aguarde até que a restauração seja concluída. O pgAdmin irá importar os dados do arquivo de backup para o novo banco de dados.

7. **Verifique a Importação:**
   - Após a conclusão da importação, verifique se o banco de dados foi restaurado com sucesso e se os dados estão disponíveis conforme esperado.

Seguindo esses passos, você poderá fazer backup, excluir e importar bancos de dados usando o pgAdmin no PostgreSQL. Certifique-se de tomar precauções adequadas ao excluir um banco de dados, pois isso pode resultar na perda permanente de dados. Sempre faça backup dos dados importantes antes de prosseguir com operações de exclusão e importação.