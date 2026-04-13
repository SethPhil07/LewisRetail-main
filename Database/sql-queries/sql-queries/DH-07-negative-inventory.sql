USE LewisRetail;
GO

SELECT *
FROM Inventory
WHERE QuantityOnHand < 0;