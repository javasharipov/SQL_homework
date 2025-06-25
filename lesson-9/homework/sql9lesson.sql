
SELECT p.ProductName, s.SupplierName
FROM Products p
CROSS JOIN Suppliers s;

SELECT d.DepartmentName, e.EmployeeName
FROM Departments d
CROSS JOIN Employees e;

SELECT s.SupplierName, p.ProductName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

SELECT c.CustomerName, o.OrderID
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT s.StudentName, c.CourseName
FROM Students s
CROSS JOIN Courses c;


SELECT p.ProductName, o.OrderID
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID;


SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;


SELECT s.StudentName, e.CourseID
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID;


SELECT o.OrderID, p.PaymentID
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;


SELECT o.OrderID, p.ProductName, p.Price
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE p.Price > 100;

SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID <> d.DepartmentID;

SELECT o.OrderID, p.ProductName, o.Quantity, p.StockQuantity
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > p.StockQuantity;


SELECT c.CustomerName, s.ProductID
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE s.Amount >= 500;


SELECT s.StudentName, c.CourseName
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;


SELECT p.ProductName, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName LIKE '%Tech%';


SELECT o.OrderID, p.PaymentAmount, o.TotalAmount
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentAmount < o.TotalAmount;


SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;



SELECT p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Electronics', 'Furniture');



SELECT s.SaleID, c.CustomerName
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE c.Country = 'USA';




SELECT o.OrderID, c.CustomerName, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany' AND o.TotalAmount > 100;



SELECT e1.EmployeeName AS Employee1, e2.EmployeeName AS Employee2
FROM Employees e1
JOIN Employees e2 ON e1.EmployeeID < e2.EmployeeID AND e1.DepartmentID <> e2.DepartmentID;


SELECT p.PaymentID, o.OrderID, p.AmountPaid, (o.Quantity * pr.Price) AS ExpectedAmount
FROM Payments p
JOIN Orders o ON p.OrderID = o.OrderID
JOIN Products pr ON o.ProductID = pr.ProductID
WHERE p.AmountPaid <> (o.Quantity * pr.Price);


SELECT s.StudentName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID IS NULL;
