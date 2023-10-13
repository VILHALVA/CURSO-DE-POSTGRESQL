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
