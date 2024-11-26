USE Northwind
GO

-- CASE - unterscheidung von definierten Fällen in der Ausgabe

SELECT * FROM Products

SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 20 THEN 'Wir brauchen neuen Lagerbestand'
	WHEN UnitsInStock > 20 THEN 'Wir haben genug auf Lager!'
	ELSE 'Fehler! Wert konnte nicht bestimmt werden!'
END as Lagerbestand
FROM Products

BEGIN TRANSACTION
UPDATE Customers
SET City = 
CASE
	WHEN Country = 'Germany' THEN 'Berlin'
	WHEN Country = 'France' THEN 'Paris'
	ELSE City
END
GO
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Paris'
GO
-- Nach einem Rollback oder Commit ist die Transaction automatisch geschlossen
ROLLBACK
GO

COMMIT
GO