CREATE FUNCTION CalculateOrderTotal
    (@orderID INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total DECIMAL(10, 2);

    SELECT @total = SUM(OrderAmount)
    FROM OrderItems
    WHERE OrderID = @orderID;

    RETURN @total;
END;

SELECT OrderID, dbo.CalculateOrderTotal(OrderID) AS OrderTotal
FROM Orders;


ALTER FUNCTION CalculateOrderTotal
    (@orderID INT,
     @discount DECIMAL(5, 2))
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total DECIMAL(10, 2);

    SELECT @total = SUM(OrderAmount) * (1 - @discount)
    FROM OrderItems
    WHERE OrderID = @orderID;

    RETURN @total;
END;
