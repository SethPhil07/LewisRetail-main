USE LewisRetail;
GO

SELECT o.*
FROM Orders o
JOIN Inventory i 
ON o.ProductID = i.ProductID AND o.StoreID = i.StoreID
WHERE o.CreatedTimestamp > i.LastStockUpdate;