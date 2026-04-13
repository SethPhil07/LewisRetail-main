USE LewisRetail;

-- Stock below reorder level
SELECT ProductID, StoreID, QuantityOnHand, ReorderLevel
FROM Inventory
WHERE QuantityOnHand < ReorderLevel;