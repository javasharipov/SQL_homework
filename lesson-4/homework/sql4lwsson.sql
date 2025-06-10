select top 5 * from Employees

select distinct Category from Products

select * from Products
where price > 100

select * from Customers
where FirstName like 'A%'


select * from Products 
order by  Price asc

select * from Employees
where Salary >= 6000 and DepartmentName = 'HR'

select isnull (Email , 'noemail@example.com') from Employees

select * from Products
where Price >= 50 and Price <= 100

select distinct Category , ProductName from Products

select * from Products
order by ProductName desc

select top 10 * from Products
order by Price desc

select coalesce(FirstName , LastName ) as NonNullValues from Employees

select distinct Category , Price from Products

select * from Employees
where Age between 30 and 40 or DepartmentName = 'Marketing'

SELECT *
FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT *
FROM Products
WHERE Price <= 1000 AND StockQuantity > 50
ORDER BY StockQuantity ASC;

SELECT *
FROM Products
WHERE ProductName LIKE '%e%';

SELECT *
FROM Employees
WHERE DepartmentName IN ('HR', 'IT', 'Finance');

SELECT *
FROM Customers
ORDER BY City ASC, PostalCode DESC;	

SELECT TOP(5) ProductName, SaleAmount
FROM Products
ORDER BY SaleAmount DESC;	

SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;

SELECT *
FROM Employees
WHERE Age < 30 AND DepartmentName IN ('HR', 'IT');


SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE DepartmentName = 'Sales'
);
