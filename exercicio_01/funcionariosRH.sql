CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT ,
cpf VARCHAR(255) NOT NULL,
salario decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario)
VALUES("Rafael", 35, "78518588448", 5000.00);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario)
VALUES("Gustavo", 25, "47844784423", 2500.00);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario)
VALUES("Gabriela", 21, "26812351970", 1500.00);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario)
VALUES("Roberto", 40, "42247106412", 5500.00);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario)
VALUES("Adriana", 30, "81752761936", 1900.00);

ALTER TABLE tb_funcionarios MODIFY salario decimal(8, 2);

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios set salario = 2500.00 where id = 5;
