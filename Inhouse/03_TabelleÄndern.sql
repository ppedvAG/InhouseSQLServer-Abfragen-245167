CREATE TABLE Test
(
	ID int identity primary key,
	Datum date,
	testspalte int
)

SELECT * FROM Test

-- Datensätze hinzufügen:
-- INSERT - Hinzufügen von Datensätzen in bestehnder Table

-- 1.
-- Alle Spalten befuellen
INSERT INTO Test
VALUES('01.01.2000', 5)

-- 2.
-- Explizit Spalten befuellen
INSERT INTO Test (Datum, testspalte)
VALUES ('01.01.2000', 5)

-- 3.
-- Ergebnis einer SELECT Abfrage inserten
-- (Wenn Spaltenanzahl passt & Datentypen kompatibel sind)
INSERT INTO Test
SELECT '01.01.2000', 23



-- DELETE - Löschen von Datensätze in einem bestehendem Table
-- TRUNCATE

SELECT * FROM Test

-- Löscht ganze Datensätze in der Tabelle ohne WHERE
DELETE FROM Test
WHERE ID = 5

DELETE FROM Customers
WHERE CustomerID = 'ALFKI'

-- Ganze Datensätze verwerfen
TRUNCATE TABLE Test#


-- Transaction
BEGIN TRANSACTION

UPDATE Test
SET testspalte = 500

-- Änderungen übernehmen wollen
COMMIT
-- Änderungen Rückgängig zu machen
ROLLBACK