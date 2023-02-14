---STORED PROCEDURE
CREATE PROCEDURE cadastroCPF_SELECT
-- PARÂMETRO DE ENTRADA, NESTE EXEMPLO O NÚMERO DO CPF
@CPF numeric
AS
--COMANDO T-SQL PARA OBTER RESULTADO
SELECT * FROM medico
       WHERE cpf = @CPF
GO

EXECUTE cadastroCPF_SELECT 10000100000;

CREATE PROCEDURE Salario_funcionario
           (@CARGO VARCHAR(40),
            @SOMA money OUTPUT) AS
BEGIN
SELECT @SOMA=sum(SALARIO) FROM funcionario
WHERE cargo = @CARGO
END

DECLARE @SALARIO Money
EXECUTE Salario_funcionario 'Enfermagem', @SALARIO OUTPUT
PRINT @SALARIO

---FUNÇÕES
--CONDICIONAL
CREATE FUNCTION numero_par(@i int)
RETURNS BIT AS
BEGIN
	DECLARE @temp int, @retono BIT
	SET @temp = @i % 2
	IF @temp = 0 
		SET @retono = 1
	ELSE 
		SET @retono = 0
	RETURN @retono
END

SELECT dbo.numero_par(4);

CREATE FUNCTION dbo.Factorial (@iNumber int)
RETURNS INT
AS
BEGIN
DECLARE @i  int
    IF @iNumber <= 1
        SET @i = 1
    ELSE
        SET @i = @iNumber * dbo.Factorial( @iNumber - 1 )
RETURN (@i)
END

SELECT dbo.Factorial(3)

---TRIGGER
CREATE TABLE paciente_logs
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ChangeDate DATETIME DEFAULT GETDATE() NOT NULL,
	Command NCHAR(6) NOT NULL,
	OldCell VARCHAR(40) NULL,
	NewCell VARCHAR(40) NULL,
	OldPaidPerCell VARCHAR(40) NULL,
	NewPaidPerCell VARCHAR(40) NULL,
	UserName NCHAR(100) NOT NULL
)
GO
 
CREATE TRIGGER logs_change
ON paciente
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DECLARE @operation CHAR(6)
		SET @operation = CASE
				WHEN EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted)
					THEN 'Update'
				WHEN EXISTS(SELECT * FROM inserted)
					THEN 'Insert'
				WHEN EXISTS(SELECT * FROM deleted)
					THEN 'Delete'
				ELSE NULL
		END
	IF @operation = 'Delete'
			INSERT INTO paciente_logs (Command, ChangeDate, OldCell, OldPaidPerCell, UserName)
			SELECT @operation, GETDATE(),  d.nome, d.cpf, USER_Name()
			FROM deleted d
 
	IF @operation = 'Insert'
			INSERT INTO paciente_logs (Command, ChangeDate, NewCell,  NewPaidPerCell, UserName)
			SELECT @operation, GETDATE(), i.nome, i.cpf,  USER_Name()
			FROM inserted i
 
	IF @operation = 'Update'
			INSERT INTO paciente_logs (Command, ChangeDate, NewCell, OldCell, NewPaidPerCell,OldPaidPerCell, UserName)
			SELECT @operation, GETDATE(), d.nome, i.nome, d.cpf, i.cpf, USER_Name()
			FROM deleted d, inserted i
END
GO

---VIEWS
CREATE VIEW medico_ativos AS 
SELECT *
FROM medico 
WHERE medico.nroa IS NOT NULL

SELECT * FROM medico_ativos

CREATE VIEW ocupacao_ambulatorios AS
SELECT ambulatorio.capacidade, ambulatorio.andar
FROM ambulatorio

SELECT * FROM ocupacao_ambulatorios

--INDEX
CREATE INDEX index1 ON medico (cod_med);
CREATE CLUSTERED INDEX index1 ON database1.schema1.table1 (column1);
