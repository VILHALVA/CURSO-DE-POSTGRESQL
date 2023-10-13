# MONGODB COM PHP - FORMULARIO
Aqui está um exemplo de código PHP, HTML e comandos de banco de dados PostgreSQL para criar um formulário simples e processar os dados inseridos no banco de dados. Vou fornecer um exemplo passo a passo com explicações.

**1. HTML Formulário (form.html):**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Exemplo</title>
</head>
<body>
    <h1>Formulário de Exemplo</h1>
    <form action="CODIGO.php" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" required>
        <br>

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="email" required>
        <br>

        <label for="mensagem">Mensagem:</label>
        <textarea name="mensagem" id="mensagem" rows="4" required></textarea>
        <br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>
```

Este é um formulário HTML simples com campos para Nome, E-mail e Mensagem. O formulário enviará os dados para o arquivo "processar.php" quando o usuário clicar em "Enviar".

**2. PHP para Processar o Formulário (processar.php):**
```php
<?php
// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recupera os dados do formulário
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $mensagem = $_POST["mensagem"];

    // Conecta ao banco de dados
    $conn = pg_connect("host=seu_host dbname=seu_banco_de_dados user=seu_usuario password=sua_senha");

    // Verifica a conexão
    if (!$conn) {
        die("Erro na conexão com o banco de dados: " . pg_last_error());
    }

    // Prepara a consulta SQL
    $sql = "INSERT INTO formulario (nome, email, mensagem) VALUES ('$nome', '$email', '$mensagem')";

    // Executa a consulta
    $result = pg_query($conn, $sql);

    // Verifica se a consulta foi bem-sucedida
    if ($result) {
        echo "Dados inseridos com sucesso no banco de dados.";
    } else {
        echo "Erro ao inserir dados no banco de dados: " . pg_last_error();
    }

    // Fecha a conexão com o banco de dados
    pg_close($conn);
}
?>
```

Este script PHP processa os dados enviados pelo formulário. Ele conecta ao banco de dados PostgreSQL, verifica a conexão, prepara uma consulta SQL para inserir os dados no banco de dados e executa a consulta. Em seguida, ele exibe uma mensagem de sucesso ou erro.

**3. Banco de Dados PostgreSQL:**
Antes de usar o código acima, você precisa criar a tabela no banco de dados onde os dados serão armazenados. Você pode fazer isso com o seguinte comando SQL:

```sql
CREATE TABLE formulario (
    id serial PRIMARY KEY,
    nome varchar(255),
    email varchar(255),
    mensagem text
);
```

Este comando SQL cria uma tabela chamada "formulario" com colunas para ID, Nome, E-mail e Mensagem.

Lembre-se de substituir "seu_host", "seu_banco_de_dados", "seu_usuario" e "sua_senha" com as informações corretas de conexão com seu banco de dados.

Este é um exemplo básico de um formulário PHP/HTML que coleta informações de um usuário e as armazena em um banco de dados PostgreSQL. Certifique-se de configurar seu ambiente corretamente, incluindo as configurações de conexão ao banco de dados e a tabela no banco de dados, para que o código funcione como esperado.