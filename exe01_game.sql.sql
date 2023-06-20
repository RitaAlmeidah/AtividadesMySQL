CREATE DATABASE db_generation_game_online;

USE db_generation_game_online; 

CREATE TABLE tb_classes(
	id bigint auto_increment,
	   nomejogo varchar(255) not null,
	   tipo varchar(255) not null,
		
	PRIMARY KEY (id)
);

INSERT INTO tb_classes (nomejogo, tipo) 
values ("Super Mario", "Aventura");
INSERT INTO tb_classes (nomejogo, tipo) 
values ("Crash Bandicoot", "Aventura");
INSERT INTO tb_classes (nomejogo, tipo) 
values ("Liga da Justiça", "Ação");
INSERT INTO tb_classes (nomejogo, tipo) 
values ("Mortal Kombat", "Luta");
INSERT INTO tb_classes (nomejogo, tipo) 
values ("Os Vingadores", "Ação");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	id bigint auto_increment,
	   nome varchar(255) not null,
	   ataque int,
       defesa int,
       genero varchar(255) not null,
       descricao text,
       classes_id int,
	PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Mario", 1700, 1500, "Masculino", "Encanador", 1);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Luigi", 2100, 1900, "Masculino", "Irmão do Mario", 1);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Peach", 1000, 200, "Feminino", "Princesa", 1);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Crash", 1200, 1000, "Masculino", "Raposa", 2);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id)  
values ("Mulher Maravilha", 2300, 2000, "Feminino", "Guerreira", 3);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Sindel", 2400, 2300, "Feminino", "Rainha", 4);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Thor", 2550, 2150, "Masculino", "Deus", 5);
INSERT INTO tb_personagens (nome, ataque, defesa, genero, descricao, classes_id) 
values ("Raiden", 1900, 1750, "Masculino", "Mentor", 4);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD tb_classes_id bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (tb_classes_id) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT nome, descricao, tipo FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE tb_classes.nomejogo = 'Super Mario';
