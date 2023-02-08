CREATE DATABASE bd_papelaria;

USE bd_papelaria;

CREATE TABLE tb_produto (
id_produto INT IDENTITY,
status CHAR(1) NOT NULL DEFAULT 'A',
descricao VARCHAR(50),
estoque_minimo INTEGER,
estoque_maximo INTEGER,
CONSTRAINT pk_produto PRIMARY KEY (id_produto));

CREATE TABLE tb_entrada_produto (
id_entrada_produto INT IDENTITY,
qtde INTEGER,
valor_unitario DECIMAL(9,2),
data_entrada DATE,
CONSTRAINT pk_entrada_produto PRIMARY KEY (id_entrada_produto));

CREATE TABLE tb_estoque (
id_estoque INT IDENTITY,
qtde INTEGER,
valor_unitario DECIMAL(9,2),
CONSTRAINT pk_estoque PRIMARY KEY (id_estoque));

/*Estrutura da tabela tb_saida_produto*/
CREATE TABLE tb_saida_produto (
id_saida_produto INT IDENTITY,
qtde INT,
data_saida DATE,
valor_unitario DECIMAL(9,2),
CONSTRAINT pk_saida_produto PRIMARY KEY (id_saida_produto));