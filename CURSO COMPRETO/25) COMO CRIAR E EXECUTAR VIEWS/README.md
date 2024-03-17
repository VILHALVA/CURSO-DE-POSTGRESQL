# COMO CRIAR E EXECUTAR VIEWS
**Conceito de VIEWS:**

Em bancos de dados, uma **VIEW** (visão) é uma representação virtual de uma tabela ou de uma consulta SQL. Ela permite que você defina uma consulta SQL como um objeto que pode ser referenciado em outras consultas ou utilizado para simplificar o acesso a dados complexos. As views não armazenam dados fisicamente, mas fornecem uma maneira de exibir os dados de tabelas ou outras views existentes sob uma forma mais conveniente.

As views são úteis por vários motivos:

1. **Segurança:** Você pode restringir o acesso direto a tabelas subjacentes e fornecer permissões apenas para as views, controlando assim quem pode acessar quais dados.

2. **Simplicidade:** As views podem ocultar a complexidade dos esquemas de banco de dados, tornando as consultas mais simples para os usuários finais.

3. **Reutilização:** As views podem ser usadas em várias consultas, evitando a necessidade de escrever a mesma lógica de consulta repetidamente.

**Criar uma VIEW:**

Para criar uma view em um banco de dados PostgreSQL, você pode usar o comando `CREATE VIEW`. A sintaxe básica é a seguinte:

```sql
CREATE VIEW nome_da_view AS
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

Aqui está um exemplo simples de criação de uma view que exibe os nomes e as idades das pessoas:

```sql
CREATE VIEW view_pessoas AS
SELECT nome, idade
FROM pessoas;
```

Depois de criar a view, você pode consultar os dados da mesma forma que faria com uma tabela real. Por exemplo:

```sql
SELECT * FROM view_pessoas;
```

**Alterar ou Atualizar uma VIEW:**

Para atualizar uma view existente, você pode usar o comando `CREATE OR REPLACE VIEW` para redefinir a definição da view:

```sql
CREATE OR REPLACE VIEW nome_da_view AS
SELECT novas_colunas
FROM novas_tabelas
WHERE nova_condição;
```

**Excluir uma VIEW:**

Para excluir uma view, use o comando `DROP VIEW`:

```sql
DROP VIEW nome_da_view;
```

**Exemplo de Uso de VIEW:**

Suponha que você tenha uma tabela "pedidos" e uma tabela "itens_pedido" e queira criar uma view que forneça informações detalhadas sobre os pedidos e os itens associados. A view pode ser criada da seguinte forma:

```sql
CREATE VIEW view_detalhes_pedidos AS
SELECT p.numero_pedido, p.data_pedido, i.produto_id, i.quantidade
FROM pedidos p
INNER JOIN itens_pedido i ON p.id = i.pedido_id;
```

Agora, você pode consultar a view "view_detalhes_pedidos" para obter informações sobre os pedidos e os itens associados, tornando as consultas mais simples.

As views são uma ferramenta poderosa para simplificar o acesso a dados complexos e aumentar a segurança e a eficiência das consultas. Elas podem ser especialmente úteis quando você precisa fornecer um acesso fácil e restrito a dados em um banco de dados relacional.