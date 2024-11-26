USE Northwind

-- WHERE: filtert Ergebniszeilen

SELECT * FROM Customers
WHERE Country = 'Germany'

-- Funktioniert
SELECT * FROM Customers
WHERE Country = 'Germany '

-- = wird nach exakten Treffern gefiltert
SELECT * FROM Customers
WHERE Country = ' Germany'

SELECT * FROM Orders
WHERE Freight = 100

SELECT * FROM Orders
WHERE Freight > 100

-- Alle Länder die nicht Germany sind
SELECT * FROM Customers
WHERE Country != 'Germany'

SELECT * FROM Customers
WHERE Country <> 'Germany'

-- alle boolschen Vergleichsoperatoren
-- (>, <, >=, <=, != bzw <>)

-- Kombinieren von WHERE ausdrücken mit AND und OR
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin'

SELECT * FROM Customers
WHERE Country = 'Germany' OR City = 'Berlin'

-- AND = Beide Bedingungen müssen wahr sein
-- OR = Eine der beiden Bedingungen muss wahr sein
-- Können wir beliebig oft kombinieren

SELECT * FROM Customers
WHERE (City = 'Paris' OR City = 'Mannheim') AND Country = 'Germany'
-- And "ist stärker bindent" als Or; Notfalls klammern setzen!

SELECT * FROM Orders
WHERE Freight >= 100 AND Freight <= 500

-- Alternativ mit BETWEEN, Randwerte mit inbegriffen
SELECT * FROM Orders
WHERE Freight between 100 AND 500

SELECT * FROM Customers
WHERE Country = 'Brazil' OR Country = 'Germany' OR Country = 'France' OR Country = 'Austria'

-- Alternativ mit IN (Wert1, Wert2, Wert3)
SELECT * FROM Customers
WHERE Country IN ('Brazil', 'Germany', 'France', 'Austria')
-- IN verbindet mehrere OR Bedingungen, die sich auf die selbe Spalte beziehen

-- Übungen:

-- 1. Alle ContactNames die als Title "Owner" haben
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle = 'Owner'

-- 2. Alle Order Details die ProductID 43 bestellt haben
SELECT * FROM [Order Details]
WHERE ProductID = 43

-- 3. Alle Kunden aus Paris, Berlin, Madrid und Brazilien
SELECT * FROM Customers
WHERE City IN ('Paris', 'Berlin', 'Madrid') OR Country = 'Brazil'
