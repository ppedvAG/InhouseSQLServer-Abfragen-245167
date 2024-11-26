
USE Northwind

-- Update = Ändern von Spaltenwerten in vorhandenen Datensätzen

SELECT * FROM Customers
WHERE CustomerID = 'ALFKI'

-- Ändern von Wert Berlin in München beim ALFKI
UPDATE Customers
SET City = 'München'
WHERE CustomerID = 'ALFKI'

-- "Loeschen" von Wert: SET = NULL
UPDATE Customers
SET City = NULL
WHERE CustomerID = 'ALFKI'