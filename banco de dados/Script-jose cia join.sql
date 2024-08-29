create table equipamentos (
codequipamentos int not null primary key auto_increment,
tipo varchar (150) not null,
modelo varchar (150) not null,
numero_serie decimal not null,
status varchar (150) not null
);

create table prefeitura (
codprefeitura int not null primary key auto_increment,
nome varchar (150) not null,
enderco varchar (200) not null,
responsavel varchar (200) not  null
);

create table saidas_equipamentos (
codsaida int not null primary key auto_increment,
data_saida date not null,
motivo varchar (150) not null,
codequipamentos int not null,
codprefeitura int not null,
foreign key (codequipamentos) references equipamentos (codequipamentos),
foreign key (codprefeitura) references prefeitura (codprefeitura)
);

create table entradas_equipamentos (
codentradas int not null primary key auto_increment,
data_entrada varchar (150) not null,
observacoes varchar (150) not null,
codsaida int not null,
foreign key(codsaida) references saidas_equipamentos (codsaida)
);

select * from equipamentos e 
inner join saidas_equipamentos se on se.codequipamentos = e.codequipamentos 
left join prefeitura p on p.codprefeitura = SE.codprefeitura 
right join entradas_equipamentos ee on ee.codsaida = ee.codsaida 

