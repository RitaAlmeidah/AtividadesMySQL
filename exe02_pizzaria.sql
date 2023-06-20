CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
	   tipo varchar(255) not null,
	   borda_recheada text,
		
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, borda_recheada) 
values ("Doce", "sim");
INSERT INTO tb_categorias (tipo, borda_recheada) 
values ("Doce", "não");
INSERT INTO tb_categorias (tipo, borda_recheada)   
values ("Salgada", "sim");
INSERT INTO tb_categorias (tipo, borda_recheada) 
values ("Salgada", "não");
INSERT INTO tb_categorias (tipo, borda_recheada) 
values ("Doce", "sim - meio a meio");

SELECT * FROM tb_categorias;



CREATE TABLE tb_pizzas(
	id bigint auto_increment,
	   sabor varchar(255) not null,
	   tamanho varchar(255) not null,
	   preco decimal(6,2) not null,
	   borda text,
       categorias_id int,

	PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id)
values ("Mussarela", "Grande (8 pedaços)", 58.90, "Borda recheada de chedder", 3);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id) 
values ("Calabresa", "Grande (8 pedaços)", 58.90, "Borda recheada de catupiry", 3);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id)
values ("Marguerita", "Grande (8 pedaços)", 50.90, "Borda tradicional", 4);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id)
values ("Frango com Catupiry", "Grande (8 pedaços)", 50.90, "Borda tradicional", 4);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id) 
values ("Portuguesa", "Broto (4 pedaços)", 37.90, "Borda tradicional", 4);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id) 
values ("Baiana", "Broto (4 pedaços)", 45.90, "Borda recheada de catupiry", 3);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categorias_id) 
values ("Brigadeiro e Prestígio", "Grande (8 pedaços)", 70.90, "Borda de chocolate", 5);
INSERT INTO tb_pizzas(sabor, tamanho, preco, borda, categorias_id)
values ("ChocoFrutas", "Broto (4 pedaços)", 35.90, "Borda tradicional", 2);
INSERT INTO tb_pizzas(sabor, tamanho, preco, borda, categorias_id)
values ("Prestígio", "Broto (4 pedaços)", 47.50, "Borda de chocolate", 1);

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD tb_categorias_id bigint;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (tb_categorias_id) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT sabor, tamanho, preco, borda FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id WHERE tb_categorias.tipo = 'Doce';