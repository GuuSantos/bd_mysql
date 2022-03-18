CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL ,
qtd INT,
setor VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Camiseta", 150.00, 2, "Vestuário");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Calca", 250.00, 1, "Vestuário");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Colar de Prata", 70.00, 2, "Acessórios");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Anel de Ouro", 300.00, 2, "Acessórios");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Air Max 97", 800.00, 1, "Tênis");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Air Max 90", 1400.00, 2, "Tênis");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("All Star", 450.00, 1, "Tênis");

INSERT INTO tb_produtos(nome, preco, qtd, setor)
VALUES("Cachecol", 50.00, 1, "Acessório");

ALTER TABLE tb_produtos MODIFY preco decimal(8, 2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos where preco > 500;

SELECT * FROM tb_produtos where preco < 500;

UPDATE tb_produtos set preco = 600.00 where id = 4;
UPDATE tb_produtos set qtd = 2  where id = 4;


