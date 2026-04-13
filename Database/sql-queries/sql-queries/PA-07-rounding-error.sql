USE LewisRetail;

-- Rounding issues
SELECT TOP 1000 *
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN VAT_Rates v ON v.Category = 'Standard' AND v.IsActive = 1
WHERE ABS(o.TotalAmount - 
(o.UnitPrice * o.Quantity - o.DiscountAmount + o.VATAmount)) > 0.01
ORDER BY o.CreatedTimestamp DESC;