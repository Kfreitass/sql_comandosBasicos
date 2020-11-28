-- TABELA CATEGORIA  **************************************************************
CREATE TABLE tblCategoria
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(30)
);

SELECT * FROM tblCategoria;

DROP TABLE tblCategoria;

INSERT INTO tblCategoria (Nome) 
VALUES  ('Sabão em pó'),
		('Sabonete'),
        ('Detergente');
        
