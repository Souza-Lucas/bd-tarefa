CREATE VIEW depto_projetos(gerente, descricao, projetos)
as SELECT departamento.cod_gerente, departamento.descricao, count(projeto.cod_depto)
FROM projeto p, departamento d WHERE p.cod_depto = d.codigo GROUP BY d.descricao, d.cod_gerente;

SELECT f.nome, descricao, projeto FROM depto_projetos d LEFT JOIN funcionario f ON f.codigo = d.gerente;
