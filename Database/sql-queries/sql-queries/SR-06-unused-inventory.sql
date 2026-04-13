USE LewisRetail;
GO

SELECT i.*
FROM Inventory i
LEFT JOIN Orders o 
    ON i.ProductID = o.ProductID AND i.StoreID = o.StoreID
WHERE o.OrderID IS NULL;