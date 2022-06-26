CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    tamanho VARCHAR(255),
    
    primary key (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT auto_increment,
    sabor_1 VARCHAR (255),
    sabor_2 VARCHAR (255),
    preco DECIMAL(9,2),
    categoria_id BIGINT,
    
    primary key (id),
    FOREIGN KEY (categoria_id) references tb_categorias(id)
    
);

INSERT INTO tb_categorias (tamanho) VALUES ("broto");
INSERT INTO tb_categorias (tamanho) VALUES ("pequena");
INSERT INTO tb_categorias (tamanho) VALUES ("média");
INSERT INTO tb_categorias (tamanho) VALUES ("grande");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (sabor_1, sabor_2, preco, categoria_id) VALUES ("muçarela", "calabresa", 49.90 , 1);
INSERT INTO tb_pizzas (sabor_1, sabor_2, preco, categoria_id) VALUES ("muçarela", "portuguesa", 54.90 , 2);
INSERT INTO tb_pizzas (sabor_1, sabor_2, preco, categoria_id) VALUES ("muçarela", "brócolis e bacon", 54.90 , 3);
INSERT INTO tb_pizzas (sabor_1, sabor_2, preco, categoria_id) VALUES ("muçarela", "4 queijos", 64.90 , 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 50 && preco <60;
SELECT * FROM tb_pizzas WHERE preco < 50;
SELECT * FROM tb_pizzas WHERE preco > 60;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE tamanho LIKE 'grande';

SELECT sabor_1, sabor_2, preco, tamanho FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;
