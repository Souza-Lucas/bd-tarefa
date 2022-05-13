SELECT nome, sexo, cod_depto FROM funcionario
WHERE codigo NOT IN(SELECT cod_gerente FROM departamento);
