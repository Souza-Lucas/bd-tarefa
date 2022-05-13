CREATE TABLE funcionario(
codigo int AUTO_INCREMENT,
	nome varchar(50),
	sexo char(1),
	dtNasc date,
	salario decimal(10,2),
	codDepto int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codSupervisor) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE departamento(
  	codigo int AUTO_INCREMENT,
	descricao varchar(50),
	codGerente int,
	PRIMARY KEY (codigo),
	UNIQUE KEY depSigla (sigla),
	FOREIGN KEY (codGerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);


CREATE TABLE projeto(
  	codigo int AUTO_INCREMENT,
	nome varchar(50),
	descricao varchar(250),
	codResponsavel int,
	codDepto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	UNIQUE KEY projNome (nome),
	FOREIGN KEY (codResponsavel) REFERENCES funcionario(codigo) on delete set null on update cascade,
	FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade
);

CREATE TABLE atividade(
  	codigo int AUTO_INCREMENT,
  	nome varchar(50),
	descricao varchar(250),
	codProjeto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codProjeto) REFERENCES projeto(codigo) on delete set null on update cascade

);

CREATE TABLE atividade_projeto(
	cod_projeto int,
	cod_atividade int
);
