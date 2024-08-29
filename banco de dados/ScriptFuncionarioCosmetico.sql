create database EmpresaCosmetico;

create table Funcionario(
	CodFuncionario int not null primary key auto_increment,
	Nome varchar(100) not null,
	Endereco varchar(200) not null,
	CPF varchar(11) not null,
	NumPISPASEP varchar(25) not null,
	DataNasc date not null,
	Genero varchar(20),
	EstadoCivil varchar(15) not null,
	TituloEleitor varchar(25) not null,
	Escolaridade varchar(30) not null,
	Reservista varchar(30),
	Dependentes varchar(100),
	Telefone varchar(15) not null,
	Salario decimal(10,2) not null
);

create table Departamento(
	CodDepartamento int not null primary key auto_increment,
	Nome_DP varchar(100) not null,
	Funcao varchar(50) not null,
	Matricula int not null,
	Email varchar(150),
	CargaHoraria decimal(10,2) not null,
	CodFuncionario int not null,
	foreign key (CodFuncionario) references Funcionario(CodFuncionario)
);

create table Dados_Bancarios(
	CodDadosBancarios int not null primary key auto_increment,
	Nome_Banco varchar(30) not null,
	Num_Conta int not null,
	Agencia varchar(30) not null,
	Tipo_Conta varchar(30),
	CodFuncionario int,
	foreign key (CodFuncionario) references Funcionario(CodFuncionario)	
);

create table Historico_Movimentacao(
	Cod_His_Mov int not null primary key auto_increment,
	Assiduidade varchar(200),
	Alteracao_Salarial decimal(10,2),
	Alteracao_Departamento varchar(100),
	CodFuncionario int not null,
	foreign key (CodFuncionario) references Funcionario(CodFuncionario)	
);

create table Inf_Adicionais(
	CodInfoAdd int not null primary key auto_increment,
	Dt_Adm date not null,
	Dt_Dem date,
	Status varchar(100),
	CodFuncionario int not null,
	foreign key (CodFuncionario) references Funcionario(CodFuncionario)	
);

create table Ferias(
	CodFerias int not null primary key auto_increment,
	Data_Inicio date,
	Data_Fim date,
	Status varchar(100),
	CodFuncionario int not null,
	foreign key (CodFuncionario) references Funcionario(CodFuncionario)
);
