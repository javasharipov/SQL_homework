create database class_2

create table Employees (EmpID int , Name varchar(50) , Salary decimal(10 ,2))

insert into Employees (EmpID , Name , Salary) values(1 , 'John' , 1950)
insert into Employees (EmpID , Name , Salary) values(2 , 'Mike' , 1800.30) , (3 , 'Jackson' , 1450.59)
	
update Employees 
set Salary  = 7000
where EmpID = 1

delete Employees 
where EmpID = 2

-- DELETE: Removes specific rows from a table using WHERE clause. Can be rolled back. Triggers are fired.

-- TRUNCATE: Removes all rows from a table. Faster than DELETE. Cannot use WHERE. Resets IDENTITY. Cannot be rolled back if not in a transaction.

-- DROP: Deletes the entire table structure and data. Cannot be rolled back.

alter table Employees  
alter column name varchar(100)

alter table Employees 
add Department varchar(50)

select * from Employees

alter table Employees
alter column salary float
	
create table Departments(DepartmentID int  primary key , DepartmentName varchar(50))

truncate table Employees

insert into Departments
select 1 , 'HR' 
union all  
select 2 , 'Media'
union all 
select 3 , 'Finance'
union all 
select 4 , 'Managing'
union all
select 5 , 'Support'

select * from Employees

update Employees
set Department = 'Management'
where Salary > 5000

truncate table Employees

EXEC sp_rename 'Employees' , 'StaffMembers'

drop table Departments

create table Products(ProductID Int Primary Key , ProductName varchar(50) , Category varchar(50) , Price decimal(10,2) check (price > 0) )

alter table Products
add StockQuantity int default 50

EXEC sp_rename 'Products.Category' , 'ProductCategory' , 'Column'

insert into Products(ProductID , ProductName ,   ProductCategory , Price ) 
values(1 , 'Bike' , 'Sport' , 2000) , 
(2 , 'Skate' , 'Sport' , 2500) , 
(3 , 'Refrigirator' , 'Home-applices' , 4000),
(4 , 'Air-Conditioner' , 'Home-applices' , 3800 ),
(5 , 'Laptop' , 'Education' , 3000)

select * into Products_Backup from Products


EXEC sp_rename 'Products' , 'Inventory'  

alter table Inventory 
alter column Price float	
