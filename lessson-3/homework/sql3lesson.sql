-- BULK INSERT is a T-SQL command used to import large amounts of data 
-- from a data file (like .csv or .txt) directly into a SQL Server table.
-- It is much faster and more efficient than inserting rows one by one.

-- Four file formats that can be imported into SQL Server:

-- 1. CSV (Comma-Separated Values) - Most commonly used for tabular data.
-- 2. TXT (Plain Text File) - Often used with custom delimiters.
-- 3. XML (eXtensible Markup Language) - Structured data import using XML parsing.
-- 4. JSON (JavaScript Object Notation) - Modern structured format supported in recent SQL Server versions.

-- Difference between NULL and NOT NULL in SQL Server:

-- NULL:
-- - Represents missing, unknown, or undefined data.
-- - A column defined as NULL can store empty values.
-- - NULL is not equal to zero or an empty string.
-- - Example: Age INT NULL -- Allows storing no value for Age.

-- NOT NULL:
-- - Ensures that a column must always have a value.
-- - A column defined as NOT NULL cannot contain NULL values.
-- - Helps maintain data integrity by enforcing required fields.
-- - Example: Name VARCHAR(100) NOT NULL -- Requires Name to always have a value.

-- This query deletes all records from the Orders table where the order date is before January 1, 2023 this is function of commment

-- The IDENTITY column in SQL Server auto-generates unique numbers for each new row, 
-- usually used for primary keys to ensure uniqueness without manual input.


-- Differences between PRIMARY KEY and UNIQUE KEY:

-- PRIMARY KEY:
-- - Uniquely identifies each row in a table.
-- - Does not allow NULL values.
-- - Only one PRIMARY KEY is allowed per table.

-- UNIQUE KEY:
-- - Ensures all values in a column (or group of columns) are unique.
-- - Allows one NULL value (depending on SQL Server behavior).
-- - Multiple UNIQUE constraints can exist in one table.


-- FOREIGN KEY constraints ensure a column’s values in one table match values in another table, 
-- enforcing relationships and data consistency.

-- Example:
-- FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)

-- COALESCE and ISNULL are used to handle NULL values by returning alternative values.

-- ISNULL(expression, replacement):
-- - Replaces NULL with the specified replacement value.
-- - Limited to only two arguments.
-- Example: ISNULL(Price, 0)

-- COALESCE(expression1, expression2, ..., expressionN):
-- - Returns the first non-NULL value from the list of expressions.
-- - Supports multiple arguments and is more flexible.
-- Example: COALESCE(Price, DiscountPrice, 0)

-- Both are used to prevent NULLs from affecting calculations or displaying as blank.



create table Products (ProductID int primary key , ProductName  varchar(50) , Price decimal(10 ,2 ))

insert into Products values(1 , 'Puma boots' , 2000) , (2 , 'Nike boots' , 4000) , (3 , 'Adidas boots' , 4000)

alter table Products
add CategoryID int

alter table Products
add constraint UniqueProductsName unique(ProductName)
select * from Products


create table Categories (CategoryID  int primary key , CategoryName varchar(50) unique )

select * from Products

bulk insert Products
from 'C:\Users\User\Desktop\ProductID,ProductName,Price,Categor.txt'
with (fieldterminator= ',' ,  rowterminator = '/n' ,  firstrow = 2)


aLTER tABLE Products
aDD cONSTRAINT FK_Category
fOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

alter table Products
add constraint chk_price check(price > 0)

alter table Products 
add Stock int not null default 50

create table Customers(ID int primary key , Age int check(Age > = 18))

create table IdentityTable (ID int identity(100 ,10))

create table CombinationPrimaryKey(OrderID int , CategoryID int , primary key(OrderID , CategoryID))

create table Employees(EmpID int primary key , Email varchar(50) unique)
