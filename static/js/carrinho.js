async function mostrar_carrinho(){
    
    const resposta = await fetch("http://10.110.134.2:8080/api/get/carrinho")

    if (!resposta.ok) {
        alert("ERRO AO CARREGAR CARRINHO.")
    }
    else{
        const dados = await resposta.json()
        const carrinho = document.getElementById("carrinho")
        carrinho.innerHTML = "";
        for (let dado of dados){
            let linha = `
            <div class="item-info">
            <h3>${dado.nome}</h3>
            <p>${dado.preco}</p>
            </div>
            `
            carrinho.innerHTML += linha
        }
    }
}

mostrar_carrinho();