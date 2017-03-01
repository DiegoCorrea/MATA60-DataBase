SELECT EXTRACT(YEAR
               FROM CURRENT_DATE) - EXTRACT(YEAR
                                            FROM dtadmissao) AS anos_de_trabalho
FROM funcionario
WHERE LOWER(nomefuncionario) = LOWER('Daniela');

SELECT CONCAT(UPPER(sobrenmfunc),' ',INITCAP(nomefuncionario)) AS nome
FROM funcionario;

SELECT SUBSTRING(nomefuncionario
                 FROM 2
                 FOR CHAR_LENGTH(nomefuncionario)-2) AS nome
FROM funcionario;

SELECT nomefuncionario AS nome,
       CASE
           WHEN LOWER(nomedepto)=LOWER('Marketing') THEN 'MKT'
           ELSE nomedepto
       END
FROM funcionario 
NATURAL INNER JOIN departamento;

SELECT descproduto,
       preco,
       CASE
           WHEN preco > 5 THEN 'MUITO CARO'
           WHEN preco <= 5 THEN 'PRECO NORMAL'
       END AS avaliacao
FROM comida;