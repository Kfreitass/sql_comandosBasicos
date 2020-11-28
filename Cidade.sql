-- TABELA CIDADE  **************************************************************
CREATE TABLE tblCidade 
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(50)
);

DROP TABLE tblCidade;

-- selecionar tabela
SELECT * FROM tblCidade;

-- inserir dados
INSERT INTO tblCidade (Nome)
VALUES  ('São Paulo'),
		('Rio de Janeiro');
