
USE Northwind

-- Update = �ndern von Spaltenwerten in vorhandenen Datens�tzen

SELECT * FROM Customers
WHERE CustomerID = 'ALFKI'

-- �ndern von Wert Berlin in M�nchen beim ALFKI
UPDATE Customers
SET City = 'M�nchen'
WHERE CustomerID = 'ALFKI'

-- "Loeschen" von Wert: SET = NULL
UPDATE Customers
SET City = NULL
WHERE CustomerID = 'ALFKI'