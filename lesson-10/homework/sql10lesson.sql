

select e.Name , e.Salary, d.DepartmentName 
from Employees e
Join Departments d on e.EmployeeID = d.DepartmentID
where Salary > 50000


select c.FirstName , c.LastName , o.OrderDate from Customers c
Join Orders o on c.CustomerID = o.CustomerID
where Year(o.OrderDate) = 2023


select e.Name , d.DepartmentName from Employees e
Left Join Departments d on e.DepartmentID = d.DepartmentID



select s.SupplierName , p.ProductName from Suppliers s
left Join Products p on p.SupplierID = s.SupplierID



select o.OrderID , o.OrderDate , p.OrderId , p.Amount  from Orders o
full join Payments p on o.OrderID = p.OrderID


select  e1.Name as EmpName , e2.Name as ManagerName from Employees e1
join Employees e2 on e1.ManagerID = e2.EmployeeID


select s.Name from Enrollments e
inner join Students s on e.StudentID = s.StudentID
inner join Courses c on e.CourseID = c.CourseID
where c.CourseName = 'Math 101'

select c.FirstName , c.LastName , o.Quantity  from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where Quantity > 3

select  e.Name , d.DepartmentName from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID
where DepartmentName = 'Human Resources'



select d.DepartmentName from Departments d
join Employees e on d.DepartmentID = e.DepartmentID
group by d.DepartmentName 
having count(e.DepartmentID) > 5



select p.ProductID , p.ProductName from Products p
inner join Sales s on p.ProductID = s.ProductID
where s.ProductID is null




select distinct c.FirstName , c.LastName , o.Quantity from Customers c
inner join Orders o on c.CustomerID = o.CustomerID	
where Quantity >= 1



select e.Name , d.DepartmentName  from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID


select e1.Name as Emp1 , e2.Name as Emp2 , e1.ManagerID from Employees e1
join Employees e2 on e1.ManagerID = e2.ManagerID and e1.EmployeeID < e2.EmployeeID




select o.orderID , o.OrderDate , c.FirstName , c.LastName from Orders o
inner join Customers c on o.CustomerID = c.CustomerID
where YEAR(OrderDate) = 2022


select e.Name , e.Salary , d.DepartmentName  from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID
where DepartmentName = 'Sales' and Salary > 60000



select o.OrderID , o.OrderDate , p.PaymentDate , p.Amount from Orders o
inner join Payments p on o.OrderID = p.OrderID



select o.ProductID  , p.ProductName from Products p
left join Orders o on p.ProductID = o.ProductID
where Quantity is null




select o.OrderID , o.OrderDate from Orders o
left join Payments p on o.OrderID = p.OrderID 
where p.OrderID is null and YEAR(o.OrderDate) < 2020



select p.ProductID , p.ProductName from Products p
left join Categories c on p.Category = c.CategoryName
where c.CategoryID is null


select e1.Name , e2.Name   ,e1.ManagerID , e1.Salary from Employees e1
join Employees e2 on e1.ManagerID = e2.ManagerID and e1.EmployeeID <> e2.EmployeeID
where e1.Salary > 60000







