USE LewisRetail;
GO

SELECT 
    p.SKU,
    ISNULL(SUM(o.Quantity), 0) AS TotalSold
FROM Products p
LEFT JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.SKU
ORDER BY TotalSold ASC;