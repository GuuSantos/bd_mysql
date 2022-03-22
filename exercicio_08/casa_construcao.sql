CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
descricao VARCHAR(255) NOT NULL,
lugar_casa VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(lugar_casa, descricao)
VALUES("Banheiro", "Produtos destinados a área do Banheiro da sua casa");

INSERT INTO tb_categoria(lugar_casa, descricao)
VALUES("Cozinha", "Produtos destinados a área da Cozinha da sua casa");

INSERT INTO tb_categoria(lugar_casa, descricao)
VALUES("Quarto", "Produtos destinados a área dos Quartos da sua casa");

INSERT INTO tb_categoria(lugar_casa, descricao)
VALUES("Varanda", "Produtos destinados a área da Varanda da sua casa");

INSERT INTO tb_categoria(lugar_casa, descricao)
VALUES("Piscina", "Produtos destinados a área da Piscina da sua casa");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
material VARCHAR(255),
preco DECIMAL NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Privada", "Porcelana", "50.00", 1);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Chuveiro", "Plástico", "30.00", 1);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Torneira", "Metal", "25.00", 2);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Cuba Simples", "Inox", "1000.00", 2);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Churrasqueira", "Metal", "75.00", 4);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Mangueira", "Plastico", "50.00", 5);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Toldos", "Pano", "150.00", 5);

INSERT INTO tb_produto(nome, material, preco, id_categoria)
VALUES("Cômoda 4 Gavetas", "Madeira", "350.00", 3);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id;

SELECT tb_produto.nome, tb_produto.preco, tb_produto.material, tb_categoria.lugar_casa FROM tb_produto 
INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id
WHERE lugar_casa = "Banheiro";