USE LewisRetail;
GO

SELECT TOP 1000 o.*
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard'
WHERE o.TotalAmount > 50000
ORDER BY o.CreatedTimestamp DESC;