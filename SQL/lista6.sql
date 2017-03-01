SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome,
       SUM(preco) AS total
FROM funcionario funcionario 
NATURAL INNER JOIN
  (SELECT codfuncionario,
          descproduto,
          preco
   FROM refeicao refeicao
   NATURAL INNER JOIN
     (SELECT codrefeicao,
             descproduto,
             preco
      FROM itensrefeicao
      NATURAL INNER JOIN comida) prato) pratoquecomeu
GROUP BY nome;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome,
       codrefeicao,
       SUM(preco) AS preco
FROM funcionario funcionario 
NATURAL INNER JOIN
  (SELECT codfuncionario,
          codrefeicao,
          descproduto,
          preco
   FROM refeicao refeicao
   NATURAL INNER JOIN
     (SELECT codrefeicao,
             descproduto,
             preco
      FROM itensrefeicao
      NATURAL INNER JOIN comida) prato) pratoquecomeu
GROUP BY nome,
         codrefeicao;

SELECT nomedepto
FROM departamento 
NATURAL INNER JOIN funcionario
GROUP BY nomedepto
HAVING COUNT(nomedepto) = 1;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome,
        dtrefeicao
FROM funcionario 
NATURAL INNER JOIN
  (SELECT *
   FROM refeicao
   WHERE dtrefeicao BETWEEN '2003-02-14'::DATE AND '2003-02-15'::DATE) refeicao;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome,
       descproduto
FROM funcionario funcionario 
NATURAL INNER JOIN
  (SELECT codfuncionario,
          descproduto
   FROM refeicao refeicao 
   NATURAL INNER JOIN
     (SELECT codrefeicao,
             descproduto
      FROM itensrefeicao 
      NATURAL INNER JOIN comida) prato) pratoquecomeu
GROUP BY nome,
        descproduto;