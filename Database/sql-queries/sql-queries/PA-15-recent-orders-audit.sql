USE LewisRetail;
GO

SELECT TOP 1000 o.OrderID, p.SKU, o.TotalAmount
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard'
ORDER BY o.CreatedTimestamp DESC;