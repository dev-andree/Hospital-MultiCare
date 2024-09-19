document.getElementById('search-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Previne o envio padrão do formulário
    
    const planName = document.getElementById('plan-name').value.trim();
    const resultDiv = document.getElementById('result');
    
    if (planName) {
        // Simulação de verificação de plano
        // Em um caso real, você faria uma chamada para o servidor para verificar o plano.
        resultDiv.innerHTML = `
            <h3>Resultado da Pesquisa</h3>
            <p><strong>Plano:</strong> ${planName}</p>
            <p>O seu plano é aceito pelo hospital.</p>
            <p>Detalhes sobre coberturas de exames e consultas, além de informações sobre autorizações e taxas extras, estão disponíveis aqui.</p>
        `;
    } else {
        resultDiv.innerHTML = '<p>Por favor, insira o nome do plano de saúde.</p>';
    }
});
