SELECT * FROM Funcionario;

SELECT nomefuncionario AS nome,
      sobrenmfunc AS sobrenome 
FROM Funcionario;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome 
FROM Funcionario;

SELECT descproduto,
      preco 
FROM Comida 
WHERE preco > 6.00;

SELECT nomefuncionario AS nome, 
      'Funcionario Competente' AS qualificacao 
FROM Funcionario;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome
FROM Funcionario
WHERE CodGerente = 1
  OR codGerente =
    (SELECT codFuncionario
     FROM Funcionario
     WHERE nomefuncionario='Daniela');

SELECT * 
FROM Funcionario 
WHERE  03 = EXTRACT(MONTH FROM dtadmissao) AND (EXTRACT(DAY FROM dtadmissao) >= 15 AND EXTRACT(DAY FROM dtadmissao) <= 16);

SELECT descproduto,
       (preco-(preco*0.10)) AS novoValor,
       (preco*0.10) AS desconto
FROM comida
WHERE preco*0.10 < 2.00;

SELECT nomefuncionario AS nome
FROM Funcionario 
WHERE codGerente IS NULL;