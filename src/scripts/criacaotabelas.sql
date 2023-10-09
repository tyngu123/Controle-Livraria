
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

CREATE TABLE IF NOT EXISTS funcao (
    id_funcao INT PRIMARY KEY AUTO_INCREMENT,
    funcao VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(12) NOT NULL UNIQUE,
    senha VARCHAR(8) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    id_funcao INT,
    FOREIGN KEY (id_funcao) REFERENCES funcao(id_funcao)
);



