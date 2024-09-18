let deck = {};

function gerarnovobaralho(){
    fetch("https://deckofcardsapi.com/api/deck/new/shuffle/?cards=4C,7H,AS,7D,3C,3H,3S,3D,2C,2H,2S,2D,AC,AH,AD,KC,KH,KS,KD,JC,JH,JS,JD,QC,QH,QS,QD")
    .then(getjsondata)
    .then(function(jsonData){
        deck = jsonData.deck_id;
    })
}

function getjsondata(respostaApi) {
    const json = respostaApi.json();
    return json;
}   
function atualizarInfo(jsonData){
    if(!jsonData.success)
    throw new Error("Erro  ao  acessar Api ");
    const deck_id = jsonData.deck_id;
    const remaining = jsonData.remaining;
    const info1 = document.getElementById("deck_id");
    const info2 = document.getElementById("remaining")
    info1.innerText = deck_id;
    info2.innerText = remaining;
    return jsonData;
}   
function puxarcartas(jsonData) {
    const cards = jsonData.cards;

    for (let i = 0; i < 3; i++) {
      const id = `carta${1 + i}`;

      const card1 = document.getElementById(id);

      let img1 = card1.querySelector('img');
      if (img1 == null) {
        img1 = document.createElement('img');
      }

    img1.setAttribute('src', cards[i].image);
    card1.append(img1);
    }
}
function embaralhar() {
   fetch(`https://deckofcardsapi.com/api/deck/${deck}/shuffle/?remaining=false`)
  .then(getjsondata)
}
function olharcartas() {
   fetch(`https://deckofcardsapi.com/api/deck/${deck}/draw/?count=3`)
  .then(getjsondata)
  .then(atualizarInfo)
  .then(puxarcartas)
  .catch(erro => alert(erro));
}