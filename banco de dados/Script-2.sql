create table clientes(
	id_cliente int primary key auto_increment,
	nome varchar(100),
	endereco varchar(100)
);

create table pedidos(
	id_pedido int primary key auto_increment,
	id_cliente int,
	data_pedido date,
	foreign key (id_cliente) references clientes(id_cliente)
);

create table produtos(
	id_produto int primary key auto_increment,
	desc_prod varchar(100),
	preco decimal(10,2)
);

create table itens_pedido(
	id_item int primary key auto_increment,
	quantidade int, 
	id_pedido int,
	id_produto int,
	foreign key (id_pedido) references pedidos(id_pedido),
	foreign key (id_produto) references produtos(id_produto)
);

SELECT * FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
LEFT JOIN itens_pedido i ON p.id_pedido = i.id_pedido
RIGHT JOIN produtos pr ON i.id_produto = pr.id_produto;

SELECT c.id_cliente, c.nome,c.endereco, p.data_pedido, pr.desc_prod, i.quantidade, pr.preco FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente 
LEFT JOIN itens_pedido i ON p.id_pedido = i.id_pedido
RIGHT JOIN produtos pr ON i.id_produto = pr.id_produto


