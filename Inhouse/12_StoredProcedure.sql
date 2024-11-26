USE Northwind
GO

-- Gespeicherte Prozeduren

/*
	
	- Sind gespeicherte SQL Anweisungen (nicht nur das Select, sondern)
	- Arbeiten mit Variablen
	- Praktisch von automatisierenden Code
	- Prozeduren immer wieder den selben Abfrageplan verwenden

*/

CREATE PROCEDURE spRechnungsByOrderID @OrderID INT
AS
SELECT * FROM Orders
WHERE OrderID = @OrderID

EXEC spRechnungsByOrderID 10250

/*

	CREATE PROCEDURE KontakteLöschen @Kontakte INT, @UeberallKontakte INT
	AS
	DELETE FROM KontaktTabelle
	WHERE Kontakte = @Kontakte (ID = 10)
	DELETE FROM UeberallKontakte
	WHERE KontaktID = @UeberallKontakte (ID = 10)


*/
GO
CREATE PROCEDURE spNewCustomerNeu
@CustomerID char(5), @CompanyName varchar(40),
@Country varchar(30), @City varchar(30)
AS 
Insert Into Customers (CustomerID, CompanyName, Country, City)
VALUES (@CustomerID, @CompanyName, @Country, @City)

EXEC spNewCustomerNeu ALDIS, PPEDVAG, Germany, Burghausen

select * FROM Customers


GO
--Default werte
CREATE PROCEDURE spNewCustomerNeuDefault
@CustomerID char(5) = 'PPEDV', @CompanyName varchar(40) = 'Test Firma',
@Country varchar(30) = NULL, @City varchar(30) = NULL
AS 
Insert Into Customers (CustomerID, CompanyName, Country, City)
VALUES (@CustomerID, @CompanyName, @Country, @City)

EXEC spNewCustomerNeuDefault '00005', NETSCAD, Germany, Freilassing

INSERT INTO ....
select * FROM Customers

--CREATE PROCEDURE OrganisationID @OID INT
--AS
--INSERT INTO Organisation
--WHERE OrganisationID = @OID
--INSERT INTO Organisation2
--WHERE OrganisationID = @OID
--INSERT INTO Organisation3
--WHERE OrganisationID = @OID
--INSERT INTO Organisation4
--WHERE OrganisationID = @OID
