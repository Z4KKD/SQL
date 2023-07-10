SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;

SELECT column1, column2 FROM table1
EXCEPT
SELECT column1, column2 FROM table2;

INSERT INTO customers (customer_name, email, phone)
VALUES ('John Doe', 'john@example.com', '123-456-7890');

UPDATE customers
SET city = 'New York', phone = '555-1234'
WHERE customer_id = 1;

