USE LewisRetail;
GO

SELECT ProductID, StoreID, Quantity
FROM Orders
WHERE Quantity > 3;