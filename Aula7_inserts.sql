--ambulatorio
INSERT INTO ambulatorio(andar, capacidade)
VALUES (1, 30);

INSERT INTO ambulatorio(andar, capacidade)
VALUES (1, 50);

INSERT INTO ambulatorio(andar, capacidade)
VALUES (2, 40);

INSERT INTO ambulatorio(andar, capacidade)
VALUES (2, 25);

INSERT INTO ambulatorio(andar, capacidade)
VALUES (2, 55);

SELECT * FROM ambulatorio;


--medico
INSERT INTO medico(nome, idade, especialidade, cpf,	cidade, nroa)
VALUES ('João', 40, 'ortoperdia', '10000100000', 'florianopolis', 1);

INSERT INTO medico(nome, idade, especialidade, cpf,	cidade, nroa)
VALUES ('Maria', 42, 'traumatologia', '10000100001', 'blumenau', 2);

INSERT INTO medico(nome, idade, especialidade, cpf,	cidade, nroa)
VALUES ('Pedro', 51, 'pediatria', '10000100002', 'sao jose', 3);

INSERT INTO medico(nome, idade, especialidade, cpf,	cidade, nroa)
VALUES ('Carlos', 28, 'ortopedia', '10000100003', 'joinville', 4);

INSERT INTO medico(nome, idade, especialidade, cpf,	cidade, nroa)
VALUES ('Marcia', 33, 'neurologia', '10000100004', 'biguacu', 5);

SELECT * FROM medico;


-- paciente
INSERT INTO paciente(nome, idade,	cidade,	cpf, doenca)
VALUES ('Ana', 20, 'florianopolis', '12345678910', 'gripe');

INSERT INTO paciente(nome, idade,	cidade,	cpf, doenca)
VALUES ('Paulo', 24, 'palhoca', '12345678911', 'fratura');

INSERT INTO paciente(nome, idade,	cidade,	cpf, doenca)
VALUES ('Lucia', 30, 'biguacu', '12345678912', 'tendinite');

INSERT INTO paciente(nome, idade,	cidade,	cpf, doenca)
VALUES ('Carlos', 28, 'joinville', '12345678913', 'sarampo');

SELECT * FROM paciente;

--funcionario
INSERT INTO funcionario (nome, idade, cidade, salario, cpf)
VALUES ('Rita', 32, 'Varginha', 1200, '12345678920');

INSERT INTO funcionario (nome, idade, cidade, salario, cpf)
VALUES ('Maria', 55, 'Lavras', 1220, '12345678921');

INSERT INTO funcionario (nome, idade, cidade, salario, cpf)
VALUES ('Caio', 45, 'Belo Horizonte', 1100, '12345678922');

INSERT INTO funcionario (nome, idade, cidade, salario, cpf)
VALUES ('Carlos', 44, 'Belo Horizonte', 1200, '12345678923');

INSERT INTO funcionario (nome, idade, cidade, salario, cpf)
VALUES ('Paula', 33, 'Belo Horizonte', 2500, '12345678924');

SELECT * FROM funcionario;


--consulta
-- Sem informar os atributos 
-- NOTE: DATE format: yyyy-mm-dd
INSERT INTO consulta
VALUES (1, 1, '2022-10-12', '1400');

INSERT INTO consulta
VALUES (1, 4, '2022-10-13', '1000');

INSERT INTO consulta
VALUES (2, 1, '2022-10-13', '0900');

INSERT INTO consulta
VALUES (2, 2, '2022-10-14', '1400');

INSERT INTO consulta
VALUES (2, 4, '2022-10-14', '1700');

INSERT INTO consulta
VALUES (3, 1, '2022-10-19', '1800');

INSERT INTO consulta
VALUES (3, 3, '2022-10-12', '1000');

INSERT INTO consulta
VALUES (3, 4, '2022-10-19', '1300');

INSERT INTO consulta
VALUES (4, 4, '2022-10-22', '1930');

SELECT * FROM consulta;