CREATE TABLE Produtos(
	id_produto INT IDENTITY(1,1) NOT NULL,
	nome_produto VARCHAR(40) NOT NULL,
	valor_bem DECIMAL(10,2) NOT NULL,
	id_tipo_produto INT NOT NULL,
	CONSTRAINT PK_id_produto PRIMARY KEY (id_produto)
);

CREATE TABLE TipoProdutos (
	id_tipo_produto INT IDENTITY(1,1) NOT NULL,
	departamento VARCHAR(40) NOT NULL UNIQUE,
	CONSTRAINT PK_id_tipo_produto PRIMARY KEY (id_tipo_produto)
);
CREATE TABLE segurado (
id_segurado INTEGER IDENTITY(1,1) NOT NULL,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
CONSTRAINT PK_id_segurado PRIMARY KEY (id_segurado),
);

CREATE TABLE endereço (
id_endereco INTEGER IDENTITY(1,1) NOT NULL,
logradouro VARCHAR(40) NOT NULL,
numero INTEGER NOT NULL,
complemento VARCHAR(35),
bairro VARCHAR(35),
cidade VARCHAR(35),
uf CHAR(2),
cep VARCHAR(35),
CONSTRAINT PK_id_endereco PRIMARY KEY (id_endereco),
);

CREATE TABLE segurado_endereco (
id_segurado_endereco INTEGER IDENTITY(1,1) NOT NULL,
id_segurado INTEGER NOT NULL,
id_endereco INTEGER NOT NULL,
CONSTRAINT PK_id_segurado_endereco PRIMARY KEY (id_segurado_endereco),
);
CREATE TABLE Apolice (
	id_apolice INT NOT NULL IDENTITY(1, 1),
	valor_seguro DECIMAL(10,2) NOT NULL,
	inicio_vigencia DATE NOT NULL,
	fim_vigencia DATE NOT NULL,
	id_segurado INT NOT NULL,
	id_produto INT NOT NULL,

	CONSTRAINT PK_id_apolice PRIMARY KEY (id_apolice)
)

CREATE TABLE Sinistro (
	id_sinistro INT NOT NULL IDENTITY(1, 1),
	tipo_ocorrencia VARCHAR(20),
	data_ocorrencia DATE NOT NULL,
	valor_franquia DECIMAL(10,2) NOT NULL,
	id_apolice INT NOT NULL,

	CONSTRAINT PK_id_sinistro PRIMARY KEY (id_sinistro)
)
ALTER TABLE Apolice
	ADD CONSTRAINT FK_id_produto FOREIGN KEY (id_produto) REFERENCES Produtos;

ALTER TABLE Apolice
	ADD CONSTRAINT FK_id_segurado FOREIGN KEY (id_segurado) REFERENCES Segurado;

ALTER TABLE segurado_endereco
	ADD CONSTRAINT FK_id_segurado_endereco FOREIGN KEY (id_segurado) REFERENCES Segurado;

ALTER TABLE segurado_endereco
	ADD CONSTRAINT FK_id_endereco_segurado FOREIGN KEY (id_endereco) REFERENCES endereco;

ALTER TABLE Produtos
	ADD CONSTRAINT FK_id_tipo_produto FOREIGN KEY (id_tipo_produto) REFERENCES TipoProdutos;

ALTER TABLE Sinistro
	ADD CONSTRAINT FK_id_apolice FOREIGN KEY (id_apolice) REFERENCES Apolice;

CREATE FUNCTION CalculaValorSeguro(@id_produto INT)
RETURNS DECIMAL(10, 2)
BEGIN 
    RETURN (
        SELECT (valor_bem * 0.2) 
        FROM Produtos
        WHERE id_produto = @id_produto
        )
END;
CREATE FUNCTION FinalVigencia(@inicio_vigencia DATE)
RETURNS DATETIME
BEGIN
    RETURN (
        SELECT DATEADD(month, 12, @inicio_vigencia)
        )
END;
CREATE FUNCTION CalculaFranquia(@id_apolice INT)
RETURNS DECIMAL(10, 2)
BEGIN
    RETURN (
        SELECT (valor_seguro / 2.0)
        FROM Apolice
        WHERE @id_apolice = id_apolice
        )
END;