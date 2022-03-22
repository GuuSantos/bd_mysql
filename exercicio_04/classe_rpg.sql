CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
tipo_dano VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe(nome, tipo_dano)
VALUES("Mago", "Mágico");

INSERT INTO tb_classe(nome, tipo_dano)
VALUES("Assassino", "Físico");

INSERT INTO tb_classe(nome, tipo_dano)
VALUES("Espadachim", "Físico");

INSERT INTO tb_classe(nome, tipo_dano)
VALUES("Sacerdote", "Mágico");

INSERT INTO tb_classe(nome, tipo_dano)
VALUES("Duelista", "Físico");

CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
arma VARCHAR(255),
poder_ataque int NOT NULL,
poder_defesa int NOT NULL,
id_classe BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_classe) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Gustavo", "Cajado", 12000, 7000, 1);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Victor", "Espada de Madeira", 1000, 1500, 2);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Lucas", "Espada de Diamante", 25000, 22000, 2);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Gean", "Katana", 15000, 10000, 2);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Mateus", "Livros", 1000, 500, 4);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Robert", "Adagas", 20000, 10000, 3);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Felipe", "Adaga", 1000, 500, 3);

INSERT INTO tb_personagem(nome, arma, poder_ataque, poder_defesa, id_classe)
VALUES("Caio", "Duas Espadas", 8000, 5000, 5);

UPDATE tb_personagem set id_classe = 3 WHERE id_classe = 2;

UPDATE tb_personagem set id_classe = 2 WHERE id = 6;

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;

SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_classe;

SELECT * FROM tb_personagem;


SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT tb_personagem.nome, tb_classe.nome AS Classe, arma, tb_classe.tipo_dano
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id;

SELECT tb_personagem.nome, tb_classe.nome AS Classe, arma, tb_classe.tipo_dano
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id
WHERE tb_classe.nome = "Assassino";



















