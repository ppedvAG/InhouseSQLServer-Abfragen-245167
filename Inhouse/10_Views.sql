USE Northwind

/*
	Vorteile:
	 - Komplexere Abfragen reinspeichern
	 - Sicherheitsaspekt: User erlauben nur die View zu lesen, aber nicht zu verändern
	 - Views sind immer aktuell (aktuelle Daten)
		=> beim Aufruf einer View wird das hinterlegte Statement ausgeführt
*/


CREATE VIEW vRechnungsDaten AS
SELECT
Orders.OrderID, 
Customers.CustomerID, Customers.CompanyName, Customers.Country, 
Customers.City, Customers.PostalCode, Customers.Address,
Orders.Freight, Orders.OrderDate,
Employees.LastName,
CAST(SUM((UnitPrice * Quantity) * (1 - Discount)) + Freight as decimal(10,2)) as SummeBestPosi 
FROM [Order Details]
JOIN Orders ON Orders.OrderID = [Order Details].OrderID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.OrderID, 
Customers.CustomerID, Customers.CompanyName, Customers.Country, Customers.City, Customers.PostalCode, 
Customers.Address,
Orders.Freight, Orders.OrderDate,
Employees.LastName
GO

-- Aufrufen einer View
SELECT * FROM vRechnungsDaten

-- View löschen
DROP VIEW vRechnungsDaten

-- View ändern:
ALTER VIEW vRechnungsDaten AS
SELECT
Orders.OrderID, 
Customers.CustomerID, Customers.CompanyName, Customers.Country, 
Customers.City, Customers.PostalCode, Customers.Address,
Orders.Freight, Orders.OrderDate,
Employees.LastName,
CAST(SUM((UnitPrice * Quantity) * (1 - Discount)) + Freight as decimal(10,2)) as SummeBestPosi 
FROM [Order Details]
JOIN Orders ON Orders.OrderID = [Order Details].OrderID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.OrderID, 
Customers.CustomerID, Customers.CompanyName, Customers.Country, Customers.City, Customers.PostalCode, 
Customers.Address,
Orders.Freight, Orders.OrderDate,
Employees.LastName
GO

-- Code hinter einer View (oder anderem DB Objekt) ansehen über Objekt Explorer
-- Rechtsklick -> SCRIPT AS -> CREATE -> neues Abfragefenster