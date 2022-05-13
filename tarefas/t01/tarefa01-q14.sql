CREATE VIEW atv_funcionarios(nome_funcionario, quantidade_atvs) AS SELECT funcionario.nome, count(atividade.cod_responsavel) 
FROM funcionario, atividade
WHERE atividade.cod_responsavel = funcionario.codigo GROUP BY funcionario.nome;

SELECT nome_funcionario, quantidade_atvs FROM atv_funcionarios
