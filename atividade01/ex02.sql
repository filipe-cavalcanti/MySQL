CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
registro BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
modelo VARCHAR(255),
setor VARCHAR(255),
estoque INT,
valor DOUBLE,
PRIMARY KEY (registro)
);

INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Iphone', '13 Pro Max', 'Celular', '15', 9199.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Iphone', 'SE 2022', 'Celular', '25', 4199.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Ipad', 'Pro', 'Tablets', '10', 10199.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Ipad', 'Air', 'Tablets', '5', 6699.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('MacBook', 'Pro', 'Notebook', '3', 14499.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('MacBook', 'Air', 'Notebook', '7', 13299.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Cabo de USB-C para Lightning', '1m', 'Acessórios ', '30', 215.00);
INSERT INTO tb_produtos (nome, modelo, setor, estoque, valor) values ('Carregador USB-C', '20W', 'Acessórios ', '20', 191.00);


SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET estoque = 50 WHERE registro = 7;