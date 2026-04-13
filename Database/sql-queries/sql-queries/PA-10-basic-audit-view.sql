USE LewisRetail;
GO

SELECT TOP 1000 
    o.OrderID,
    p.SKU,
    o.Quantity,
    o.UnitPrice,
    o.DiscountAmount,
    o.VATAmount,
    o.TotalAmount
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard' AND v.IsActive = 1
ORDER BY o.CreatedTimestamp DESC;