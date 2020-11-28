-- TABELA UF **************************************************************
CREATE TABLE tblUF 
(
tblUF_Id INT PRIMARY KEY auto_increment ,
tblUF_Nome Char(2)
);

-- selecione a tabela
SELECT * FROM tblUF;

-- inserir  dados na tabela
INSERT INTO tblUF (tblUF_Nome) 
VALUES  ('SP'),
		('RJ'),
        ('SP'),
        ('RS'),
        ('SP');
