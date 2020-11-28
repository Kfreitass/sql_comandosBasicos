DROP TABLE tblStatus;

-- TABELA STATUS  **************************************************************
CREATE TABLE tblStatus 
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(20)
);

-- selecionar a tabela
SELECT * FROM tblStatus;

-- inserir dados
INSERT INTO tblStatus (Nome)
VALUES  ('Bom'),
		('Ruim'),
        ('Otimo');
