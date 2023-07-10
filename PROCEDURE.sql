CREATE PROCEDURE GetCustomerOrders
    @customerId INT
AS
BEGIN
    SELECT OrderID, OrderDate, TotalAmount
    FROM Orders
    WHERE CustomerID = @customerId;
END;

EXEC GetCustomerOrders @customerId = 123;

ALTER PROCEDURE GetCustomerOrders
    @customerId INT,
    @orderStatus VARCHAR(50)
AS
BEGIN
    SELECT OrderID, OrderDate, TotalAmount
    FROM Orders
    WHERE CustomerID = @customerId
      AND OrderStatus = @orderStatus;
END;

