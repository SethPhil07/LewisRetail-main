USE LewisRetail;
GO

SELECT TOP 10 
    p.SKU,
    SUM(o.Quantity) AS TotalSold
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.SKU
ORDER BY TotalSold DESC;