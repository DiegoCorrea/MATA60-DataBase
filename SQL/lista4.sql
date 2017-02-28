SELECT * FROM refeicao 
WHERE codfuncionario = (SELECT codfuncionario FROM funcionario 
  WHERE nomefuncionario = 'Daniela');

SELECT descproduto FROM comida 
WHERE codfornecedor = (SELECT codfornecedor FROM fornecedor 
  WHERE nomefornecedor = 'Empresa A') ORDER BY descproduto ASC;

SELECT codproduto FROM comida NATURAL INNER JOIN itensrefeicao 
GROUP BY codproduto HAVING COUNT(codproduto) > 1;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome 
FROM funcionario NATURAL INNER JOIN refeicao 
GROUP BY codfuncionario HAVING COUNT(codfuncionario) > 1;

SELECT * FROM funcionario NATURAL INNER JOIN refeicao 
WHERE LOWER(nomefuncionario) = LOWER('DANIELA');

SELECT func.codfuncionario AS matricula, CONCAT(func.nomefuncionario,' ', func.sobrenmfunc) AS nome, 
gere.codfuncionario AS matriculaGerente, CONCAT(gere.nomefuncionario,' ', gere.sobrenmfunc) AS nome_gerente 
FROM funcionario func INNER JOIN funcionario gere ON func.codgerente = gere.codfuncionario;