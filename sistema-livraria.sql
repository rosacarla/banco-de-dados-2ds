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
