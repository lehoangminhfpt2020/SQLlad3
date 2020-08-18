CREATE DATABASE BTSS7SQL
GO

USE BTSS7SQL
GO

CREATE TABLE Structure
(
	AircraftCode NVARCHAR(10),
	FType NVARCHAR(10),
	Source NVARCHAR(20),
	Destination NVARCHAR(20),
	Deptime DATETIME,
	JourneyHrs INT
)
GO



INSERT INTO dbo.Structure VALUES ('UA01','Boeing','Los Angeles','London',15.30,6)
INSERT INTO dbo.Structure VALUES ('UA02','Boeing','California','New York',09.30,8)
INSERT INTO dbo.Structure VALUES ('SA01','Boeing','Istanbul','Ankara',10.45,8)
INSERT INTO dbo.Structure VALUES ('SA02','Airbus','London','Moscow',11.15,9)
INSERT INTO dbo.Structure VALUES ('SQ01','Airbus','Sydney','Ankara',01.45,15)
INSERT INTO dbo.Structure VALUES ('SQ02','Boeing','Perth','Aden',13.30,10)
INSERT INTO dbo.Structure VALUES ('SQ03','Airbus','San Francisco','Nairobi',15.45,15)

--Display all the record from the flights table
SELECT * FROM Structure

--Display AircraftCode, Source, Destination and DepTime from the Flights table
SELECT AircraftCode, Source, Destination, DepTime FROM Structure

--Insert a record containing the same details as the first record.
INSERT INTO dbo.Structure VALUES ('UA01','Boeing','Los Angeles','London',15.30,6)
INSERT INTO dbo.Structure VALUES ('UA02','Boeing','California','New York',09.30,8)
INSERT INTO dbo.Structure VALUES ('SA01','Boeing','Istanbul','Ankara',10.45,8)
INSERT INTO dbo.Structure VALUES ('SA02','Airbus','London','Moscow',11.15,9)
INSERT INTO dbo.Structure VALUES ('SQ01','Airbus','Sydney','Ankara',01.45,15)
INSERT INTO dbo.Structure VALUES ('SQ02','Boeing','Perth','Aden',13.30,10)
INSERT INTO dbo.Structure VALUES ('SQ03','Airbus','San Francisco','Nairobi',15.45,15)

--Display the top 65 percent records from the Flights table
SELECT TOP 65 PERCENT * FROM Structure

--Display the first two records from the Flights table.
SELECT TOP 2 * FROM Structure

--Display the total number of flights from the Flights table
SELECT COUNT(AircraftCode) FROM Structure

--If the cost of traveling per hour is $150, then calculate the price for each flight
--and display the flight details along with the price from the Flights table

SELECT AircraftCode,JourneyHrs*150 AS Money_Dollar  FROM Structure