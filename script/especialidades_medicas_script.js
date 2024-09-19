document.addEventListener('DOMContentLoaded', function() {
    const specialties = [
        { name: 'Cardiologia', doctors: ['Dr. João Silva', 'Dra. Ana Costa'] },
        { name: 'Ortopedia', doctors: ['Dr. Carlos Souza', 'Dra. Maria Oliveira'] },
        { name: 'Pediatria', doctors: ['Dr. Pedro Lima', 'Dra. Sofia Martins'] }
    ];

    const specialtiesList = document.getElementById('specialties-list');
    const specialtyDetails = document.getElementById('specialty-details');
    const doctorList = document.getElementById('doctor-list');
    const doctorSelect = document.getElementById('doctor');
    const appointmentForm = document.getElementById('appointment-form');

    function renderSpecialties() {
        specialtiesList.innerHTML = specialties.map(specialty => `
            <li data-name="${specialty.name}">${specialty.name}</li>
        `).join('');
    }

    function renderDoctors(doctors) {
        doctorList.innerHTML = `
            <h4>Médicos Disponíveis:</h4>
            <ul>
                ${doctors.map(doctor => `<li>${doctor}</li>`).join('')}
            </ul>
        `;
        doctorSelect.innerHTML = doctors.map(doctor => `<option value="${doctor}">${doctor}</option>`).join('');
        appointmentForm.classList.remove('hidden');
    }

    specialtiesList.addEventListener('click', function(event) {
        if (event.target.tagName === 'LI') {
            const specialtyName = event.target.getAttribute('data-name');
            const selectedSpecialty = specialties.find(s => s.name === specialtyName);
            if (selectedSpecialty) {
                specialtyDetails.classList.remove('hidden');
                renderDoctors(selectedSpecialty.doctors);
            }
        }
    });

    document.getElementById('appointment-form').addEventListener('submit', function(event) {
        event.preventDefault();
        const doctor = document.getElementById('doctor').value;
        const appointmentTime = document.getElementById('appointment-time').value;

        if (doctor && appointmentTime) {
            alert(`Consulta com ${doctor} agendada para ${appointmentTime}.`);
        } else {
            alert('Por favor, selecione todos os campos.');
        }
    });

    renderSpecialties();
});
