CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
matricula BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
sexo CHAR,
cpf VARCHAR(14),
cargo VARCHAR(255),
salario DOUBLE,
PRIMARY KEY (matricula)
);

INSERT INTO tb_funcionarios (nome, sexo, cpf, cargo, salario) values ('Ronaldo', 'M', '123.456.789-10', 'Jogador', 10000.00);
INSERT INTO tb_funcionarios (nome, sexo, cpf, cargo, salario) values ('Marta', 'F', '321.654.987-01', 'Jogadora', 10000.00);
INSERT INTO tb_funcionarios (nome, sexo, cpf, cargo, salario) values ('Messi', 'M', '147.258.369-11', 'Massagista', 1900.00);
INSERT INTO tb_funcionarios (nome, sexo, cpf, cargo, salario) values ('Romario', 'M', '741.852.963-00', 'Cozinheiro', 1500.00);
INSERT INTO tb_funcionarios (nome, sexo, cpf, cargo, salario) values ('Tite', 'M', '153.759.957-11', 'Tecnico', 5000.00);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 15000.00 WHERE matricula = 2;