-- Tabela Endereço das pessoas
CREATE VIEW vw_Endereco_segurados 
AS
SELECT 
	A.nome,
	Ende.logradouro,
	Ende.numero,
	Ende.complemento,
	Ende.bairro,
	Ende.cidade,
	Ende.cep
	FROM endereco as Ende
	INNER JOIN (SELECT Seg.id_segurado, Seg.nome, SegEnd.id_endereco FROM Segurado as Seg
		INNER JOIN segurado_endereco as SegEnd
		ON Seg.id_segurado = SegEnd.id_segurado) as A
	ON Ende.id_endereco = A.id_endereco
GO

-- Quantidade de logradouros por pessoa
CREATE VIEW vw_Logradouros_por_pessoa
AS
	SELECT 
	A.nome,
	COUNT(a.nome) as qntEndereco
	FROM endereco as Ende
	INNER JOIN (SELECT Seg.id_segurado, Seg.nome, SegEnd.id_endereco FROM Segurado as Seg
		INNER JOIN segurado_endereco as SegEnd
		ON Seg.id_segurado = SegEnd.id_segurado) as A
	ON Ende.id_endereco = A.id_endereco
	GROUP BY(nome)
GO

-- Quantidade de sinistros por segurado
CREATE VIEW vw_Sinistro_por_segurado
AS
SELECT Seg.nome, Count(Seg.nome) as QntSinistros  FROM segurado as Seg
	INNER JOIN(SELECT Apo.id_segurado, Sini.id_sinistro FROM Sinistro as Sini
					INNER JOIN Apolice as Apo
						ON Sini.id_apolice = Apo.id_apolice) as A
			ON A.id_segurado = Seg.id_segurado
		GROUP BY (Seg.nome)
GO

-- Quantidade de Sinitros por estado
CREATE VIEW vw_Sinistro_por_estado
AS
SELECT ApoliceUF.uf as Estado, COUNT(ApoliceUF.uf) as QuantidadeSinistros FROM Sinistro as Sini
	INNER JOIN(
	SELECT Apo.id_apolice, SeguradoUF.uf FROM Apolice as Apo
		INNER JOIN(
		SELECT A.id_segurado,
				Ende.uf
		FROM endereco as Ende
			INNER JOIN (SELECT Seg.id_segurado, Seg.nome, SegEnd.id_endereco 
						FROM Segurado as Seg
							INNER JOIN segurado_endereco as SegEnd
							ON Seg.id_segurado = SegEnd.id_segurado) as A
			ON Ende.id_endereco = A.id_endereco
		) AS SeguradoUF
		ON SeguradoUF.id_segurado = Apo.id_segurado
		) AS ApoliceUF
	ON ApoliceUF.id_apolice = Sini.id_apolice
	GROUP BY (ApoliceUF.uf)
GO

--View cidaes com maior arrecadação com quantidade de pessoas
CREATE VIEW vw_cidades_maior_arrecadacao
AS
SELECT cidade, count(cidade) as Quantidade, SUM(valor_sEguro) AS ValorTotal  
FROM apolice  A
INNER JOIN segurado_endereco AS SE ON A.id_segurado = SE.id_segurado
INNER JOIN endereco AS E ON SE.id_endereco = E.id_endereco
GROUP BY cidade;

-- View seguros mais procurados
CREATE VIEW vw_seguros_mais_procurados 
AS
SELECT P.nome_produto, count(nome_produto) as Quantidade, SUM(valor_seguro) AS ValorTotal 
FROM apolice as A
INNER JOIN produtos as P ON A.id_produto = P.id_produto
GROUP BY P.nome_produto; 

--View departamento com maior arrecadação
CREATE VIEW vw_departamento_arrecadacao 
AS
SELECT TP.departamento, count(departamento) as Quantidade, SUM(valor_seguro) AS ValorTotal 
FROM apolice as A
INNER JOIN produtos as P ON A.id_produto = P.id_produto
INNER JOIN tipoprodutos as TP ON P.id_tipo_produto = TP.id_tipo_produto
GROUP BY TP.departamento;


--View segurados que não finalizaram a contratação ou que foram rejeitados
CREATE VIEW vw_segurados_nao_finalizados
AS
SELECT * FROM segurado 
WHERE id_segurado NOT IN (SELECT id_segurado FROM apolice)

--VIEW QUNATIDADE DE APOLICES POR SEGURADO
CREATE VIEW vw_qtd_apolices_segurado
AS
SELECT a.ID_SEGURADO, COUNT(a.ID_SEGURADO) AS QUANTIDADE, S.NOME
FROM APOLICE AS A
INNER JOIN SEGURADO AS S ON A.ID_SEGURADO = S.ID_SEGURADO
GROUP BY A.ID_SEGURADO, S.NOME; 
