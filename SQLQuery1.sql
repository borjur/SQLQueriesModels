CREATE TABLE Person
(	person_ID 	int NOT NULL,
	firstName	varchar(70) NOT NULL,
	lastName	varchar(50) NOT NULL,
	gender		varchar(50) NOT NULL
)
ALTER TABLE Person	ADD CONSTRAINT PK_PurpleBox_Person PRIMARY KEY CLUSTERED (person_ID);
INSERT INTO Person values(1,'jenny','mccain','female')

CREATE TABLE PersonAudit
(	ID 	int NOT NULL,
	auditData	varchar(70) NOT NULL
	
)

USE PurpleBoxDVD_MW;
GO
CREATE TRIGGER Person_ForInsert 
ON PERSON
FOR INSERT
AS
BEGIN
DECLARE @NumOfRentals INT

SET @NumOfRentals = (SELECT COUNT(*) FROM Rental WHERE rental_ID >=10)

if @NumOfRentals < 10
   PRINT 'There are not enough movie rentals in the database'
ELSE IF @NumOfRentals > 10
SELECT isPremium FROM UserAccount WHERE isPremium = 1
ELSE
PRINT 'nothing found'
END





