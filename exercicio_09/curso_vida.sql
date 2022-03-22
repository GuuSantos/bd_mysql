CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
ling_programacao VARCHAR(255) NOT NULL,
ide VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(ling_programacao, ide)
VALUES("Java", "Eclipse");

INSERT INTO tb_categoria(ling_programacao, ide)
VALUES("Python", "PyCharm");

INSERT INTO tb_categoria(ling_programacao, ide)
VALUES("Java Script", "VS CODE");

INSERT INTO tb_categoria(ling_programacao, ide)
VALUES("Banco de Dados", "MySQL");

INSERT INTO tb_categoria(ling_programacao, ide)
VALUES("Kotlin", "Android Developer");

SELECT * FROM tb_categoria;


CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT NOT NULL,
professor VARCHAR(255) NOT NULL,
empresa VARCHAR(255),
preco DECIMAL NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Jeff", "Generation", 0, 1);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Rafael", "Generation", 0, 4);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Guanabara", "Curso em Video", 0, 2);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Daniel Amaral", "Alura", 1000, 5);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Selmini", "FIAP", 1500, 1);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Guanabara", "Curso em Video", 0, 3);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Felipe Deschamps", "Udemy", 50, 3);

INSERT INTO tb_curso(professor, empresa, preco, id_categoria)
VALUES("Rafael", "Generation", 0, 1);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_curso WHERE professor LIKE "%J%";

SELECT * FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.id_categoria = tb_categoria.id;

SELECT tb_curso.professor, tb_curso.empresa, tb_categoria.ling_programacao FROM tb_curso
INNER JOIN tb_categoria ON tb_curso.id_categoria = tb_categoria.id
WHERE empresa = "Generation";




