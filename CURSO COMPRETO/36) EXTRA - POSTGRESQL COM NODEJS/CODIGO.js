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
