CREATE DATABASE dt_escola;

USE dt_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT ,
rm VARCHAR(255) NOT NULL,
nota_final decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Gustavo", 18, "235698", 8.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Larissa", 16, "159326", 10.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Gabriel", 17, "123589", 5.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Gean", 15, "246859", 3.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Giovana", 19, "125473", 6.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Fernanda", 18, "159357", 7.0);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Robert", 16, "456951", 9.5);

INSERT INTO tb_alunos(nome, idade, rm, nota_final)
VALUES("Rafael", 17, "258963", 4.0);

SELECT * FROM tb_alunos;

ALTER TABLE tb_alunos MODIFY nota_final decimal(8, 1);

SELECT * FROM tb_alunos where nota_final > 7;

SELECT * FROM tb_alunos where nota_final < 7;

UPDATE tb_alunos set nota_final = 7.5 where id = 6;
UPDATE tb_alunos set nota_final = 9.5 where id = 7;


