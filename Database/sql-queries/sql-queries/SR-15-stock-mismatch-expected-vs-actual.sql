USE LewisRetail;
GO

SELECT 
    p.SKU,
    SUM(i.QuantityOnHand) AS Actual_Stock,
    SUM(i.QuantityOnHand + o.Quantity) AS Expected_Stock
FROM Products p
JOIN Inventory i 
ON p.ProductID = i.ProductID
LEFT JOIN Orders o 
ON p.ProductID = o.ProductID AND i.StoreID = o.StoreID
GROUP BY p.SKU
HAVING SUM(i.QuantityOnHand) <> SUM(i.QuantityOnHand + o.Quantity);