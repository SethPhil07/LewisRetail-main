USE LewisRetail;
GO

SELECT TOP 1000 
    o.OrderID,
    o.VATAmount,
    (o.UnitPrice * o.Quantity - o.DiscountAmount) * (v.Percentage / 100) AS ExpectedVAT
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard' AND v.IsActive = 1
WHERE o.VATAmount <> (o.UnitPrice * o.Quantity - o.DiscountAmount) * (v.Percentage / 100)
ORDER BY o.CreatedTimestamp DESC;