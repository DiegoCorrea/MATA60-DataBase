SELECT * FROM funcionario WHERE codgerente = 202 OR codgerente = 203;

SELECT nomefuncionario AS nome FROM funcionario WHERE position('n' in LOWER(nomefuncionario)) > 0;

SELECT nomefuncionario AS nome, dtadmissao FROM funcionario WHERE sobrenmfunc = 'Silva' OR sobrenmfunc = 'Santos';

SELECT nomefuncionario FROM funcionario WHERE SUBSTRING(telefone from length(telefone)-1 for 1) = '4';

SELECT * FROM funcionario WHERE codgerente IS NOT NULL 
AND coddepto != (SELECT coddepto FROM departamento WHERE LOWER(nomedepto) = LOWER('Marketing')) 
AND coddepto != (SELECT coddepto FROM departamento WHERE LOWER(nomedepto) = LOWER('Desenvolvimento')) 
AND LOWER(sobrenmfunc) NOT SIMILAR TO '[d-j]%' AND SUBSTRING(sobrenmfunc from length(sobrenmfunc)-1 for 1) = LOWER('S');