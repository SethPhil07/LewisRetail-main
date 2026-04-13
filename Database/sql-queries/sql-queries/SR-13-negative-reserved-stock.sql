USE LewisRetail;
GO

SELECT ProductID, StoreID, QuantityReserved
FROM Inventory
WHERE QuantityReserved < 0;