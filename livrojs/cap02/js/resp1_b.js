const frm = document.querySelector("form");
const resp = document.querySelector("h3");

frm.addEventListener("submit", (e) => {
    e.preventDefault(); // Adicione isso aqui para evitar o envio do formulário

    const valor = Number(frm.inValor.value);
    const tempo = Number(frm.idTempo.value);

    const Total = Math.round(tempo / 15);
    const valorPagar = Total * valor;

    resp.innerText = `Valor a Pagar R$: ${valorPagar.toFixed(2)}`;
});