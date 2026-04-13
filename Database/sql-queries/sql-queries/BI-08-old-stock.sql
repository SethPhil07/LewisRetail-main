USE LewisRetail;
GO

SELECT 
    p.SKU,
    i.LastStockUpdate
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
WHERE i.LastStockUpdate < DATEADD(DAY, -5, GETDATE());