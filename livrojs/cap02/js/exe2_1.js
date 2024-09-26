// criar uma referência ao forme e ao h3 (onde será exibida a resposta)
const frm = document.querySelector("form");
const resp = document.querySelector("h3");

// cria um 'ouvinte' de evento, acionado quando o botão submit for clicado
frm.addEventListener("submit", executar (e)=>{


});

function executar(params) {
    const nome = frm.inNome.value; // obtém o nome digitado no form
    resp.innerText = `Olá <i>${nome}</i>`; // exibe a resposta do progama
    evento.proventDefault(); //vai evitar que o form envio os dados pro destino.php
}