USE Northwind

-- String Funktionen bzw. Text-Manipulieren

-- LEN gibt die laenge des Strings zur�ck als INT wert
SELECT CompanyName, LEN(CompanyName) FROM Customers

-- LEFT/RIGHT geben die "linken" oder "rechten" x Zeichen zur�ck
SELECT CompanyName, LEFT(CompanyName, 5) FROM Customers
SELECT CompanyName, Right(CompanyName, 5) FROM Customers

-- SUBSTRING(Spalte, x, y) springt zu Position x in einem String und gibt uns y Zeichen zur�ck
SELECT SUBSTRING(CompanyName, 5, 5), CompanyName FROM Customers

-- CONCAT f�gt mehrere Strings in die selbe Spalte zusammen
SELECT CONCAT(FirstName, ' ', LastName) as GanzerName FROM Employees
SELECT FirstName + ' ' + LastName FROM Employees

-- ISNULL pr�ft auf Null Werte und ersetze diese wenn gew�nscht
SELECT ISNULL(Fax, 'Nicht vorhanden!'), Fax FROM Customers

SELECT TOP 5 Freight,
	FORMAT(Freight, 'C', 'de-de')
FROM Orders

-- TRANSLATE(inputString, chars, replace) = 2*(3+4)/(7-2)
SELECT TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()')