// Este script irá gerenciar a exibição de detalhes do exame e o agendamento.

// Dados simulados para exames e laboratórios
const exams = [
    { name: 'Exame de Sangue', id: 1 },
    { name: 'Ressonância Magnética', id: 2 },
    // Adicione mais exames conforme necessário
];

const laboratories = [
    { name: 'Laboratório A', id: 1 },
    { name: 'Laboratório B', id: 2 },
    // Adicione mais laboratórios conforme necessário
];

// Função para carregar exames na lista
function loadExams() {
    const examsList = document.getElementById('exams-list');
    exams.forEach(exam => {
        const listItem = document.createElement('li');
        listItem.textContent = exam.name;
        listItem.dataset.examId = exam.id;
        listItem.addEventListener('click', () => showExamDetails(exam.id));
        examsList.appendChild(listItem);
    });
}

// Função para exibir detalhes do exame
function showExamDetails(examId) {
    const examDetails = document.getElementById('exam-details');
    const laboratoryList = document.getElementById('laboratory-list');
    const appointmentForm = document.getElementById('appointment-form');
    const confirmationMessage = document.getElementById('confirmation-message');

    // Limpa os detalhes do exame
    laboratoryList.innerHTML = '';
    appointmentForm.classList.add('hidden');
    confirmationMessage.classList.add('hidden');

    // Adiciona os laboratórios disponíveis para o exame selecionado
    laboratories.forEach(lab => {
        const labItem = document.createElement('option');
        labItem.value = lab.id;
        labItem.textContent = lab.name;
        document.getElementById('laboratory').appendChild(labItem);
    });

    // Mostra a seção de detalhes do exame e o formulário de agendamento
    examDetails.classList.remove('hidden');
    appointmentForm.classList.remove('hidden');
}

// Função para tratar o envio do formulário
document.getElementById('appointment-form').addEventListener('submit', (event) => {
    event.preventDefault();
    document.getElementById('confirmation-message').classList.remove('hidden');
});

// Carregar exames na página
loadExams();
