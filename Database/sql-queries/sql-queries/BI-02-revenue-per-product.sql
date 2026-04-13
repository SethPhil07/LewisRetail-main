USE LewisRetail;
GO

SELECT 
    p.SKU,
    SUM(o.TotalAmount) AS Revenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.SKU
ORDER BY Revenue DESC;