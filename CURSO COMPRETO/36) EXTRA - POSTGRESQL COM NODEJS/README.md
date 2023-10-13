# POSTGRESQL COM NODEJS - FORMULARIO
Vou fornecer um exemplo de código Node.js com PostgreSQL para criar um formulário simples em HTML, juntamente com JavaScript para processar os dados do formulário e inseri-los no banco de dados. Vou dividir o exemplo em partes e fornecer explicações em cada etapa.

**1. HTML Formulário (form.html):**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Exemplo</title>
</head>
<body>
    <h1>Formulário de Exemplo</h1>
    <form id="meuFormulario">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" required>
        <br>

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="email" required>
        <br>

        <label for="mensagem">Mensagem:</label>
        <textarea name="mensagem" id="mensagem" rows="4" required></textarea>
        <br>

        <button type="submit">Enviar</button>
    </form>

    <script src="script.js"></script>
</body>
</html>
```

Este é um formulário HTML simples com campos para Nome, E-mail e Mensagem. O formulário é identificado pelo ID "meuFormulario" e contém um botão "Enviar". Também incluímos um arquivo JavaScript chamado "script.js" para processar o formulário.

**2. JavaScript (script.js):**
```javascript
document.getElementById("meuFormulario").addEventListener("submit", function(event) {
    event.preventDefault();
    
    const nome = document.getElementById("nome").value;
    const email = document.getElementById("email").value;
    const mensagem = document.getElementById("mensagem").value;

    fetch("/processar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ nome, email, mensagem })
    })
    .then(response => response.json())
    .then(data => {
        alert(data.message);
        document.getElementById("meuFormulario").reset();
    });
});
```

Neste código JavaScript, estamos adicionando um ouvinte de evento ao formulário com o ID "meuFormulario". Quando o formulário é enviado, ele evita o comportamento padrão de recarregar a página e, em vez disso, coleta os dados dos campos do formulário e os envia como uma solicitação POST para o servidor.

**3. Node.js com Express (server.js):**
```javascript
const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const { Pool } = require("pg");

// Configuração do banco de dados PostgreSQL
const pool = new Pool({
    user: "seu_usuario",
    host: "seu_host",
    database: "seu_banco_de_dados",
    password: "sua_senha",
    port: 5432
});

app.use(bodyParser.json());

app.post("/processar", async (req, res) => {
    const { nome, email, mensagem } = req.body;

    try {
        const client = await pool.connect();
        const query = "INSERT INTO formulario (nome, email, mensagem) VALUES ($1, $2, $3)";
        const values = [nome, email, mensagem];
        await client.query(query, values);
        client.release();
        res.json({ message: "Dados inseridos com sucesso no banco de dados." });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: "Erro ao inserir dados no banco de dados." });
    }
});

app.listen(3000, () => {
    console.log("Servidor em execução na porta 3000.");
});
```

Neste código Node.js com Express, estamos configurando um servidor que escuta na porta 3000. Quando os dados do formulário são enviados para "/processar", o servidor insere os dados no banco de dados PostgreSQL usando a biblioteca "pg". Certifique-se de substituir "seu_usuario", "seu_host", "seu_banco_de_dados" e "sua_senha" pelas informações corretas de conexão com seu banco de dados.

Certifique-se de instalar as dependências necessárias, incluindo o Express, o body-parser e o "pg". Você pode instalá-los com o comando `npm install express body-parser pg`.

Esse é um exemplo básico de como criar um formulário web com Node.js e PostgreSQL para coletar dados e inseri-los no banco de dados. Certifique-se de ajustar as configurações de conexão ao banco de dados e o ambiente de desenvolvimento de acordo com suas necessidades.