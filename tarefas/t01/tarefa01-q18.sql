SELECT funcionario.nome , departamento.descricao FROM funcionario, departamento
WHERE funcionario.salario IN(SELECT MAX(funcionario.salario)
				  FROM funcionario LEFT JOIN departamento
				  ON funcionario.cod_depto = departamento.codigo GROUP BY departamento.codigo
) AND funcionario.cod_depto = departamento.codigo
GROUP BY funcionario.salario, funcionario.nome, departamento.descricao
ORDER BY funcionario.salario;
