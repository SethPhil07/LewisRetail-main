USE LewisRetail;
GO

SELECT TOP 1000 *
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard' AND v.IsActive = 1
WHERE o.VATAmount > o.TotalAmount
ORDER BY o.CreatedTimestamp DESC;