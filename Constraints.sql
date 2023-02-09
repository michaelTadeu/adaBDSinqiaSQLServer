INSERT INTO pessoa VALUES ('MICHAEL', 38012547788, 33);
INSERT INTO pessoa VALUES ('MICHAEL', 38012547780, 16);

ALTER TABLE ambulatorio ALTER COLUMN 
capacidade NUMERIC NULL;

ALTER TABLE ambulatorio ADD 
teste NUMERIC NULL;

ALTER TABLE ambulatorio ADD 
teste2 NUMERIC NOT NULL;

ALTER TABLE ambulatorio ADD 
capacidade INT DEFAULT 0 NOT NULL;

UPDATE ambulatorio SET capacidade = 23
WHERE id_ambulatorio = 2;

UPDATE ambulatorio SET teste = 0

SELECT * FROM ambulatorio;

INSERT INTO ambulatorio VALUES (
	'UTI-TESTE', 
	0, 
	20,
	2, 
	NULL);
ALTER TABLE ambulatorio DROP COLUMN capacidade;

ALTER TABLE ambulatorio
ADD CONSTRAINT andar_nao_negativo 
	CHECK (andar >= 0 AND capacidade > 1)

SELECT * FROM pessoa;