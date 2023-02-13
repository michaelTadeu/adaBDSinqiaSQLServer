CREATE TABLE usuario (
    id INT NOT NULL IDENTITY(1,1),
    primeiro_nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_cadastro DATE NOT NULL,
PRIMARY KEY (id));