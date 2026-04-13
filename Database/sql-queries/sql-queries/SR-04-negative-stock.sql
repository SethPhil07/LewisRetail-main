USE LewisRetail;
GO

SELECT ProductID, StoreID, QuantityOnHand
FROM Inventory
WHERE QuantityOnHand < 0;