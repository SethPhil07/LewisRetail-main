USE LewisRetail;
GO

SELECT o.ProductID, o.StoreID, SUM(o.Quantity) AS OrderedQty
FROM Orders o
GROUP BY o.ProductID, o.StoreID
HAVING SUM(o.Quantity) > (
    SELECT ISNULL(SUM(i.QuantityOnHand),0)
    FROM Inventory i
    WHERE i.ProductID = o.ProductID 
      AND i.StoreID = o.StoreID
);