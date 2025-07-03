select * , CONCAT(EMPLOYEE_ID , + '-' + FIRST_NAME , + ' ' + LAST_NAME) from Employees

update Employees
set PHONE_NUMBER =  REPLACE( PHONE_NUMBER , 124  , 999)

select *  , LEFT(FIRST_NAME  , 1) + RIGHT(FIRST_NAME,2)    from Employees
where FIRST_NAME like 'A%'  or FIRST_NAME like 'J%' or FIRST_NAME like 'M%'


SELECT 
    first_name AS [First Name],
    LEN(first_name) AS [Name Length]
FROM 
    employees
WHERE 
    LEFT(first_name, 1) IN ('A', 'J', 'M')
ORDER BY 
    first_name;


SELECT movie_id, description
FROM cinema
WHERE 
    RIGHT(movie_id, 1) IN ('1','3','5','7','9')
    AND description NOT LIKE '%boring%';

SELECT 
    COALESCE(Col1, Col2, Col3, Col4) AS FirstNonNull
FROM Person;



SELECT
    SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) - 1) AS FirstName,
    SUBSTRING(
        FullName,
        CHARINDEX(' ', FullName) + 1,
        CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1) - CHARINDEX(' ', FullName) - 1
    ) AS MiddleName,
    RIGHT(FullName, LEN(FullName) - CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1)) AS LastName
FROM Students;

SELECT *
FROM Orders
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE delivery_state = 'CA'
)
AND delivery_state = 'TX';


SELECT *
FROM Orders
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE delivery_state = 'CA'
)
AND delivery_state = 'TX';


SELECT *
FROM employees
WHERE 
    LEN(first_name + last_name) - LEN(REPLACE(first_name + last_name, 'a', '')) >= 3;


	SELECT job_description,
       MAX(experience_years) AS Most_Experienced,
       MIN(experience_years) AS Least_Experienced
FROM Personal
WHERE job_title = 'Spaceman'
GROUP BY job_description;
