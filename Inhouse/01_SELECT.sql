USE Northwind
-- Alternativ über die GUI im Drop-Down Menü

-- einzeiliger Kommentar

/*

	Mehrzeiligen
	Kommentarblock

*/

/*
	SELECT: wählt Spalten aus, die im
	Ergebnisfenster angezeigt werden sollen
*/

SELECT * FROM Customers -- alle Spalten der angesprochene Tabelle 

-- Kommentieren [STRG + K] [STRG + C]
-- Auskommentieren [STRG + K] [STRG + U]

SELECT 100, 'Hallo', 500

SELECT 5*8, 7*3, 10*5

-- CompanyName, Country
SELECT CompanyName, Country FROM Customers


SELECT CompanyName, Country FROM Customers

-- SQL nicht CASE-Sensitive

sElEcT				CoUntrY,

				cOmpANyNamE

						fROm
cUstOmers

SELECT CompanyName as Unternehmen FROM Customers