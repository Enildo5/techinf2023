create database turismo

create table destinos (
coddestino int not null primary key auto_increment,
nome_destino varchar (150) not null,
descricao varchar (150) not null,
cidade varchar (100) not null,
atrativos varchar (150) not null,
clima varchar (100) not null
);



create table pacotes(
codpacote int not null primary key auto_increment,
nome_pacote varchar (150) not null,
descricao varchar (100) not null,
tipo varchar (200) not null,
duracao date not null,
preco decimal (10,2),
coddestino int,
foreign key (coddestino) references destinos (coddestino)
);

create table clientes (
codcliente int not null primary key auto_increment,
nome varchar (100) not null,
sobrenome varchar (100) not null,
telefone varchar (15) 
);

create table reserva (
codreserva int not null primary key auto_increment,
data_reserva date not null,
data_inicio_viagem date not null,
data_termino_viagem date not null,
status_pagamento varchar (250) not null,
metodo_pagamento varchar (250) not null,
codpacote int,
codcliente int,
foreign key (codpacote) references pacotes (codpacote),
foreign key (codcliente) references clientes (codcliente)
);


