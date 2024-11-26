USE Northwind

-- String Funktionen bzw. Text-Manipulieren

-- LEN gibt die laenge des Strings zurück als INT wert
SELECT CompanyName, LEN(CompanyName) FROM Customers

-- LEFT/RIGHT geben die "linken" oder "rechten" x Zeichen zurück
SELECT CompanyName, LEFT(CompanyName, 5) FROM Customers
SELECT CompanyName, Right(CompanyName, 5) FROM Customers

-- SUBSTRING(Spalte, x, y) springt zu Position x in einem String und gibt uns y Zeichen zurück
SELECT SUBSTRING(CompanyName, 5, 5), CompanyName FROM Customers

-- CONCAT fügt mehrere Strings in die selbe Spalte zusammen
SELECT CONCAT(FirstName, ' ', LastName) as GanzerName FROM Employees
SELECT FirstName + ' ' + LastName FROM Employees

-- ISNULL prüft auf Null Werte und ersetze diese wenn gewünscht
SELECT ISNULL(Fax, 'Nicht vorhanden!'), Fax FROM Customers

SELECT TOP 5 Freight,
	FORMAT(Freight, 'C', 'de-de')
FROM Orders

-- TRANSLATE(inputString, chars, replace) = 2*(3+4)/(7-2)
SELECT TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()')