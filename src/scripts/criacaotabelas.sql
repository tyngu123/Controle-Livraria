
CREATE DATABASE IF NOT EXISTS livrariadb;
USE livrariadb;

CREATE TABLE IF NOT EXISTS editora (
    id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome_editora VARCHAR(255) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao DATE,
    preco DECIMAL(10,2),
    quantidade INT,
    id_editora INT,
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora)
);

