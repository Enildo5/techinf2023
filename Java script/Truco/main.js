function converteParaJSON(data){
    const obj = data.json();
    return obj;
}

function imprimeTabela(json){
    // console.log(json);
    console.table(json.cards, ["code", "image", "value", "suit"] );
    console.log("Restam", json.remaining, "cartas.");
}

fetch('https://deckofcardsapi.com/api/deck/c0l4i9yr5s7t/draw/?count=3')
.then(converteParaJSON)
.then(imprimeTabela)