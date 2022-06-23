CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(

	id BIGINT auto_increment,
    
    produto VARCHAR(255),
    marca VARCHAR(255),
    cor VARCHAR(255),
    preco DECIMAL(9,2),
    categoria VARCHAR(255),
    quantidadeEstoque INT,
    primary key (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Chinelo","Havaianas", "Rosa", 50.50, "Calcado", 15);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Bota","Arezzo", "Preta", 299.90, "Calcado", 7);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Camiseta","Fatinha", "Rosa", 49.90, "Vestimenta", 10);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Camiseta","Fatinha", "Branca", 49.90, "Vestimenta", 10);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Chinelo","Fatinha", "Vermelha", 49.90, "Vestimenta", 20);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Moleton","Ballez", "Cinza", 125.00, "Vestimenta", 8);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Calça","Ballez", "Rosa", 80.00, "Vestimenta", 15);
INSERT INTO tb_produtos(produto, marca, cor, preco, categoria, quantidadeEstoque)VALUES("Short","Balezz", "Rosa", 50.00, "Vestimenta", 1);

UPDATE tb_produtos
SET marca = "Ballez"
WHERE ID = 8;

SELECT * FROM tb_produtos WHERE PRECO > 60;
SELECT * FROM tb_produtos WHERE PRECO < 60;