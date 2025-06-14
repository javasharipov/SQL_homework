select min(Price) from Products

select max(Salary) from Employees

select  count(*) as NumberOfRows from Customers

select Category , count(*) from Products
group by Category
having count(*) > 1


select sum(SaleAmount) FROM Sales
where ProductID = 7;

select  avg(age) from Employees

select DepartmentName , count(*) from Employees
group by DepartmentName
having count(*) > 1

select Category , min(Price) as MinPrice , max(Price) as MaxPrice from Products
group by Category

select CustomerID , sum(SaleAmount) from Sales
group by CustomerID

select DepartmentName , count(*)
from Employees
group by DepartmentName
having count(*) > 5

select ProductID , sum(SaleAmount) as TotalSale , avg(SaleAmount) as AverageSale  from Sales
group by ProductID

select  count(*) as HRemloyees from Employees
where DepartmentName = 'HR'

select DepartmentName , max(Salary) MaxSalary , min(Salary) MinSalary from Employees
group by DepartmentName

select DepartmentName, 
count(*) as TotalEmp , 
avg(Salary) AvgSalary 
from Employees
group by DepartmentName

select Category , avg(Price) 
from Products
where Price > 400
group by Category

select SaleDate , avg(SaleAmount) from Sales
group by SaleDate


select CustomerId , sum(Quantity) as TotalOrders from Orders
group by CustomerID
having sum(Quantity) >= 3

select DepartmentName , avg(Salary) from Employees
group by DepartmentName
having avg(Salary) >  60000

select Category , avg(Price) from Products
group by Category
having avg(Price) > 150

select CustomerID , sum(SaleAmount) from Sales
group by CustomerID
having sum(SaleAmount) > 1500

select DepartmentName , avg(Salary) from Employees
group by DepartmentName
having avg(Salary) > 65000

select OrderDate , max(Quantity) MaxQuantity , min(Quantity) MinQuantity from Orders
group by year(OrderDate)
