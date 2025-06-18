select Category , sum(StockQuantity) as TotalProducts from Products
group by Category

select Category , avg(Price) as AvgPrice from Products
where Category = 'Electronics'
group by Category

select FirstName , City from Customers
where City like 'L%'

select ProductName from Products
where ProductName like '%er'

select FirstName , Country from Customers
where Country like '%a'


select	ProductName , Price from Products
where Price =(select max(Price) from Products)

select ProductName ,  
case when StockQuantity < 30 then 'Low' else 'Suffient' end   
from Products

select Country , count(*) as TotalCustomers   from Customers
group by Country

select  max(Quantity) MaxQ , min(Quantity) MinQ from Orders

select OrderDate , avg(Quantity) from Orders
group by OrderDate

select ProductName , 
case when Price < 100 then 'Low' 
when Price >= 100 and Price < 500 then 'Mid'
else 'High' end
from Products

select ProductID, sum(SaleAmount) as Saleamout from Sales
group by ProductID

select ProductName from Products
where ProductName like '%oo%'


select top 3 CustomerID , sum(TotalAmount) as totalSpent
from Invoices
group by CustomerID
order by totalSpent desc
