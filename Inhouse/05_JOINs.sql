USE Northwind

/*
	Inner Join:
	=> Wenn du nur übereinstimmende Daten aus beiden Tabellen brauchst

	Left Outer Join:
	=> Wenn du alle Daten aus der linken Tabelle brauhcst (inkl. nicht übereinstimmende).

	Right Outer Join:
	=> Wenn du alle Daten aus der Rechten Tabellen brauchst (inkl. nicht übereinstimmende)

	Full Outer Join:
	=> Wenn alle Daten aus beiden Tabellen brauchst, egal ob sie übereinstimmen

*/

-- Verknüpfung zwischen Orders - Customers

/*
	JOIN Syntax:
	SELECT * FROM Tabelle A
	INNER JOIN Tabelle B ON A.KeySpalte = B.KeySpalte

*/

SELECT * FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID = 'ALFKI'

-- Übung: Verknüpfung zwischen Orders & [Order Details]
SELECT * FROM Orders
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID

SELECT * FROM Orders as o
INNER JOIN [Order Details] as od ON o.OrderID = od.OrderID

-- Joins machen zwischen Orders - Customers - Order Details
SELECT * FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID


-- Übungen:
-- 1. Welche Produkte (ProductName) hat "Leverling" bisher verkauft?
-- Tabellen: Employees - Orders - [Order Details] - Products
SELECT * FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = [Order Details].ProductID
WHERE Employees.LastName = 'Leverling'

-- OUTER JOINs
-- Z.189, 502
SELECT * FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

SELECT * FROM Orders 
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

SELECT * FROM Customers
LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID

-- FULL OUTER JOIN
SELECT * FROM Orders
FULL OUTER JOIN Customers ON Customers.CustomerID = Orders.CustomerID


-- FULL OUTER JOIN (invertieren)
SELECT * FROM Orders
FULL OUTER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL OR Customers.CustomerID IS NULL

-- CROSS JOIN: Erstellt ein karthesisches Produkt zweier Tabellen (A x B)
-- (91 x 830)
SELECT * FROM Orders CROSS JOIN Customers

-- Self Join
SELECT E1.EmployeeID, E1.LastName as Vorgesetzter, E2.EmployeeID, E2.LastName as Angestellter 
FROM Employees as E1
JOIN Employees as E2 ON E1.EmployeeID = E2.ReportsTo



-- 2. Wieviele Bestellungen haben Kunden aus Argentinien (Argentina)  aufgegeben? 
-- Tabellen: Customers - Orders
SELECT Customers.Country, Orders.* FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Country = 'Argentina'