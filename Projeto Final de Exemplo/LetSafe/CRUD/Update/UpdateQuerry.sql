ALTER TABLE Segurado
ADD Ativo BIT DEFAULT 1  NOT NULL;

UPDATE segurado
	SET Ativo = 0
	where  id_segurado in (SELECT id_segurado FROM segurado 
WHERE id_segurado NOT IN (SELECT id_segurado FROM apolice))

UPDATE  endereco  
SET numero = RAND()*(1000-1)+1
where numero <= 0 or numero > 1000;

CREATE TRIGGER UpdateAtivo 
ON Segurado
AFTER INSERT
AS
BEGIN 
    DECLARE 
    @id_segurado INT

    SELECT @id_segurado = id_segurado FROM Apolice

    UPDATE Segurado 
    SET Ativo = 1
    WHERE @id_segurado = id_segurado
END
GO
