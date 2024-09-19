document.getElementById("alterar-btn").addEventListener("click", function() {
    document.getElementById("alterar-section").classList.remove("hidden");
});

document.getElementById("excluir-btn").addEventListener("click", function() {
    document.getElementById("excluir-popup").classList.remove("hidden");
});

document.getElementById("fechar-popup").addEventListener("click", function() {
    document.getElementById("excluir-popup").classList.add("hidden");
});
