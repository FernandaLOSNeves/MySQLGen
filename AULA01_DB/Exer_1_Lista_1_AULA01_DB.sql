/* estou usando o db_ porque se trata de um data base (boa prática)
pra criar tabela em vez de create database uso create table, não precisa ser em maiúscula
mas é bom para diferenciar 
raio - roda tudo
raio com | - roda só o que estiver selecionado 
**/
CREATE DATABASE db_rhgeneration; 
-- indica o banco de dados a ser utilizado/manipulado USE
USE db_rhgeneration;

CREATE TABLE tb_funcionarios(
	
    id BIGINT auto_increment,
    -- varchar: cadeia de caracteres de letras com 255 caracteres, Aqui não tem string
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    -- 9 casas antes e 2 casas depois da vírgula
    setor VARCHAR(255),
    matricula INT,
    -- banco de dados relacionais precisam de chave primária 
    -- autoincrement não ia poder ir aqui na matrícula, só pode ir em um campo da tabela
    primary key (id)
);

-- Traz todos os dados da tabela de funcionários
SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE SALARIO > 10000;
SELECT * FROM tb_funcionarios WHERE SALARIO < 10000;
SELECT MAX(salario) AS MaiorSalario FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Clebão",11000.70, "Tecnologia", 03);
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Lucio",5000.10, "Logística", 09);
UPDATE tb_funcionarios
SET nome = "Fernanda"
WHERE ID = 4;

DELETE FROM tb_funcionarios WHERE id = 5;



