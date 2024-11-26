/*
	
	In SQL: 3 Große Gruppen




	1. Character/String Datentypen:
		char(10) = 'Hallo     ' = 10 Byte Speicherplatz
		varchar(10) = 'Hallo'  = 5 Byte Speicherplatz

		nchar(10) = 1 Character = 2 Byte weil UTF-16
		nvarchar(10) = 1 Character = 2 Byte weil UTF-16

		Legacy: text --> mittlerweile VARCHAR(MAX) = bis zu 2GB
		varchar(8000) & nvarchar(4000)


	2. Numerischen Datentypen
		tinyint = 8 Bit = -255 bis +255
		smallint = 16 Bit = -32k bis +32k
		int = 32 Bit = -2,14Mrd bis + 2,14Mrd
		bigint = 64 Bit = ca. -9.2 Trillionen bis + 9.2 Trillionen

		bit = 1 oder 0 (True = 1, False = 0) => Es gibt kein Bool!

		decimal(x, y) = x Ziffern insgesamt, davon sind y Nachkommastellen
		decimal(10, 2) = 10 Ziffern insgesamt, davon sind 2 Nachkommastellen
		money = ca 9.2 Trillion
		smallmoney =  ca. 214K 

		float(n) = bis 53
		1-24 = 4 Byte
		25-53 = 8 Byte

		real = 4 Byte


	3. Datum/Uhrzeit Datentypen:
		time = hh:mm:ss.nnnnnnn
		date = YYYY-MM-DD
		datetime = date + time in MS = YYYY-MM-DD hh:mm:ss.mmm
		datetime2 = bis Nanosekunden YYYY-MM-DD hh:mm:ss.nnnnnnn
		smalldatetime = präzise bis Sekunden = YYYY-MM-DD hh:mm:ss

*/

-- Typumwandlungsfunktion CAST oder CONVERT
SELECT CAST(Orderdate as date) FROM Orders
SELECT CONVERT(date, OrderDate) FROM Orders