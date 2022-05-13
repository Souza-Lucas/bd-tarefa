SELECT f.nome, f.salario, d.descricao FROM funcionario f, departamento D
WHERE f.cod_depto = d.codigo;
