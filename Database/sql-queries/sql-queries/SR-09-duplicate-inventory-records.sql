USE LewisRetail;
GO

SELECT ProductID, StoreID, 
COUNT(*) AS CountRecords
FROM Inventory
GROUP BY ProductID, StoreID
HAVING COUNT(*) > 1;