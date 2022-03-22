CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
frito_assado VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(nome, frito_assado)
VALUES("Pizza Salgada", "Assado");

INSERT INTO tb_categoria(nome, frito_assado)
VALUES("Pizza Doce", "Assado");

INSERT INTO tb_categoria(nome, frito_assado)
VALUES("Pizza Brotinho", "Assado");

INSERT INTO tb_categoria(nome, frito_assado)
VALUES("Esfiha", "Assado");

INSERT INTO tb_categoria(nome, frito_assado)
VALUES("Coxinha", "Fritura");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
borda VARCHAR(255),
preco DECIMAL NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

DROP TABLE tb_pizza;
INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Pizza de Chocolate", "Borda Seca", 50.00, 2);

INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Pizza de Banana", "Borda Seca", 45.00, 2);

INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Pizza de 4 Queijos", "Borda de Catupiry", 55.00, 1);

INSERT INTO tb_pizza(nome, preco, id_categoria)
VALUES("Coxinha de Frango", 5.00, 5);

INSERT INTO tb_pizza(nome, preco, id_categoria)
VALUES("Coxinha de Carne Seca", 7.50, 5);

INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Pizza de Frango com Catupiry", "Borda de Catupiry", 40.00, 1);

INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Broto de Romeu e Julieta", "Borda Seca", 50.00, 3);

INSERT INTO tb_pizza(nome, borda, preco, id_categoria)
VALUES("Esfiha de Queijo", "Borda Seca", 10.00, 4);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45.0;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE nome LIKE "%C%";

SELECT tb_pizza.nome, tb_categoria.frito_assado, tb_pizza.preco
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id;

SELECT tb_pizza.nome, tb_categoria.frito_assado, tb_pizza.preco
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id
WHERE frito_assado = "Fritura";



















