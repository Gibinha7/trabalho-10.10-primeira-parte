CREATE DATABASE sistema_gestao;

USE sistema_gestao;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    CONSTRAINT fk_usuario_produto FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE
);

INSERT INTO usuarios (nome, email, senha) VALUES 
('Maria Silva', 'maria@gmail.com', 'senha123'),
('João Souza', 'joao@gmail.com', 'senha456');

INSERT INTO produtos (nome_produto, preco, id_usuario) VALUES
('Notebook', 3500.00, 1),
('Smartphone', 2000.00, 2),
('Tablet', 1500.00, 1);

SELECT * FROM usuarios;
SELECT * FROM produtos;