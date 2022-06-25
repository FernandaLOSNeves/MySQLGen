-- criar um banco de dados
CREATE DATABASE db_gen;

-- indica o banco de dados a ser utilizado/manipulado
USE db_gen;

CREATE TABLE tb_setor(
	id BIGINT auto_increment,
    nome_setor VARCHAR(255),
    
    PRIMARY KEY(id)

);
-- criação da tabela de funcionarios
CREATE TABLE tb_funcio(
	
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    matricula INT,
    setor_id bigint,
    PRIMARY KEY(id),

    FOREIGN KEY (setor_id) REFERENCES tb_setor(id)
);

SELECT * FROM tb_funcio;
SELECT * FROM tb_setor;

/*Não posso referenciar algo que não existe (old né)
**/

INSERT INTO tb_setor(nome_setor)VALUES("Tech");
INSERT INTO tb_setor(nome_setor)VALUES("ADM");
INSERT INTO tb_setor(nome_setor)VALUES("Financeiro");

INSERT INTO tb_funcio(nome, salario, matricula, setor_id)VALUES("Fernanda",11000.70, 1, 1);
INSERT INTO tb_funcio(nome, salario, matricula, setor_id)VALUES("Nathalia",9000.70, 2, 2);
INSERT INTO tb_funcio(nome, salario, matricula, setor_id)VALUES("Wanessa",12000.50, 3, 3);

DELETE FROM tb_funcio WHERE id = 3;

-- foi aqui que eu relacionei as tabela
-- cata a tabela tb funcio e junta com a tb setor, no tb setor id onde for igual o setor id da funcio 
SELECT * FROM tb_funcio INNER JOIN tb_setor
ON tb_setor.id = tb_funcio.setor_id;
