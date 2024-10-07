const frm = document.querySelector("form");
const resp1 = document.querySelector("#outResp1");
const resp2 = document.querySelector("#outResp2");
const resp3 = document.querySelector("#outResp3");

frm.addEventListener("submit", (e)=> {
    e.preventDefault();

    const nome = frm.inProduto.value;
    const preco = Number(frm.inPreco.value);
    
    const promocao = Math.floor(preco * 3) - (preco * 0.5);

    resp1.innerText = `Promocão de: ${nome}`;
    resp2.innerText = `Leve 3 por apenas: R$ ${promocao.toFixed(2)}`;
    resp3.innerText = `O 3º produto saí por apenas: R$ ${(preco * 0.5).toFixed(2)}`


})