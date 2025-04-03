--Basic-Level Tasks (10)
Create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))
Insert into Employees (EmpID, Name, Salary) values (1, 'Jasur', 6000)
Insert into Employees (EmpID, Name, Salary) values (2, 'Ali', 7000), (3, 'Sardor', 4500)
Delete from Employees where EmpID=2
Truncate table Employees
Insert into Employees (EmpID, Name, Salary) values (1, 'Jasur', 6000)
Insert into Employees (EmpID, Name, Salary) values (2, 'Ali', 7000), (3, 'Sardor', 4500)
Drop table Employees
Create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))
Insert into Employees (EmpID, Name, Salary) values (1, 'Jasur', 6000)
Insert into Employees (EmpID, Name, Salary) values (2, 'Ali', 7000), (3, 'Sardor', 4500)
Alter table Employees Alter Column Name Varchar(100)
Alter Table Employees Add Department varchar(50)
Alter table Employees Alter Column Salary float
Create table Departments (DepartmentID int primary key, DepartmentName varchar(50))
Truncate table Employees
select * from Departments
select * from Employees

--Intermediate-Level Tasks (6)
 Insert into Departments (DepartmentID, DepartmentName) select EmpID, Name from Employees
 Update Employees set Department = 'Management' where Salary>5000
 Delete from Employees
 Alter table Employees drop column Department
 exec sp_rename 'Employees', 'StaffMembers'
 select * from StaffMembers
 Drop table Departments

 -- Advanced-Level Tasks (9)
 Create table Products (ProductID int primary key, ProductName varchar (50), Category varchar (50), Price decimal(10,2), Region varchar(50))
 Alter table Products
 Add Constraint check_constraint
 Check (Price>0) 
 Alter table Products 
 Add StockQuantity int 
 Default 50
Exec sp_rename 'Products.Category', 'CategoryName', 'COLUMN'
Insert into Products (ProductID, ProductName, CategoryName, Price, Region) values (1, 'watch', 'luxury', $350, 'Japan')
Insert into Products (ProductID, ProductName, CategoryName, Price, Region)
values (2, 'sneakers', 'middle', $150, 'Usa'),
(3, 'balls', 'low-class', $150, 'UK'), (4, 'parfume', 'luxury', $1000, 'UAE'), (5, 'T-shirt', 'luxury', $650, 'UZB') 
Select * into Products_Backup
from Products
exec sp_rename 'Products', 'Inventory'
select * from Products_Backup
 select * from Inventory 
