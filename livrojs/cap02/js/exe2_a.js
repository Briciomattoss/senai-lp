const frm = document.querySelector("outform");
const resp = document.querySelector("#Resp1");
const resp2 = document.querySelector("#outResp2");

frm.addEventListener("submit", (e)=>{
    const medicamento = frm.inMedicamneto.value;
    const preco = Number(frm.inPreco.value);

    const promocao = Math.floor(preco * 2);


    resp1.innerText = `Promoção de ${medicamento}`;
    resp2.innerText = `Leve 2 por apenas R$: ${promocao.toFixed(2)}`;
e.preventDefault();

})