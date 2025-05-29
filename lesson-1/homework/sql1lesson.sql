-- Q1. Define the following terms: data, database, relational database, and table.
-- Answer -- Data is information we collect to understand or learn something  , structured data is organized clearly in tables, like in Excel or a database , we collect and save the datas on the database  , when the databases have a correlation between them they would be relational database  , a table is a way to organize data in rows and columns.
/*
Q2 . List five key features of SQL Server.
Answer 
1 It stores large amounts of data in a structured way using tables, so you can easily add, update, delete, and find information.
2 It protects data with user logins, permissions, and encryption to make sure only the right people can access or change the data.
3 It can automatically back up your data and help you recover it if something goes wrong.
4 You can use a language called T-SQL to ask questions about your data (called "queries") and get results quickly.
5 It has built-in tools to help make your database run faster and more efficiently, especially when handling big data.

Q3  . What are the different authentication modes available when connecting to SQL Server?
Answer 
there is a lot of authentication modes are available such as Windows authentication and SQL server authentication

Q4 . Create a new database in SSMS named SchoolDB.
Answer
*/
create database  SchoolDB

-- Q5 . Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
create table  Students (StudentID int primary key , Name varchar(50) , age int)

/*  Q6 . Describe the differences between SQL Server, SSMS, and SQL.
SQL Server is created by Microsoft and its name is remaining us it is server for Sql 
SSMS is sql server management studion , its function just display us the sql server which means it makes an interface for sql server it also make easier to work with sql server
Sql is structured query language it shows sql is just language for datas 

Q7 . Research and explain the different SQL commands: DQL, DML, DDL, 
Answer 
DQL- data query language  used to fetch/query data from the database.
DML - data manipulation language used to manipulate existing data in the database.
DDL - data definition language used to define or modify database structure 
DCL - data control language deals with permissions and access control.
TCL - transaction control language controls transactions, which are groups of SQL statements executed as a unit.
*/
-- Q8 . Write a query to insert three records into the Students table.
insert into Students(StudentID , Name , age) values(1, 'John' , 22  ),
(2 , 'Mike' , 24) , 
(3 , 'Alvarez' , 19)
--Q9 . Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit)


    

 
