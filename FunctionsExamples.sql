SELECT DepartmentID, AVG(Salary) AS average_salary
FROM Employees
GROUP BY DepartmentID;

SELECT REPLACE(Fullname, 'Dr.', 'Mr./Ms.') AS modified_name
FROM Employees;

SELECT UPPER(Name) AS modified_name
FROM Employees;

SELECT LOWER(Name) AS modified_name
FROM Employees;

SELECT LENGTH(Name) AS name_length
FROM Employees;

SELECT column_name
FROM table_name
WHERE column_name LIKE '_A%';


SELECT CEILING(4.7) AS rounded_value;

SELECT ROUND(4.7) AS rounded_value;

SELECT FLOOR(4.7) AS rounded_value;

SELECT ABS(-4.7) AS absolute_value;

SELECT SQRT(16) AS square_root;

SELECT COALESCE(column_name, 'N/A') AS value
FROM table_name;

SELECT NULLIF(column1, column2) AS result
FROM table_name;

SELECT column_name,
       CASE
           WHEN column_name = 'Value1' THEN 'Result1'
           WHEN column_name = 'Value2' THEN 'Result2'
           ELSE 'Result3'
       END AS result
FROM table_name;

SELECT REVERSE(column_name) AS reversed_string
FROM table_name;
