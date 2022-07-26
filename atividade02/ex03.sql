CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
animal VARCHAR(255),
tipo VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
estoque INT,
validade VARCHAR(255),
preco DOUBLE,
categoria BIGINT,
FOREIGN KEY(categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (animal, tipo) values ("Boi", "Carne bovina");
INSERT INTO tb_categorias (animal, tipo) values ("Frango", "Carne de ave");
INSERT INTO tb_categorias (animal, tipo) values ("Porco", "Carne suina");
INSERT INTO tb_categorias (animal, tipo) values ("Peixe", "Carne de peixe");
INSERT INTO tb_categorias (animal, tipo) values ("Vaca", "Bebidas");

INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Alcatra", 5, "30 dias", 49.75, 1);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Leite", 20, "10 dias", 6.99, 5);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Filé de peito", 15, "30 dias", 20.99, 2);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Bisteca", 11, "15 dias", 39.75, 3);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Acém", 7, "30 dias", 39.53, 1);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Linguiça", 17, "5 dias", 19.31, 3);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Picanha", 10, "30 dias", 57.60, 1);
INSERT INTO tb_produtos (nome, estoque, validade, preco, categoria) values ("Frango à passarinho", 5, "30 dias", 23.99, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria;
SELECT tb_produtos.nome, tb_categorias.animal FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria;
SELECT tb_produtos.nome, tb_categorias.animal FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria WHERE tb_categorias.animal = 'Boi';