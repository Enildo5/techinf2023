function livro(nome,genero,autor){
    this.nome =  nome;
    this.genero = genero;
    this.autor = autor;
}

let jon = new livro("olhos famintos","terror","jek");
console.log(jon);