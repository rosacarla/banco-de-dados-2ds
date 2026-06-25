-- Ativa o suporte a chaves estrangeiras no SQLite
PRAGMA foreign_keys = ON;

CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente VARCHAR(100),
    emailCliente VARCHAR(100)
);

CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(100),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

SELECT * FROM Clientes; 
SELECT * FROM Compras; 

-- Ativa as chaves estrangeiras
PRAGMA foreign_keys = ON;

-- Insere dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES 
(1, 'Carlos Silva', 'carlos@email.com'),
(2, 'Ana Souza', 'ana@email.com'),
(3, 'Mariana Costa', 'mariana@email.com');

-- Insere dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES 
(101, 1, 'O Hobbit'),
(102, 1, '1984'),
(103, 2, 'Dom Casmurro'),
(104, 3, 'O Alquimista');

SELECT * FROM Clientes; 
SELECT * FROM Compras; 
