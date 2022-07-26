CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
funcao VARCHAR(255),
armadura VARCHAR(255),
arma VARCHAR(255),
ataque INT,
defesa INT
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
raca VARCHAR(255),
sexo CHAR(1),
faccao VARCHAR(255),
classe BIGINT,
FOREIGN KEY(classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, funcao, armadura, arma, ataque, defesa) values ("Caçador", "Dano Físico à Distância", "Malha", "Machados, arcos, bestas, adagas, armas de punho, armas de fogo, armas de haste, cajados, espadas", 1500, 1700);
INSERT INTO tb_classes (nome, funcao, armadura, arma, ataque, defesa) values ("Sacerdote", "Cura, Dano Mágico à Distância", "Tecido", "Adagas, Maças de uma mão, Cajados, Varinha", 1300, 900);
INSERT INTO tb_classes (nome, funcao, armadura, arma, ataque, defesa) values ("Xamã", "Cura, Dano", "Malha, Escudos", "Adagas, Armas de Punho, Machados, Maças, Cajados", 2000, 1900);
INSERT INTO tb_classes (nome, funcao, armadura, arma, ataque, defesa) values ("Mago", "Dano Mágico à Distância", "Tecido", "Varinhas, Adagas, Espadas de uma mão, Cajados", 2000, 900);
INSERT INTO tb_classes (nome, funcao, armadura, arma, ataque, defesa) values ("Caçador de Demônios", "Dano Corpo a Corpo", "Tanque", "Couro" "Glaives de guerra, Armas de Punho, Machados de uma mão, Espadas de uma mão", 1300, 2500);

INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Rexxar", "Meio Orc-Ogro", "M", "Horda", 1);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Khadgar", "Humano", "M", "Neutro", 4);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Princesa Talanji", "Troll Zandalari", "F", "Netro", 2);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Jaina", "Humano", "F", "Aliança", 4);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Thrall", "Orc", "M", "Horda", 3);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Anduin", "Humano", "M", "Aliança", 2);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Sylvanas", "Morto vivo", "F", "Horda", 1);
INSERT INTO tb_personagens (nome, raca, sexo, faccao, classe) values ("Illidan", "Elfo Noturno", "M", "Neutro", 5);

SELECT * FROM	tb_classes;
SELECT * FROM	tb_personagens;

SELECT * FROM tb_classes WHERE ataque > 2000;
SELECT * FROM tb_classes WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe;
SELECT tb_personagens.nome, tb_classes.nome FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe WHERE tb_classes.nome = 'Xamã';