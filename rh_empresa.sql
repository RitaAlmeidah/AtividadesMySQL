CREATE DATABASE rh_empresa01;

USE rh_empresa01;

create table rh_colaborador(
id bigint auto_increment,
nome varchar(250) not null, 
idade int,
cargo varchar(250) not null,
periodo varchar(250),
salario decimal(6,2) not null,

PRIMARY KEY (id)
);

INSERT INTO rh_colaborador(nome, idade, cargo, periodo, salario)
values("Maria", 25, "Estoquista", "Matutino", 1828.16);

INSERT INTO rh_colaborador(nome, idade, cargo, periodo, salario)
values("Marta", 23, "Operador de Caixa", "Vespertino", 1624.42);

INSERT INTO rh_colaborador(nome, idade, cargo, periodo, salario)
values("João", 28, "Estoquista", "Vespertino", 1828.16);

INSERT INTO rh_colaborador(nome, idade, cargo, periodo, salario)
values("Pedro", 29, "Operador de Caixa", "Matutino", 1624.42);

INSERT INTO rh_colaborador(nome, idade, cargo, periodo, salario)
values("Andreia", 32, "Gerente", "Integral", 2735.00);

SELECT * FROM rh_colaborador;

SELECT * FROM rh_colaborador Where salario > 2000.00;

SELECT * FROM rh_colaborador Where salario < 2000.00;
 
UPDATE rh_colaborador SET salario = 1900.00 WHERE id = 3;

SELECT * FROM rh_colaborador WHERE id = 3;
