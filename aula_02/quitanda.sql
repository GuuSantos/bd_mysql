-- Criar Banco de Dados
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados
USE db_quitanda;

-- Criar Tabela  tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
qtd int,
dt_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
); 

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, qtd, dt_validade, preco)
VALUES("arroz", 50, "2023-04--29", 20.00);

INSERT INTO tb_produtos (nome, qtd, dt_validade, preco)
VALUES("chuchu", 20, "2022-04--18", 3.00);

INSERT INTO tb_produtos (nome, qtd, dt_validade, preco)
VALUES("banana", 1000, "2022-03--28", 10.50);

INSERT INTO tb_produtos (nome, qtd, dt_validade, preco)
VALUES("cenoura", 30, "2022-05--29", 13.00);

INSERT INTO tb_produtos (nome, qtd, dt_validade, preco)
VALUES("morango", 1, "2022-03-20", 8.50);

SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;

UPDATE tb_produtos SET preco = 8.50 WHERE id = 1;

UPDATE tb_produtos SET qtd = 850 WHERE id = 4;

ALTER TABLE tb_produtos MODIFY preco decimal(8, 2);

ALTER TABLE tb_produtos add descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao ;



DELETE FROM tb_produtos WHERE id = 3;
