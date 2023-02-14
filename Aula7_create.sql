-- Crie um BD com nome clinica
CREATE DATABASE clinica;

/*
- **ambulatorio** 
*/
CREATE TABLE ambulatorio(
	nroa INTEGER NOT NULL IDENTITY(1,1),
	andar NUMERIC(3) NOT NULL,
	capacidade SMALLINT,
	CONSTRAINT PK_nroa PRIMARY KEY (nroa)
);

/*
- **medico**
*/
CREATE TABLE medico(
	cod_med INTEGER NOT NULL IDENTITY(1,1),
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	especialidade CHAR(20),
	cpf VARCHAR(11) UNIQUE,
	cidade VARCHAR(30),
	nroa INT,
	CONSTRAINT PK_cod_med PRIMARY KEY (cod_med),
	CONSTRAINT FK_nroa FOREIGN KEY (nroa)
    REFERENCES ambulatorio(nroa)-- se usar foreign key tem que ter a coluna nas 2 tabelas!
);

/*
- **paciente**
*/
CREATE TABLE paciente(
	cod_pac INTEGER NOT NULL IDENTITY(1,1),
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	cidade CHAR(30),
	cpf VARCHAR(11) UNIQUE,
	doenca VARCHAR(40) NOT NULL,
	CONSTRAINT PK_cod_pac PRIMARY KEY (cod_pac)
);

/*
- **funcionarios**
*/
CREATE TABLE funcionario(
	cod_fun INTEGER NOT NULL IDENTITY(1,1),
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT,
	cpf VARCHAR(11) UNIQUE,
	cidade VARCHAR(30),
	salario NUMERIC(10),
	cargo VARCHAR(20),
	CONSTRAINT PK_cod_fun PRIMARY KEY (cod_fun)
);

/*
- **consulta**
*/
CREATE TABLE consulta(
  	cod_con INTEGER NOT NULL IDENTITY(1,1),
	cod_med     INTEGER,
	cod_pac     INTEGER,
	data      DATE NOT NULL,
	hora      TIME NOT NULL,
	CONSTRAINT PK_cod_con PRIMARY KEY (cod_con),
	CONSTRAINT FK_cod_med FOREIGN KEY (cod_med)
    REFERENCES medico(cod_med),
	CONSTRAINT FK_cod_pac FOREIGN KEY (cod_pac)
    REFERENCES paciente(cod_pac)
);