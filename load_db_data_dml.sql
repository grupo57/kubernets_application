USE mydb;
INSERT INTO clientes (id,codigo,cpf,data_criacao,nome,ultima_modificacao) VALUES
(1,001,12345678901,"2024-05-20 04:28:47.199275",Marcello,"2024-05-20 04:30:49.203609"),
(2,002,12345678902,"2024-05-20 04:31:55.115051",Matheus,"2024-05-20 04:31:55.115051"),
(3,003,12345678903,"2024-05-20 04:32:23.916552",Fabio,"2024-05-20 04:32:23.916552"),
(4,004,12345678904,"2024-05-20 04:32:40.768593",Eduardo,"2024-05-20 04:32:40.768593");

INSERT INTO produtos (id,codigo,data_criacao,nome,tipo_produto,ultima_modificacao,valor) VALUES
(1,LAN01,"2024-05-20 04:35:49.465472",Hamburger,LANCHE,"2024-05-20 05:03:51.524812",5.50),
(2,LAN02,"2024-05-20 04:36:37.007693",X-Hamburger,LANCHE,"2024-05-20 04:36:37.007693",6.50),
(3,ACO01,"2024-05-20 04:37:21.025117","Batata frita",ACOMPANHAMENTO,"2024-05-20 05:03:51.507303",4.00),
(4,ACO02,"2024-05-20 04:37:38.028388","Mandioca frita",ACOMPANHAMENTO,"2024-05-20 04:37:38.028388",4.00),
(5,BEB01,"2024-05-20 04:38:18.347290","Coca Cola",BEBIDA,"2024-05-20 05:03:51.524812",1.00),
(6,BEB02,"2024-05-20 04:38:45.564562",Guaraná,BEBIDA,"2024-05-20 04:38:45.564562",1.00),
(7,BEB03,"2024-05-20 04:39:10.212640","Suco de laranja",BEBIDA,"2024-05-20 04:39:10.212640",1.50),
(8,SOB01,"2024-05-20 04:39:36.275862",Pudim,SOBREMESA,"2024-05-20 05:03:51.523812",1.50),
(9,SOB02,"2024-05-20 04:40:02.972659","Torta de maçã",SOBREMESA,"2024-05-20 04:40:02.972659",2.00),
(10,SOB03,"2024-05-20 04:40:14.965064","Torta de banana",SOBREMESA,"2024-05-20 04:40:14.965064",2.00);
