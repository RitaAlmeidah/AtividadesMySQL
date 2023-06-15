CREATE DATABASE bd_ecommerce01;

USE bd_ecommerce01;

create table tb_produtos(
    id bigint auto_increment,
	produto varchar(255) not null, 
	cor varchar(255) not null,
	voltagem CHAR(255) not null,
	preco decimal(6,2) not null,
	quantidade int,

	PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Cafeteira", "Preto", "127v", 349.99, 100);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Cafeteira", "Preto", "220v", 329.99, 90);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Air Fryer", "Branco", "127v", 529.99, 150);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Air Fryer", "Branco", "220v", 509.99, 165);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Sanduícheira", "Inox", "127v", 199.99, 48);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Sanduícheira", "Inox", "220v", 185.50, 33);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Liquidificador","Preto", "127v", 184.99, 80);
INSERT INTO tb_produtos(produto, cor, voltagem, preco, quantidade)
values ("Liquidificador","Preto", "220v", 179.91, 85);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 82 WHERE id = 1;


