USE LewisRetail;
GO

SELECT TOP 15 
    p.SKU,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.SKU
ORDER BY TotalRevenue DESC;