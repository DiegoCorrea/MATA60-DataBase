insert into Departamento values ('001','Marketing');
insert into Departamento values ('002','Comercial');
insert into Departamento values ('003','Pessoal');
insert into Departamento values ('004','Desenvolvimento');

insert into Funcionario values (1,'Daniela','Claro','2000-04-01','222-2222', '001', null);
insert into Funcionario values (2,'Pedro','Santos','2001-05-02','233-3333', '003', 1);
insert into Funcionario values (3,'João','Silva','2002-06-05','333-3333', '004', null);
insert into Funcionario values (4,'Miguel','Jardim','2000_08-01','444-4444', '004', 3);

insert into Fornecedor values ('AAA', 'Empresa A');
insert into Fornecedor values ('BBB', 'Empresa B');
insert into Fornecedor values ('CCC', 'Empresa C');

insert into Comida values ('AAA', 'SL', 'Salada', 2, 0.25);
insert into Comida values ('AAA', 'SD', 'Sopa do Dia', 1.5, null);
insert into Comida values ('BBB', 'CG', 'Carne grelhada', 6, 0.7);
insert into Comida values ('BBB', 'BF', 'Batata Frita', 3, null);
insert into Comida values ('CCC', 'BF', 'Bife', 7, 1.5);

insert into Refeicao values ('01', '001', '2003-02-14', '2002-03-01');
insert into Refeicao values ('02', '002', '2003-02-14', '2002-03-01');
insert into Refeicao values ('03', '003', '2003-02-14', '2002-03-02');
insert into Refeicao values ('04', '001', '2003-02-15', '2002-03-02');
insert into Refeicao values ('05', '002', '2003-02-16', '2002-03-03');

insert into ItensRefeicao values ('01', 1, 'BBB','BF',2);
insert into ItensRefeicao values ('01', 2, 'CCC','BF',1);
insert into ItensRefeicao values ('02', 1, 'AAA','SL',1);
insert into ItensRefeicao values ('02', 2, 'BBB','CG',1);
insert into ItensRefeicao values ('03', 1, 'AAA','SL',1);
insert into ItensRefeicao values ('04', 1, 'BBB','BF',1);
insert into ItensRefeicao values ('04', 2, 'BBB','CG',1);