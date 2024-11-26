CREATE TABLE Test
(
	ID int identity primary key,
	Datum date,
	testspalte int
)

SELECT * FROM Test

-- Datens�tze hinzuf�gen:
-- INSERT - Hinzuf�gen von Datens�tzen in bestehnder Table

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



-- DELETE - L�schen von Datens�tze in einem bestehendem Table
-- TRUNCATE

SELECT * FROM Test

-- L�scht ganze Datens�tze in der Tabelle ohne WHERE
DELETE FROM Test
WHERE ID = 5

DELETE FROM Customers
WHERE CustomerID = 'ALFKI'

-- Ganze Datens�tze verwerfen
TRUNCATE TABLE Test#


-- Transaction
BEGIN TRANSACTION

UPDATE Test
SET testspalte = 500

-- �nderungen �bernehmen wollen
COMMIT
-- �nderungen R�ckg�ngig zu machen
ROLLBACK