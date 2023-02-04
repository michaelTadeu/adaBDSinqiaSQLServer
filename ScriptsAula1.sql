CREATE DATABASE ada_sinqia_food;

USE ada_sinqia_food;

--CLIENTE (cod_cli, nome_cli, endereco, cidade, cep, uf);
CREATE TABLE cliente (
	cod_cli INT NOT NULL IDENTITY(1,1),
	nome_cli VARCHAR(100) NOT NULL, 
	endereco VARCHAR(100) NULL, 
	cidade VARCHAR(40) NULL, 
	cep VARCHAR(10) NULL, 
	uf CHAR(2) NULL,
	CONSTRAINT PK_cod_cli PRIMARY KEY (cod_cli)
);

CREATE TABLE cliente2 (
	cod_cli INT NOT NULL IDENTITY(1,1),
	nome_cli VARCHAR(100) NOT NULL, 
	endereco VARCHAR(100) NULL, 
	cidade VARCHAR(40) NULL, 
	cep VARCHAR(10) NULL, 
	uf CHAR(2) NULL,
	PRIMARY KEY (cod_cli)
);


--'Michael', 'Rua teste, n°13', 'Varginha', '12.236-555', 'MG' 
--'Ariane', 'Av teste, n°1312', 'Belo Horizonte', '12.236-000', 'MG'

--1
--12345678947
--Michael

--1
--12345678947
--Ariane

--VENDEDOR (cod_vend, nome_vend, sal_fixo, faixa_comiss);
CREATE TABLE vendedor (
	cod_vend INT NOT NULL IDENTITY(1,1), 
	nome_vend VARCHAR(100) NULL, 
	sal_fixo NUMERIC NULL, 
	faixa_comiss INT NULL,
	CONSTRAINT PK_cod_vend PRIMARY KEY (cod_vend)
);

--1, Vinicius, 10.000.00, 25 
--2, Caio, 5.000.00, 45 
-- 3...

--PRODUTO (cod_prod, unid_prod, desc_prod, val_unit);
CREATE TABLE produto (
	cod_prod INT NOT NULL IDENTITY(1,1), 
	unid_prod INT NOT NULL, 
	desc_prod VARCHAR(100) NOT NULL, 
	val_unit NUMERIC(5,2),
	CONSTRAINT PK_cod_prod PRIMARY KEY (cod_prod)
);

--PEDIDO ( cod_ped, prazo_entr, cod_cli, cod_vend);
CREATE TABLE pedido (
	cod_ped INT NOT NULL IDENTITY(1,1), 
	prazo_entr INT NOT NULL, 
	codigo_cliente INT NOT NULL, 
	codigo_vendedor INT NOT NULL,
	CONSTRAINT PK_cod_ped PRIMARY KEY (cod_ped),
	CONSTRAINT FK_cod_cli FOREIGN KEY (codigo_cliente)
		REFERENCES cliente (cod_cli),
	CONSTRAINT FK_cod_vend FOREIGN KEY (codigo_vendedor)
		REFERENCES vendedor (cod_vend)
);
--1, 25, 1, 1
--2, 36, 2, 1

--ITEM_PEDIDO (cod_item_ped, qtd_ped, cod_ped, cod_prod);
CREATE TABLE item_pedido (
	cod_item_ped INT NOT NULL IDENTITY(1,1),
	cod_pedido INT NOT NULL, 
	cod_prod INT NOT NULL,
	qtd_ped INT NOT NULL, 
	CONSTRAINT PK_cod_item_ped PRIMARY KEY (cod_item_ped),
	CONSTRAINT FK_cod_ped FOREIGN KEY (cod_pedido)
		REFERENCES pedido (cod_ped),
	CONSTRAINT FK_cod_prod FOREIGN KEY (cod_prod)
		REFERENCES produto (cod_prod)
);
