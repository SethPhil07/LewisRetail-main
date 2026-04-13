USE LewisRetail;
GO

SELECT 
    p.SKU,
    i.QuantityOnHand,
    i.ReorderLevel
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
WHERE i.QuantityOnHand < i.ReorderLevel;