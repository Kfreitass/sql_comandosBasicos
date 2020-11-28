CREATE TABLE tblTipoEndereco 
(
Id INT PRIMARY KEY auto_increment,
Tipo VARCHAR(50)
);

DROP TABLE FK_tblTipoEndereco;

-- selecionar tabela
SELECT * FROM tblTipoEndereco;

-- Inserir dados na tabela
INSERT INTO tblTipoEndereco (Tipo)
VALUES  ('Rua'),
		('Rodovia'),
        ('Vila');
        



        
