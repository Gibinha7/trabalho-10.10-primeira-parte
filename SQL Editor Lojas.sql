create database Lojas;
use Lojas;

CREATE TABLE duplicata (
    nome CHAR(40),
    numero INTEGER NOT NULL PRIMARY KEY,
    valor DECIMAL(10, 2),
    vencimento DATE,
    banco CHAR(10)
);

INSERT INTO duplicata (nome, numero, valor, vencimento, banco) VALUES 
('ABC PAPELARIA', 100100, 5000.00, '2017-01-20', 'ITAU'),
('LIVRARIA FERNANDES', 100110, 2500.00, '2017-01-22', 'ITAU'),
('LIVRARIA FERNANDES', 100120, 1500.00, '2016-10-15', 'BRADESCO'),
('ABC PAPELARIA', 100130, 8000.00, '2016-10-15', 'SANTANDER'),
('LER E SABER', 200120, 10500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 200125, 2000.00, '2018-04-26', 'BANCO DO BRASIL'),
('LER E SABER', 200130, 11000.00, '2018-09-26', 'ITAU'),
('PAPELARIA SILVA', 250350, 1500.00, '2018-01-26', 'BRADESCO'),
('LIVROS MM', 250360, 500.00, '2018-12-18', 'SANTANDER'),
('LIVROS MM', 250370, 3400.00, '2018-04-26', 'SANTANDER'),
('PAPELARIA SILVA', 250380, 3500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 453360, 1500.00, '2018-06-15', 'ITAU'),
('LIVROS MM', 453365, 5400.00, '2018-06-15', 'BRADESCO'),
('PAPELARIA SILVA', 453370, 2350.00, '2017-12-27', 'ITAU'),
('LIVROS E CIA', 453380, 1550.00, '2017-12-27', 'BANCO DO BRASIL'),
('ABC PAPELARIA', 980130, 4000.00, '2016-12-11', 'ITAU'),
('LIVRARIA FERNANDES', 770710, 2500.00, '2016-11-15', 'SANTANDER'),
('ABC PAPELARIA', 985001, 3000.00, '2016-09-11', 'ITAU'),
('PAPEL E AFINS', 985002, 2500.00, '2016-03-12', 'SANTANDER'),
('LER E SABER', 888132, 2500.00, '2017-03-05', 'ITAU');

SELECT nome, vencimento, valor FROM duplicata;
SELECT numero FROM duplicata WHERE banco = 'ITAU';
SELECT COUNT(numero) FROM duplicata WHERE banco = 'ITAU';
SELECT numero, vencimento, valor, nome FROM duplicata
WHERE YEAR(vencimento) = 2017;
SELECT numero, vencimento, valor, nome FROM duplicata
WHERE banco NOT IN ('ITAU', 'SANTANDER');
SELECT SUM(valor) AS total_divida, numero FROM duplicata
WHERE nome = 'PAPELARIA SILVA';
DELETE FROM duplicata WHERE numero = 770710;
SELECT * FROM duplicata ORDER BY nome;
SELECT nome, banco, valor, vencimento FROM duplicata ORDER BY vencimento;
UPDATE duplicata SET banco = 'SANTANDER' WHERE banco = 'BANCO DO BRASIL';
SELECT DISTINCT nome FROM duplicata WHERE banco = 'BRADESCO';
SELECT SUM(valor) FROM duplicata
WHERE vencimento BETWEEN '2016-01-01' AND '2016-12-31';
SELECT SUM(valor) FROM duplicata
WHERE vencimento BETWEEN '2016-08-01' AND '2016-08-30';
SELECT * FROM duplicata WHERE nome = 'ABC PAPELARIA';
UPDATE duplicata SET valor = valor * 1.15 
WHERE vencimento BETWEEN '2016-01-01' AND '2016-12-31';
UPDATE duplicata SET valor = valor * 1.05 
WHERE vencimento BETWEEN '2017-01-01' AND '2017-05-31' AND nome = 'LER E SABER';
SELECT AVG(valor) FROM duplicata WHERE YEAR(vencimento) = 2016;
SELECT numero, nome FROM duplicata WHERE valor > 10000.00;
SELECT SUM(valor) FROM duplicata WHERE banco = 'SANTANDER';
SELECT DISTINCT nome FROM duplicata WHERE banco IN ('BRADESCO', 'ITAU');