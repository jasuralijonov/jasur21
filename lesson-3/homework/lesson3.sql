--Easy-Level Tasks (10)

--Define and explain the purpose of BULK INSERT in SQL Server.
CREATE TABLE Customers (
customer_id INT,
cust_name VARCHAR(50),
city VARCHAR(50),
grade INT,
salesman_id INT
)
Bulk insert [dbo].[Customers] 
from 'C:\Users\User\Documents\MAAB academy\Customers.csv'
with (firstrow = 2,
rowterminator = '\n',
fieldterminator = ',' )
Select * from Customers

--List four file formats that can be imported into SQL Server.
--CSV (Comma-Separated Values)
--TXT (Text File)
--Excel (XLS, XLSX)
--XML (Extensible Markup Language)

--Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2))
Create table Products 
(ProductID int primary key,
ProductName varchar(50), 
Price decimal(10,2))
Select * from Products

--Insert three records into the Products table using INSERT INTO.
INsert into Products (ProductID, ProductName, Price) values
(1, 'Car', 500),
(2, 'Bike', 250), 
(3, 'Air Plane', 1000)
Select * from Products

--Explain the difference between NULL and NOT NULL with examples.
--NULL - Absence of value or unknown value 
--NOT NULL - There is always a value or cannot be left over without value 

--Add a UNIQUE constraint to the ProductName column in the Products table.
Alter table Products 
Add Constraint myunique Unique (ProductName)
Select * from Products

--Write a comment in a SQL query explaining its purpose.
--UNIQUE constraint will prevent having duplicates 

--Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
Create table Categories 
(CategoryID int primary key, CategoryName varchar(50) Unique) 
Select * from Categories

--An Identity column in SQL Server is a column in a table that automatically generates a unique numeric value for each new row. It is commonly used for creating auto-incrementing primary keys, where the database automatically assigns a unique value to the column whenever a new record is inserted.

--Medium-Level Tasks (10)

--Use BULK INSERT to import data from a text file into the Products table.
Truncate table Products 
Select * from Products
Bulk insert [dbo].[Products]
from 'C:\Users\User\Documents\MAAB academy\Book1.csv'
with (firstrow = 2,
rowterminator = '\n',
fieldterminator = ',' )
Select * from Products

--Create a FOREIGN KEY in the Products table that references the Categories table.
Alter table Products 
Add Constraint Products_Categories Foreign key(ProductID)
References Categories (CategoryID)

--Add a CHECK constraint to the Products table ensuring Price > 0.
Alter Table Products 
Add Constraint check_1 
Check (Price>0)
Select * from Products

--Modify the Products table to add a column Stock (INT, NOT NULL).
Drop table Products
Create table Products 
(ProductID int primary key,
ProductName varchar(50), 
Price decimal(10,2),
Stock int not null)
Select * from Products

--Use the ISNULL function to replace NULL values in a column with a default value.
Insert into Categories
(CategoryID, CategoryName) values (1, ISNULL(Null, 0))

--Hard-Level Tasks (10)
--Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18
Create table Customerrs
(CustomerID int primary key, 
CustomerName varchar (50),
Age int) 
Alter table Customerrs 
Add constraint age_limt check (Age>=18)
select * from Customerrs

--Create a table with an IDENTITY column starting at 100 and incrementing by 10.
Create table Identitydemo 
(ID int identity (100, 10), 
Name varchar(50)) 
select * from Identitydemo

--Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
Create table OrderDetails 
(ID int,
Weight int,
Price int, 
Primary Key (ID, Weight))  
Select * from OrderDetails

--Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
Create table Employees 
(EmployeeID int primary key,
Email int unique) 
