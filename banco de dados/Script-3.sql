create view vprodutos as select descricao,quant,vlrunitario,quant*vlrunitario as total from produto;

select * from vprodutos;

create view vcliente as select nome,cpf,endereco from cliente;

select * from vcliente;

create view vfornecedor as select codfornecedor,razaosocial,cpf from fornecedor;
select * from vfornecedor;

create view vfuncionario as select nome,cpf,telefone,endereco from funcionario;
select * from vfuncionario;

