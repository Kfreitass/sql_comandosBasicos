-- TABELA TELEFONE
CREATE TABLE tblTelefone 
(
Id INT PRIMARY KEY auto_increment,
Numero Varchar(11)
);

UPDATE tblTelefone SET FK_tblTelefone = 1 WHERE Id = 1;

SELECT * FROM tblTelefone;

DROP TABLE tblTelefone;

INSERT INTO tblTelefone (Numero) 
VALUES  ('941280684'),
		('947524106'),
        ('947589169');

UPDATE tblTelefone SET Numero = 947589169 WHERE Id = 3;

-- Criar FK
ALTER TABLE

