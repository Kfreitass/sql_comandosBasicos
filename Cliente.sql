USE controle_vendas;
SHOW TABLES;
DESC tblCliente;
DROP TABLE tblCliente;

-- TABELA CLIENTE **************************************************************

CREATE TABLE tblCliente
(
Id INT PRIMARY KEY auto_increment,
Nome Varchar(20),
Sobrenome VARCHAR(20),
LimiteCredito Decimal(11,2),
FK_tblEndereco INT,
    FOREIGN KEY(FK_tblEndereco) 
        REFERENCES tblEndereco(Id)
        ON DELETE CASCADE
);

SELECT * FROM tblCliente;

-- Inserir dados na coluna
INSERT INTO tblCliente ( Nome, Sobrenome, LimiteCredito, FK_tblEndereco ) 
VALUES  ('Karina','Santos de Freitas', 1.000,5),
		('Fernanda','Pedreira de Freitas', 2.000,6),
		('Juliana', 'dos Santos Freitas', 3.000,7),
        ('Amanda', 'Pedreira de Freitas',4.000,8);
        
 -- Select das tabelas com INNER JOIN *****************************************************************     
 
SELECT  concat(Cliente.Nome,' ', Cliente.Sobrenome) AS NOME,
		Cliente.LimiteCredito,
       -- Bairro.Nome,
        Status.Nome,
        Telefone.Numero,
      -- Endereco.Tipo,
        Endereco.Rua,
        Endereco.Sala,
        Endereco.Cep
FROM tblCliente AS Cliente
	JOIN tblEndereco AS Endereco
		ON Cliente.FK_tblEndereco = Endereco.Id
    JOIN tblStatus AS Status
		ON Cliente.FK_tblStatus = Status.Id
	JOIN tblTelefone AS Telefone
		ON Cliente.FK_tblTelefone = Telefone.Id;
	

-- ***************************************************************************************
-- Alterar o tipo de coluna
ALTER TABLE tblCliente
CHANGE COLUMN tblCliente_LimiteCredito tblCliente_LimiteCredito decimal(9);

ALTER TABLE tblCliente MODIFY tblCliente_LimiteCredito decimal(11,2);
        
-- Inserir nova coluna
ALTER TABLE tblCliente ADD tblCliente_Sobrenome VARCHAR(20);

-- Inserir dados na coluna Sobrenome que foi criada posteriormente a tabela
UPDATE tblCliente SET FK_tblTelefone = 1 WHERE Id = 1;
UPDATE tblCliente SET FK_tblTelefone = 2 WHERE Id = 2;
UPDATE tblCliente SET FK_tblTelefone = 3 WHERE Id = 4;

-- Criar nova coluna
ALTER TABLE tblCliente ADD FK_tblTelefone INT;

-- Inserir a FK
ALTER TABLE tblCliente 
ADD FOREIGN KEY (FK_tblEndereco)
	REFERENCES tblEndereco(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;
    
ALTER TABLE tblCliente 
ADD FOREIGN KEY (FK_tblStatus)
	REFERENCES tblStatus(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;

ALTER TABLE tblCliente 
ADD FOREIGN KEY (FK_tblTelefone)
	REFERENCES tblTelefone(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;
  
