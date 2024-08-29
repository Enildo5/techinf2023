   create database autotec;
  
   create table materiais (
   codmateriais int not null primary key auto_increment,
   nome varchar (150) not null,
   quantidade decimal not null
   );
  
   create table ferramentas(
   codferramentas int not null primary key auto_increment,
   nome varchar (100) not null,
   quantidade decimal not null,
   disponivel varchar (150) not null
   );
  
   create table produtos (
   codprodutos int not null primary key auto_increment,
   nome varchar (100) not null,
   quantidade decimal not null
   );
  
  create table pedidos_internos (
  codpedidos_internos int not null primary key auto_increment,
  data_pedido date not null,
  quantidade decimal not null,
  status varchar (150) not null,
  codmateriais int not null,
  codferramentas int not null,
  codprodutos int not null,
  foreign key (codmateriais) references materiais(codmateriais),
  foreign key (codferramentas) references ferramentas (codferramentas),
  foreign key (codprodutos) references produtos(codprodutos) 
  );
 
 create table entradas_notas_fiscais (
 codentrada int not null primary key auto_increment,
 data_entrada date not null,
 quantidade decimal not null,
 numero_nota_fical decimal not null,
 codmateriais int not null,
 codprodutos int not null,
 foreign key (codmateriais) references materiais (codmateriais),
 foreign key (codprodutos)references produtos (codprodutos) 
 );

 
  
   