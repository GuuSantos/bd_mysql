CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
descricao VARCHAR(255),
categoria VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(categoria, descricao)
VALUES("Cabelo", "Produtos para Cabelo");

INSERT INTO tb_categoria(categoria, descricao)
VALUES("Corpo", "Produtos para o Corpo");

INSERT INTO tb_categoria(categoria, descricao)
VALUES("Dor de Cabeça", "Remédios para Dor de cabeça");

INSERT INTO tb_categoria(categoria, descricao)
VALUES("Mal estar", "Remédios para Mal estar");

INSERT INTO tb_categoria(categoria, descricao)
VALUES("Infantil", "Produtos Infantis");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255),
valor decimal,
id_categoria BIGINT,
cod_barras VARCHAR(255),
PRIMARY KEY(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);
SELECT * FROM tb_categoria;

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Shampoo Anti-Caspa", 35.00, "273571102210", 1);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Shampoo para cabelos Lisos", 30.00, "1593578526", 1);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Creme Corporal de Hortelã", 45.00, "1235496325", 2);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Creme para os pés", 25.00, "7589651258", 2);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Paracetamol", 50.00, "1478523695", 3);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Dipirona", 65.00, "1598523654", 3);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Bromoprida", 30.00, "2698531475", 4);

INSERT INTO tb_produtos(nome, valor, cod_barras, id_categoria)
VALUES("Fraldas Pampers GG", 65.00, "7418521472", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%B%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id;

SELECT tb_produtos.nome, tb_produtos.valor, tb_categoria.descricao FROM tb_produtos 
INNER JOIN tb_categoria ON tb_produtos.id_categoria = tb_categoria.id
WHERE descricao = "Produtos para Cabelo";





