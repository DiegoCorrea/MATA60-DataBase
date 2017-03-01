SELECT * FROM Funcionario ORDER BY nomefuncionario DESC;

SELECT codgerente FROM Funcionario GROUP BY codgerente;

SELECT DISTINCT dtadmissao,codgerente FROM Funcionario;

SELECT CONCAT(nomefuncionario,' ',sobrenmfunc) AS nome FROM Funcionario
WHERE CodGerente IS NULL OR codGerente=(SELECT codFuncionario FROM Funcionario 
WHERE nomefuncionario='Daniela');

SELECT * FROM funcionario 
WHERE EXTRACT(month FROM dtadmissao) = EXTRACT(month FROM '2000-06-01'::DATE) OR 
EXTRACT(month FROM dtadmissao) = EXTRACT(month FROM '2000-03-01'::DATE);

SELECT sobrenmfunc AS sobrenome, coddepto AS codigoDepartamento FROM funcionario 
WHERE codfuncionario != 1 ORDER BY sobrenome DESC;

SELECT nomefuncionario AS nome, sobrenmfunc AS sobrenome FROM funcionario 
WHERE codDepto <> '001' AND codDepto <> '002' AND codgerente IS NOT NULL 
AND LOWER(sobrenmfunc) NOT SIMILAR TO '[d-m]%';

SELECT * FROM funcionario 
WHERE (codfuncionario = 1 OR codfuncionario = 2 OR codfuncionario = 3) 
AND coddepto = (SELECT coddepto FROM departamento WHERE LOWER(nomedepto) = LOWER('Marketing'));