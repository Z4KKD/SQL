SELECT customers.customer_name, orders.order_date
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT customers.customer_name, orders.order_date
FROM customers
FULL JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT EmployeeID, EmployeeName
FROM EmployeeTable
FOR XML AUTO, ROOT('Employees');

SELECT JSON_VALUE(JSONColumn, 'JSONPathExpression') AS ColumnAlias
FROM TableName;

SELECT EmployeeID, EmployeeName
FROM EmployeeTable
FOR JSON AUTO;
