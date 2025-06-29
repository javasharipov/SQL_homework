select o.orderid, c.customername, o.orderdate
from orders o
join customers c on o.customerid = c.customerid
where year(o.orderdate) > 2022;


select e.employeename, d.departmentname
from employees e
join departments d on e.departmentid = d.departmentid
where d.departmentname in ('sales', 'marketing');


select d.departmentname, max(e.salary) as maxsalary
from employees e
join departments d on e.departmentid = d.departmentid
group by d.departmentname;


select c.customername, o.orderid, o.orderdate
from customers c
join orders o on c.customerid = o.customerid
where c.country = 'usa' and year(o.orderdate) = 2023;
	

select c.customername, count(o.orderid) as totalorders
from customers c
left join orders o on c.customerid = o.customerid
group by c.customername;


select p.productname, s.suppliername
from products p
join suppliers s on p.supplierid = s.supplierid
where s.suppliername in ('gadget supplies', 'clothing mart');



select c.customername, max(o.orderdate) as mostrecentorderdate
from customers c
left join orders o on c.customerid = o.customerid
group by c.customername;


select c.customername, o.totalamount as ordertotal
from customers c
join orders o on c.customerid = o.customerid
where o.totalamount > 500;


select p.productname, s.saledate, s.saleamount
from sales s
join products p on s.productid = p.productid
where year(s.saledate) = 2022 or s.saleamount > 400;



select e.employeename, d.departmentname, e.salary
from employees e
join departments d on e.departmentid = d.departmentid
where d.departmentname = 'hr' and e.salary > 60000;




select p.productname, s.saledate, p.stockquantity
from sales s
join products p on s.productid = p.productid
where year(s.saledate) = 2023 and p.stockquantity > 100;



select e.employeename, d.departmentname, e.hiredate
from employees e
join departments d on e.departmentid = d.departmentid
where d.departmentname = 'sales' or year(e.hiredate) > 2020;



select c.customername, o.orderid, c.address, o.orderdate
from customers c
join orders o on c.customerid = o.customerid
where c.country = 'usa' and c.address like '[0-9][0-9][0-9][0-9]%';



select c.categoryname, count(p.productid) as productcount
from categories c
join products p on p.categoryid = c.categoryid
group by c.categoryname;
