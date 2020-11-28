-- TABELA BAIRRO
CREATE TABLE tblBairro
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(50)
);

SELECT * FROM tblBairro;

ALTER TABLE tblBairro ADD FK_tblCidade INT;

INSERT INTO tblBairro(Nome) 
VALUES  ('Vila Arapua'),
		('São Bernardo'),
        ('Vila Guarani');
        
UPDATE tblBairro SET FK_tblCidade = 1 WHERE Id = 1;
UPDATE tblBairro SET FK_tblCidade = 1 WHERE Id = 2;
UPDATE tblBairro SET FK_tblCidade = 1 WHERE Id = 3;

        
ALTER TABLE tblBairro 
ADD FOREIGN KEY (FK_tblCidade)
	REFERENCES tblCidade(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;
    
SELECT * FROM tblBairro AS Bairro
	JOIN tblCidade AS Cidade
		ON Bairro.FK_tblCidade = Cidade.Id;


