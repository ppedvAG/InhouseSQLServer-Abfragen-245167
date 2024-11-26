USE Northwind

-- Temp Table

/*
	
	- SELECT INTO #TableName => Ergebnisse werden in eine Temporäre Tabelle geschrieben
	- existiert nur in der Query/Session
	- werden in Systemdatenbanken => tempDB => Temporäre Tabellen angelegt
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