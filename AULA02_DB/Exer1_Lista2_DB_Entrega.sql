CREATE DATABASE db_generation_game_online;
-- SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%'; nem ideia do que esse comando significa mas tamos ai

USE db_generation_game_online;

CREATE TABLE tb_classes(
	
    id BIGINT auto_increment,
    
    poderzinho VARCHAR(255),
    nivel INT,
    
    primary key (id)
);

CREATE TABLE tb_personagem(
	
    id BIGINT auto_increment,
    
    nome VARCHAR(255),
    reino VARCHAR(255),
    equipe VARCHAR(255),
    experiencia DECIMAL(10,2),
    classes_id bigint,
	FOREIGN KEY (classes_id) REFERENCES tb_classes(id),
    
    primary key (id)
    
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagem;

INSERT INTO tb_classes(poderzinho, nivel)VALUES("Agua", 8);
INSERT INTO tb_classes(poderzinho, nivel)VALUES("Kameramera", 100);
INSERT INTO tb_classes(poderzinho, nivel)VALUES("Espada flamegante", 20);

INSERT INTO tb_personagem(nome, reino, equipe, experiencia, classes_id)VALUES("Lenel","Mercúrio", "Vintage", 7.0, 1);
INSERT INTO tb_personagem(nome, reino, equipe, experiencia, classes_id)VALUES("Lubinha","Marte", "Turma 54", 5.0, 2);
INSERT INTO tb_personagem(nome, reino, equipe, experiencia, classes_id)VALUES("Serena","Narnia", "Sailor moon", 2.0, 3);
INSERT INTO tb_personagem(nome, reino, equipe, experiencia, classes_id)VALUES("Luan Piaulino","Plutão", "Java", 23.0, 1);

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.classes_id;

-- modificaçoes aqui 

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.classes_id WHERE experiencia > 6;

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.classes_id WHERE nivel > 8 && nivel < 30;

SELECT * FROM tb_personagem 
WHERE nome LIKE 'l%';

SELECT * FROM tb_personagem 
WHERE nome LIKE 's%'; 

SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.classes_id WHERE reino LIKE 'Narnia';
