insert into funcionario
(codigo, nome, sexo, dt_nasc, salario, cod_depto)
values (1, 'Mario', 'M', '1998-09-05', 2000.00, 1);

insert into departamento
(codigo, descricao, cod_gerente)
value (1, 'Dep Computação', null);

insert into projeto 
(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values (1, 'BD', 'Projeto de Banco de Dados', 1, 1, '2020-05-20', '2020-11-30');

insert into atividade
(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
values (1, 'APF - Atividade 1', 1, '2022-04-16', '2022-05-26')

insert into atividade_projeto
(cod_projeto, cod_atividade)
values (1, 1)
