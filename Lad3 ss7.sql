--Lad3 ss7

-- sử dụng cơ sở dữ liệu AdventureWorks2019 
USE AdventureWorks2019
GO

-- lấy toàn bộ dữ liệu trong bảng Person.Person trong cơ sở dữ liệu AdventureWorks2019 
SELECT * FROM Person.Person
GO

-- lấy thông tin từ các cột Title, FirstName, MiddleName, LastName trong bảng Person.Person
SELECT Title, FirstName, MiddleName, LastName FROM Person.Person
GO

-- lấy ra các dữ liệu trong cột FirstName chứa kí tư 'okem" cùng với dữ liệu trong cột LastName vào 1 cột và đoặt tên cột là Person Name 
SELECT FirstName + 'okem' + LastName AS 'Person Name' FROM Person.Person  
GO -- ví dụ này khác với ở trên là có dấu ',' nên sẽ ra nhiều cột, còn ở đây là gộp vào 1 cột

-- lấy ra tất cả dữ liệu trong bảng Person.Address
SELECT * FROM Person.Address
GO

-- lấy ra tất cả các dạng dữ liệu khác nhau trong cột city của bảng Person.Address
SELECT DISTINCT (City) FROM Person.Address -- DISTINCT là câu lệnh lọc ra các dữ liệu khác nhau(tránh bị lặp) 

--lấy ra top 10 trong danh sách dữ liệu của bảng Person.Address
SELECT TOP 10 *FROM Person.Address

-- lấy ra 25% dữ liệu đầu của bảng Person.Address
SELECT top 25 PERCENT *FROM Person.Address

--lấy ra trung bình cộng giá trị cột Rate trong bảng HumanResources.EmployeePayHistory
SELECT AVG(rate) FROM HumanResources.EmployeePayHistory --AVG là trung bình cộng

--lấy ra tổng số hàng trong cột hay là đếm số lượng hàng trong cột NationalIDNumber trong bảng HumanResources.Employee, đặt tên là TilteCount
SELECT COUNT(NationalIDNumber) AS TilteCount FROM HumanResources.Employee -- COUNT là đếm số lượng 


--tạo bạng và nhập dữ liệu 
-- bảng vd1 
CREATE DATABASE SQLss7
GO

USE SQLss7
GO

CREATE TABLE Student
(
	StudNo int Primary Key,
	StudName nvarchar(50) NOT NULL,
	StudAddr nvarchar (50),
	StudPhone bigint,
	BirthDate DateTime
)

INSERT INTO Student values (1, 'Michael John', 'New York', 9145247891,'12-01-1989')
INSERT INTO Student values (2, 'Anna Lombard', 'Alabama', 8942574632,'08-25-1989')
INSERT INTO Student values (3, 'Peter Dawson', 'California', 9165688471,'02-15-1963')
INSERT INTO Student values (4, 'Leonard Thornton', 'New Jersey', 9142563422,'12-20-1991')
INSERT INTO Student values (5, 'Elizabeth Isaac', 'Atlanta', 9149855771,'07-11-1990')

SELECT * FROM Student

ALTER TABLE Student ADD Country nvarchar (20)NULL

UPDATE Student SET Country = 'USA'

GO

-- tạo bảng vidu 2
CREATE TABLE Batch
(
	BatchNo nvarchar(5) ,
	Subject nvarchar (25) ,
	SubjDesc nvarchar (25),
	StartDt DateTime,
	EndDt DateTime,
	Hours int
)

DROP TABLE Batch

INSERT INTO Batch values ('A01', 'Java', 'Database', '01-12-2006', '03-15-2006', 96)
INSERT INTO Batch values ('A02', 'Oracle', 'Forms', '08-25-2006', '11-02-2006', 55)
INSERT INTO Batch values ('A03', 'SQL Server 2005', 'Queries', '05-15-2006', '06-06-2006', 46)
INSERT INTO Batch values ('A04', 'Net', 'WinForms', '06-20-2005' , '08-16-2005', 48)
INSERT INTO Batch values ('A05', 'JSF & Struts', 'CustomControls', '09-07-2005', '10-18-2005', 120)

SELECT * FROM Batch

SELECT DATEDIFF(month, StartDt, EndDt) FROM Batch