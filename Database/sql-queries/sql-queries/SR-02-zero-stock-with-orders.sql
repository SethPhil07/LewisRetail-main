USE LewisRetail;
GO

SELECT i.ProductID, i.StoreID, i.QuantityOnHand, COUNT(o.OrderID) AS Orders
FROM Inventory i
JOIN Orders o 
    ON i.ProductID = o.ProductID AND i.StoreID = o.StoreID
WHERE i.QuantityOnHand = 0
GROUP BY i.ProductID, i.StoreID, i.QuantityOnHand;