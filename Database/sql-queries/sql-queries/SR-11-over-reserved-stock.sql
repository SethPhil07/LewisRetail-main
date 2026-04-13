USE LewisRetail;
GO

SELECT *
FROM Inventory
WHERE QuantityReserved > QuantityOnHand;