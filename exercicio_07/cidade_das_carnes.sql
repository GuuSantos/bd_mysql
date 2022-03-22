CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
descricao VARCHAR(255) NOT NULL,
tipo_animal VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo_animal, descricao)
VALUES("Bovino", "Carne de Boi");

INSERT INTO tb_categoria (tipo_animal, descricao)
VALUES("Avina", "Carne de Frango");

INSERT INTO tb_categoria (tipo_animal, descricao)
VALUES("Suína", "Carne de Porco");

INSERT INTO tb_categoria (tipo_animal, descricao)
VALUES("Peixes", "Carne de Peixe");

INSERT INTO tb_categoria (tipo_animal, descricao)
VALUES("Frutos do Mar", "Frutos do mar");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
osso VARCHAR(255),
preco DECIMAL NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Picanha", "Não possui Osso", "60.00", 1);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Paleta", "Possui Osso", "20.00", 1);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Bisteca", "Possui Osso", "15.00", 3);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Barriga", "Não possui Osso", "30.00", 3);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Asa de Frango", "Possui Osso", "20.00", 2);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Tilápia", "Possui Osso", "35.00", 4);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Ostra", "Não possui Osso", "75.00", 5);

INSERT INTO tb_produto(nome, osso, preco, id_categoria)
VALUES("Filé de Peito", "Não possui Osso", "25.00", 2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id;

SELECT tb_produto.nome, tb_produto.preco, tb_categoria.descricao FROM tb_produto 
INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id
WHERE tipo_animal = "Bovino";





