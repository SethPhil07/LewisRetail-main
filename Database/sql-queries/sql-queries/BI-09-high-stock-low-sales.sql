USE LewisRetail;

-- High stock but low sales
SELECT 
    p.SKU,
    i.QuantityOnHand,
    ISNULL(SUM(o.Quantity), 0) AS Sold
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
LEFT JOIN Orders o ON i.ProductID = o.ProductID
GROUP BY p.SKU, i.QuantityOnHand
ORDER BY Sold ASC;