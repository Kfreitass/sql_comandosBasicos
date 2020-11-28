-- TABELA PEDIDO  **************************************************************
CREATE TABLE tblPedido 
(
id INT PRIMARY KEY auto_increment,
Data Date,
Total DECIMAL(9)
);

DROP TABLE tblPedido;

-- selecionar a tabela
SELECT * FROM tblPedido;

-- Inserir coluna de FK
ALTER TABLE tblPedido ADD FK_tblCliente INT;
ALTER TABLE tblPedido ADD Qtd INT;
ALTER TABLE tblPedido ADD FK_tblProduto INT;

-- Criar FK
ALTER TABLE tblPedido 
ADD FOREIGN KEY (FK_tblProduto)
	REFERENCES tblProduto(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;
    
ALTER TABLE tblPedido 
ADD FOREIGN KEY (FK_tblCliente)
	REFERENCES tblCliente(Id)
	ON DELETE CASCADE
	ON UPDATE RESTRICT;

-- inserir dados
INSERT INTO tblPedido (Data,Total,FK_tblCliente)
VALUES  ('2018-05-28', 1000.00,6),
		('2020-05-28', 15000.00,7),
        ('2019-05-28', 10000.00,5);
        
SELECT * FROM tblPedido;

UPDATE tblPedido SET FK_tblProduto = 1 WHERE Id = 5;
UPDATE tblPedido SET FK_tblProduto = 3 WHERE Id = 6;
UPDATE tblPedido SET FK_tblProduto = 4 WHERE Id = 7;
UPDATE tblPedido SET FK_tblProduto = 5 WHERE Id = 8;

-- Inner Join
SELECT  Pedido.Id AS 'Numero',
		Pedido.Data,
		Concat(Cliente.Nome,' ', Cliente.Sobrenome) AS 'Cliente',
		-- Logradouro AS 'Logradouro',
        Endereco.Rua AS 'Endereço',
        Endereco.Sala AS 'Sala',
        Endereco.Cep AS 'Cep',
        Bairro.Nome AS 'Bairro',
        Produto.Nome AS 'Produto',
        Cidade.Nome AS 'Cidade',
        Produto.Preco AS 'Preço',
		Pedido.Qtd,
		Pedido.Total
FROM tblPedido AS Pedido
	JOIN tblCliente AS Cliente
		ON Pedido.FK_tblCliente = Cliente.Id
	JOIN tblProduto AS Produto
		ON Pedido.FK_tblProduto = Produto.Id
	JOIN tblEndereco AS Endereco
		ON Cliente.FK_tblEndereco = Endereco.Id
	JOIN tblBairro AS Bairro
		ON Endereco.FK_tblBairro = Bairro.Id
	JOIN tblCidade AS Cidade
		ON Bairro.FK_tblCidade = Cidade.Id;

-- Somar pedido
SELECT  Pedido.Id AS 'Numero do Pedido',
		Pedido.Data,
		Concat(Cliente.Nome,' ', Cliente.Sobrenome) AS 'Cliente',
        Produto.Preco AS 'Preço',
		Pedido.Qtd,
        (Produto.Preco * Pedido.Qtd) AS Total
	-- Pedido.Total(
FROM tblPedido AS Pedido
	JOIN tblCliente AS Cliente
		ON Pedido.FK_tblCliente = Cliente.Id
	JOIN tblProduto AS Produto
		ON Pedido.FK_tblProduto = Produto.Id        



        

