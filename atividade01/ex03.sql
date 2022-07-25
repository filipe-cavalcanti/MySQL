CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
matricula BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
sexo CHAR,
curso VARCHAR(255),
nota DOUBLE,
ativo BOOLEAN,
PRIMARY KEY (matricula)
);

INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Thrall', 'M', 'HTML5', '5.0', true);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Garrosh Grito Infernal', 'M', 'CSS3', '10', false);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Saurfang', 'M', 'JavaScript', '7.5', false);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Sylvanas Correventos', 'F', 'React', '3.5', true);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Baine Casco Sangrento', 'M', 'Java', '1.0', true);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ("Vol'jin", 'M', 'MySQL', '9.0', false);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Rokhan', 'M', 'Spring Boot', '7.0', true);
INSERT INTO tb_alunos (nome, sexo, curso, nota, ativo) values ('Lilian Voss', 'F', 'Docker', '8.5', true);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 0.0 WHERE matricula = 5;