USE LewisRetail;
GO

SELECT 
    p.SKU,
    i.QuantityOnHand
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
LEFT JOIN Orders o ON i.ProductID = o.ProductID
WHERE o.OrderID IS NULL;