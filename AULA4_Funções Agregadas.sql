SELECT * FROM tb_entrada_produto;
SELECT id_estoque AS codigo, 
	qtde AS quantidade,  
	valor_unitario valor FROM tb_estoque;
SELECT * FROM tb_produto;
SELECT * FROM tb_saida_produto;
--MIN()
SELECT MIN(valor_unitario) AS valor FROM tb_estoque;
SELECT MIN(estoque_maximo) AS valor FROM tb_produto;
--MAX()
SELECT MAX(valor_unitario) AS valor FROM tb_estoque;
SELECT MAX(estoque_maximo) FROM tb_produto;
--COUNT(*)
SELECT COUNT(*) FROM tb_estoque;
SELECT COUNT(*) AS valor FROM tb_produto;
--SUM()
SELECT qtde, SUM(valor_unitario) FROM tb_saida_produto
GROUP BY qtde;

SELECT * FROM tb_saida_produto ORDER BY qtde;
--AVG()
SELECT * FROM tb_entrada_produto ORDER BY data_entrada;
SELECT qtde,  AVG(valor_unitario) FROM tb_entrada_produto
GROUP BY qtde;
SELECT data_entrada,  AVG(valor_unitario) FROM tb_entrada_produto
GROUP BY data_entrada;
SELECT valor_unitario, AVG(qtde) FROM tb_entrada_produto
GROUP BY valor_unitario;

SELECT * FROM tb_produto;
SELECT descricao,  AVG(estoque_minimo) FROM tb_produto
GROUP BY descricao;
INSERT INTO tb_produto VALUES('A', 'Borracha', 30, 80);

--HAVING
SELECT * FROM tb_estoque;

SELECT valor_unitario, COUNT(*) AS quantidade FROM tb_estoque
GROUP BY valor_unitario;

SELECT valor_unitario, COUNT(*) AS quantidade FROM tb_estoque
GROUP BY valor_unitario
HAVING COUNT(*) > 1;