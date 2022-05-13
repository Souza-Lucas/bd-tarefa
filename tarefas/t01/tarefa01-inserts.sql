# Adicionando Funcionario
insert into funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
values ('Maria', 'F', '1981-07-01', 2500.00, 1);

insert into funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
values ('Josefa', 'F', '1986-09-17', 2500.00, 1);

insert into funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
values ('Carlos', 'M', '1985-11-21', 2500.00, 1);

insert into funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
values ('Humberto', 'M', '1970-05-07', 1500.00, 2);

insert into funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
values ('José', 'M', '1979-07-12', 3500.00, 2);

# Adicionando Departamento
insert into departamento
(descricao, cod_gerente)
values ('Dep História', null);

insert into departamento
(descricao, cod_gerente)
values ('Dep Computação', null);

insert into departamento
(descricao, cod_gerente)
values ('Dep Geografia', null);

insert into departamento
(descricao, cod_gerente)
values ('Dep Matemática', null);

insert into departamento
(descricao, cod_gerente)
values ('Dep Inglês', null);

# Adicionando Projeto
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Analisador de Ponto de Função', 2, 2, '2018-02-26', '2019-06-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('Monitoria', 'Projeto de Monitoria 2019.1', 1, 6, '2019-02-26', '2019-12-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('ES', 'Projeto de Engenharia de Software', 1, 1, '2018-02-26', '2018-06-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('PW', 'Projeto de Progamação Web', 1, 1, '2019-02-21', '2019-06-25');

# Adicionando Atividade
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 1', 1, '2018-02-26', '2018-06-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 2', 1, '2018-06-26', '2018-07-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 3', 1, '2018-08-26', '2018-09-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 4', 1, '2018-08-26', '2018-09-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 5', 1, '2018-09-30', '2018-10-30');

# Adicionando Atividade Projeto
insert into atividade_projeto(cod_projeto, cod_atividade)
values (1, 1);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (2, 2);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (3, 3);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (4, 4);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (5, 5);
