INSERT INTO Departamento VALUES ('001','Marketing');
INSERT INTO Departamento VALUES ('002','Comercial');
INSERT INTO Departamento VALUES ('003','Pessoal');
INSERT INTO Departamento VALUES ('004','Desenvolvimento');

INSERT INTO Funcionario VALUES (1,'Daniela','Claro','2000-04-01','222-2222', '001', null);
INSERT INTO Funcionario VALUES (2,'Pedro','Santos','2001-05-02','233-3333', '003', 1);
INSERT INTO Funcionario VALUES (3,'João','Silva','2002-06-05','333-3333', '004', null);
INSERT INTO Funcionario VALUES (4,'Miguel','Jardim','2000_08-01','444-4444', '004', 3);

INSERT INTO Fornecedor VALUES ('AAA', 'Empresa A');
INSERT INTO Fornecedor VALUES ('BBB', 'Empresa B');
INSERT INTO Fornecedor VALUES ('CCC', 'Empresa C');

INSERT INTO Comida VALUES ('AAA', 'SL', 'Salada', 2, 0.25);
INSERT INTO Comida VALUES ('AAA', 'SD', 'Sopa do Dia', 1.5, null);
INSERT INTO Comida VALUES ('BBB', 'CG', 'Carne grelhada', 6, 0.7);
INSERT INTO Comida VALUES ('BBB', 'BF', 'Batata Frita', 3, null);
INSERT INTO Comida VALUES ('CCC', 'BF', 'Bife', 7, 1.5);

INSERT INTO Refeicao VALUES ('01', '001', '2003-02-14', '2002-03-01');
INSERT INTO Refeicao VALUES ('02', '002', '2003-02-14', '2002-03-01');
INSERT INTO Refeicao VALUES ('03', '003', '2003-02-14', '2002-03-02');
INSERT INTO Refeicao VALUES ('04', '001', '2003-02-15', '2002-03-02');
INSERT INTO Refeicao VALUES ('05', '002', '2003-02-16', '2002-03-03');

INSERT INTO ItensRefeicao VALUES ('01', 1, 'BBB','BF',2);
INSERT INTO ItensRefeicao VALUES ('01', 2, 'CCC','BF',1);
INSERT INTO ItensRefeicao VALUES ('02', 1, 'AAA','SL',1);
INSERT INTO ItensRefeicao VALUES ('02', 2, 'BBB','CG',1);
INSERT INTO ItensRefeicao VALUES ('03', 1, 'AAA','SL',1);
INSERT INTO ItensRefeicao VALUES ('04', 1, 'BBB','BF',1);
INSERT INTO ItensRefeicao VALUES ('04', 2, 'BBB','CG',1);