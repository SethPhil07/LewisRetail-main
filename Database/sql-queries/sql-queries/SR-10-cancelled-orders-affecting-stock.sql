USE LewisRetail;
GO

SELECT *
FROM Orders
WHERE OrderStatus = 'Cancelled';