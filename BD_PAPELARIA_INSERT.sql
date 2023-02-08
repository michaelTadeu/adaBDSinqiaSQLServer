/*Inserindo 20 registros na tabela tb_produto
Campo "status" indica se o cadastro está ativo “A” ou inativo “I”*/
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis', 10, 20);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis de cor', 12, 60);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis de cera', 12, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Marcadores',10, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Esferograficas (azul, vermelha, preta e verde)', 7, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Etiqueta', 8, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Borracha', 20, 70);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno pautado', 30, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno quadriculado', 30, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno de musica', 16, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Calculadora', 20, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Regua de 20 cm', 13, 40);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Compasso',    8, 40);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Giz de cera', 9, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Tesoura', 11, 20);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Estojo',    21, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Papel Manteiga',    15, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Mochila', 6, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'T-shirt', 25, 120);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Corretivo', 16, 30);

/*Inserindo 20 registros na tabela tb_entrada_produto*/
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (20, '1.00', '2000-12-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (60, '1.00', '2021-01-01');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '2.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '5.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '10.00', '2021-01-22');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '8.00', '2021-01-13');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (70, '9.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '17.00', '2021-03-12');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '9.00', '2021-03-09');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '3.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '2.00', '2021-02-26');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (40, '5.00', '2021-02-10');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (40, '4.00', '2021-02-25');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '9.00', '2021-02-10');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (20, '3.00', '2021-02-13');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '7.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '2.00', '2021-01-25');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '3.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (120, '8.00', '2021-03-30');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '6.00', '2021-02-23');

/*Inserindo 20 registros na tabela tb_estoque*/
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '1.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (60, '1.50');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '10.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (70, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '17.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '4.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '7.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (120, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '6.00');

/*Inserindo 10 registros na tabela tb_saida_produto*/
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (10, '2021-05-01', '2.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (20, '2021-05-01', '5.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (40, '2021-05-01', '4.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (04, '2021-05-01', '9.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (05, '2021-05-01', '3.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (100, '2021-05-01', '7.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (30, '2021-05-01', '2.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (20, '2021-05-01', '3.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (05, '2021-05-01', '8.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (04, '2021-05-01', '6.00');


SELECT MIN(valor_unitario) FROM tb_entrada_produto;