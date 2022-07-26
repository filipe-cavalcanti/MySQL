CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
sazonal BOOLEAN
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
tamanho VARCHAR(255),
borda BOOLEAN,
valor DOUBLE,
categoria BIGINT,
FOREIGN KEY(categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, sazonal) values ("Salgada", false);
INSERT INTO tb_categorias (nome, sazonal) values ("Doce", false);
INSERT INTO tb_categorias (nome, sazonal) values ("Vegetariana", false);
INSERT INTO tb_categorias (nome, sazonal) values ("Vegana", false);
INSERT INTO tb_categorias (nome, sazonal) values ("Moda do Chefe", true);

INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Mussarela", "Grande", true, 31.90, 1);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Chocolate", "Grande", true, 49.90, 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Frango e catupiry", "Grande", true, 33.50, 1);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Alho e óleo", "Broto", true, 50.00, 4);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("A moda do chefe", "Grande", true, 45.00, 5);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Marguerita", "Broto", true, 35.90, 3);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Nutela e morango", "Grande", true, 55.90, 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, categoria) values ("Milho verde", "Grande", true, 37.50, 3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;


SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria;
SELECT tb_pizzas.sabor, tb_categorias.nome FROM tb_categorias INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.categoria;
SELECT tb_pizzas.sabor, tb_categorias.nome FROM tb_categorias INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.categoria WHERE tb_categorias.nome = 'Doce';