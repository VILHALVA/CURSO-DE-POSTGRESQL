# COMANDOS DE POSTGRESQL VERSUS MYSQL
Aqui está uma tabela comparativa dos principais comandos entre PostgreSQL e MySQL:

| Operação             | PostgreSQL                                         | MySQL                                      |
|----------------------|----------------------------------------------------|--------------------------------------------|
| Criar Banco de Dados | `CREATE DATABASE database_name;`                   | `CREATE DATABASE database_name;`          |
| Usar Banco de Dados  | `\c database_name;`                                | `USE database_name;`                      |
| Criar Tabela         | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` | `CREATE TABLE table_name (column1 datatype, column2 datatype,...);` |
| Inserir Registro     | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` | `INSERT INTO table_name (column1, column2,...) VALUES (value1, value2,...);` |
| Selecionar Registro(s) | `SELECT * FROM table_name WHERE condition;`       | `SELECT * FROM table_name WHERE condition;` |
| Atualizar Registro   | `UPDATE table_name SET column1 = value1 WHERE condition;` | `UPDATE table_name SET column1 = value1 WHERE condition;` |
| Excluir Registro     | `DELETE FROM table_name WHERE condition;`         | `DELETE FROM table_name WHERE condition;` |
| Excluir Tabela       | `DROP TABLE table_name;`                          | `DROP TABLE table_name;`                  |
| Listar Bancos de Dados | `\l` ou `SELECT datname FROM pg_database;`       | `SHOW DATABASES;`                         |
| Listar Tabelas       | `\dt` ou `SELECT tablename FROM pg_tables WHERE schemaname='public';` | `SHOW TABLES;`                            |

Esta tabela compara os comandos básicos entre PostgreSQL e MySQL. Enquanto a funcionalidade essencial é bastante semelhante, há algumas diferenças de sintaxe e abordagem entre os dois sistemas. Sempre consulte a documentação oficial para obter detalhes específicos sobre os comandos e suas funcionalidades em cada sistema de banco de dados.