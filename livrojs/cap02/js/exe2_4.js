const frm = document.querySelector("form");
const resp = document.querySelector("h3");

frm.addEventListener("submit", (e)=>{
    const Kg = Number(frm.inKg.value);
    const consumo = Number(frm.inConsumo.value)

    const valor = (Kg / 1000) * consumo;
    resp.innerText = `Valor a pagar R$: ${valor.toFixed(2)}`;
    e.preventDefault();

})
