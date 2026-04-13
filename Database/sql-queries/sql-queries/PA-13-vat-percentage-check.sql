USE LewisRetail;
GO

SELECT TOP 1000 o.OrderID, v.Percentage
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard'
WHERE v.Percentage <> 15
ORDER BY o.CreatedTimestamp DESC;