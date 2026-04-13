USE LewisRetail;
GO

SELECT *
FROM Inventory
WHERE ReorderLevel IS NULL;