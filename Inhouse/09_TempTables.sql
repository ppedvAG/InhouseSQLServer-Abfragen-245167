USE Northwind

-- Temp Table

/*
	
	- SELECT INTO #TableName => Ergebnisse werden in eine Tempor�re Tabelle geschrieben
	- existiert nur in der Query/Session
	- werden in Systemdatenbanken => tempDB => Tempor�re Tabellen angelegt
	- Ergebnisse werden nur einmal generiert --> TempTables sehr schnell aber nicht aktuell
	- mit einem # = lokal
	- mit zwei ## = global

*/

-- Erstellen
SELECT * INTO ##TempTable
FROM Customers WHERE Country = 'Germany'

SELECT * FROM ##TempTable

-- Tabelle verwerfen
DROP TABLE ##TempTable