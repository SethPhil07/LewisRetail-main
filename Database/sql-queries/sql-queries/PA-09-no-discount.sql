USE LewisRetail;
GO

SELECT TOP 1000 *
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard' AND v.IsActive = 1
WHERE o.DiscountAmount = 0
ORDER BY o.CreatedTimestamp DESC;