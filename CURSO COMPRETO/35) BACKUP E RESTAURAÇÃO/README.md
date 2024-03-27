# Importar e Exportar Banco de Dados PostgreSQL
## Via Linha de Comando (Shell):
### Exportar (Backup):
```bash
pg_dump -U [nome_do_usuário] -d [nome_do_banco_de_dados] -f [nome_do_arquivo_de_backup].sql
```

- Substitua `[nome_do_usuário]` pelo nome de usuário do PostgreSQL.
- Substitua `[nome_do_banco_de_dados]` pelo nome do banco de dados que deseja fazer o backup.
- Substitua `[nome_do_arquivo_de_backup]` pelo nome do arquivo de backup que deseja criar.

### Importar (Restaurar):
```bash
psql -U [nome_do_usuário] -d [nome_do_banco_de_dados] -f [caminho_para_o_arquivo_de_backup].sql
```

- Substitua `[nome_do_usuário]` pelo nome de usuário do PostgreSQL.
- Substitua `[nome_do_banco_de_dados]` pelo nome do banco de dados no qual deseja importar.
- Substitua `[caminho_para_o_arquivo_de_backup]` pelo caminho completo para o arquivo de backup que deseja importar.

## Via Interface Gráfica:
### Exportar (Backup) usando pgAdmin:
1. Abra o pgAdmin e conecte-se ao seu servidor PostgreSQL.
2. Expanda o servidor e navegue até a base de dados que deseja exportar.
3. Clique com o botão direito do mouse na base de dados e selecione "Backup".
4. Escolha as opções de backup, como onde salvar o arquivo e o formato do arquivo.
5. Clique em "Backup" para iniciar o processo de backup.

### Importar (Restaurar) usando pgAdmin:
1. Abra o pgAdmin e conecte-se ao seu servidor PostgreSQL.
2. Expanda o servidor e navegue até a base de dados onde deseja importar os dados.
3. Clique com o botão direito do mouse na base de dados e selecione "Restore".
4. Escolha o arquivo de backup que deseja importar.
5. Selecione as opções de restauração, se necessário.
6. Clique em "Restore" para iniciar o processo de restauração.

