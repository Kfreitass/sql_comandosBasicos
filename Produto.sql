-- TABELA PRODUTO  **************************************************************
CREATE TABLE tblProduto 
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(30),
Preco DECIMAL(9),
Qtd INT
);

-- selecionar a tabela
SELECT * FROM tblProduto;

-- drop tabela
DROP TABLE tblProduto;

-- inserir dados
INSERT INTO tblProduto (Nome, Preco, Qtd)
VALUES  ('Confort', 5000.00, 10),
		('lavanda', 1000.00,10),
		('Bombril', 15000.00,10),
		('Omo', 15000.00,10),
        ('Tesco', 10000.00,10);

ALTER TABLE tblProduto ADD COLUMN FK_tblCategoria INT;

ALTER TABLE tblProduto 
ADD FOREIGN KEY (FK_tblCategoria)
	REFERENCES tblCategoria(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;
    
UPDATE tblProduto SET FK_tblCategoria = 1 WHERE Id=1;
UPDATE tblProduto SET FK_tblCategoria = 2 WHERE Id=2;
UPDATE tblProduto SET FK_tblCategoria = 3 WHERE Id=3;
UPDATE tblProduto SET FK_tblCategoria = 1 WHERE Id=4;
UPDATE tblProduto SET FK_tblCategoria = 1 WHERE Id=5;

SELECT Produto.Nome AS 'Nome do Produto',
		Produto.Preco AS 'Preço',
        Produto.Qtd,
        Categoria.Nome 'Categoria'
FROM tblProduto AS Produto
	JOIN tblCategoria AS Categoria
		ON Produto.FK_tblCategoria = Categoria.Id;
