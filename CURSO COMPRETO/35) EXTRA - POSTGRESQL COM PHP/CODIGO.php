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
