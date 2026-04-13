USE LewisRetail;
GO

SELECT 
    o.StoreID,
    SUM(o.TotalAmount) AS StoreRevenue
FROM Orders o
GROUP BY o.StoreID
ORDER BY StoreRevenue DESC;