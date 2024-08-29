create table venda_motos (
id_mots int not null primary key auto_increment,
modelo varchar (100) not null,
ano_fabricacoa date not null,
preco decimal (10,2) not null,
estoque decimal (10,2)
);

create table clientes (
id_clientes int not null primary key auto_increment,
nome varchar (100) not null,
email varchar (200) not null,
telefone varchar (15)
);

create table notas_fiscais (
id_notas_fiscais int not null primary key auto_increment,
data_emissao date not null,
valor_total decimal (10,2) not null,
id_clientes int,
foreign key (id_clientes) references clientes (id_clientes) 
);

create table itens_nota(
id_itens int not null primary key auto_increment,
qunatidade decimal (10,2)not null,
preco_unitario decimal(10,2) not null,
id_mots int,
id_notas_fiscais int,
foreign key (id_mots) references venda_motos(id_mots),
foreign key (id_notas_fiscais) references notas_fiscais(id_notas_fiscais)
);

SELECT c.id_clientes, c.nome, nf.id_notas_fiscais, nf.data_emissao,
nf.valor_total
FROM clientes c
JOIN notas_fiscais nf ON c.id_clientes = nf.id_clientes
WHERE c.id_clientes = 21;


select * FROM clientes c JOIN notas_fiscais nf ON c.id_clientes = nf.id_clientes WHERE c.id_clientes = 21;