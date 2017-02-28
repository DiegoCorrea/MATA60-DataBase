createdb almoco;

drop table Departamento;
drop table Funcionario;
drop table  ItensRefeicao;
drop table  Refeicao;
drop table  Fornecedor;
drop table  Comida;

create table Departamento
(codDepto varchar(6) primary key, 
 nomeDepto varchar(30) not null);

create table Fornecedor
(codFornecedor varchar(10) primary key, 
 nomeFornecedor varchar(80) not null);

create table Funcionario
(codFuncionario int primary key, 
 nomeFuncionario varchar(40) not null,
 sobrenmFunc varchar(40),
 dtAdmissao date,
 telefone varchar(12),
 codDepto varchar(6),
 codGerente int
);

create table Refeicao
(codRefeicao varchar(10) primary key, 
 codFuncionario int,
 dtRefeicao date,
 dtEntrada date
);

create table Comida
(codFornecedor varchar(10) not null,
 codProduto varchar(10) not null,
 descProduto varchar(40) not null,
 preco decimal(7,2),
 aumento decimal(7,2),
primary key(codProduto,codFornecedor)
);

create table ItensRefeicao
(codRefeicao varchar(10) not null, 
 numeroItem int not null,
 codFornecedor varchar(10),
 codProduto varchar(10),
 quantidade int,
 primary key (codRefeicao,numeroItem)
);

alter table Funcionario
add foreign key (codDepto)
references Departamento(codDepto);

alter table Funcionario
add foreign key (codGerente)
references Funcionario(codFuncionario);

alter table Refeicao
add foreign key (codFuncionario)
references Funcionario(codFuncionario);

alter table Comida
add foreign key (codFornecedor)
references Fornecedor(codFornecedor);

alter table ItensRefeicao
add foreign key (CodFornecedor,codProduto)
references Comida(CodFornecedor,CodProduto);
