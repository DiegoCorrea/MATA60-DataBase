SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome, nomedepto AS departamento 
FROM funcionario f LEFT JOIN departamento d ON f.coddepto = d.coddepto  ORDER BY nomedepto ASC;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome,descproduto FROM funcionario funcionario 
  NATURAL INNER JOIN (SELECT codfuncionario,descproduto FROM refeicao refeicao 
    NATURAL INNER JOIN (SELECT codrefeicao,descproduto FROM itensrefeicao 
      NATURAL INNER JOIN comida) prato) pratoquecomeu;

SELECT nomedepto,nomefuncionario FROM departamento depto 
LEFT OUTER JOIN funcionario func ON depto.coddepto = func.coddepto;

SELECT nomefuncionario,dtrefeicao FROM funcionario func 
LEFT OUTER JOIN refeicao ref ON func.codfuncionario = ref.codfuncionario 
ORDER BY nomefuncionario ASC;

SELECT nomefornecedor,descproduto
FROM comida com LEFT OUTER JOIN fornecedor forne
ON com.codfornecedor = forne.codfornecedor;

SELECT func.nomefuncionario,gere.nomefuncionario 
FROM funcionario func JOIN funcionario gere 
ON func.codgerente = gere.codfuncionario;

SELECT descproduto,quantidade 
FROM refeicao ref NATURAL INNER JOIN 
  (SELECT codrefeicao,codproduto,descproduto,quantidade 
    FROM comida NATURAL INNER JOIN itensrefeicao) prato;