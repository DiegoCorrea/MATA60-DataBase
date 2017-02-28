SELECT * FROM Funcionario;

SELECT nomefuncionario,sobrenmfunc FROM Funcionario;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome FROM Funcionario;

SELECT descproduto,preco FROM Comida WHERE preco>=6.00;

SELECT nomefuncionario, 'Funcionario Competente' AS Qualificacao FROM Funcionario;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome FROM Funcionario
WHERE CodGerente=1 OR codGerente=(SELECT codFuncionario FROM Funcionario WHERE nomefuncionario='Daniela');

SELECT * FROM Funcionario WHERE dtadmissao BETWEEN '2000-02-15' AND '2002-02-16';

SELECT descproduto, (preco-(preco*0.10)) AS novoValor, (preco*0.10) AS desconto FROM comida WHERE preco*0.10 <2.00;

SELECT nomefuncionario FROM Funcionario WHERE codGerente is null;