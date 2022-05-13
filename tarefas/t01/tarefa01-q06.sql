SELECT funcionario.nome, funcionario.salario, departamento.descricao FROM funcionario, departamento 
WHERE funcionario.cod_depto = departamento.codigo;
