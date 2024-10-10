create database Vendas;
USE Vendas;
CREATE TABLE tbl_produto (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Descricao_Produto varchar (50)
    );

CREATE TABLE tbl_NotaFiscal (
    Numero_NF INT AUTO_INCREMENT PRIMARY KEY,
    Data_NF  DATE,
    Valor_NF FLOAT  (10,2)
    );
    
CREATE TABLE tbl_Itens (
    Codigo_Produto INT primary key,
    Numero_NF INT,
    Quantidade INT
    );
    
ALTER TABLE tbl_Produto
MODIFY COLUMN Descricao_Produto VARCHAR(50);

ALTER TABLE tbl_Notafiscal 
ADD CMS FLOAT AFTER Numero_NF;

ALTER TABLE tbl_Produto 
ADD Peso FLOAT;

ALTER TABLE tbl_Itens 
DROP PRIMARY KEY;

ALTER TABLE tbl_Itens 
ADD Num_item INT PRIMARY KEY;

DESCRIBE tbl_Produto;
DESCRIBE tbl_Notafiscal;

ALTER TABLE tbl_Notafiscal 
CHANGE Valor_NF ValorTotal_NF DECIMAL(10, 2);

ALTER TABLE tbl_Notafiscal 
DROP COLUMN Data_NF;

DROP TABLE tbl_Itens;

ALTER TABLE tbl_Notafiscal 
RENAME TO Venda;

ALTER TABLE tbl_itens 
ADD COLUMN nota_fiscal INT, 
ADD CONSTRAINT nota_fiscal_fk 
FOREIGN KEY (nota_fiscal) REFERENCES tbl_notafiscal(numero_nf);
