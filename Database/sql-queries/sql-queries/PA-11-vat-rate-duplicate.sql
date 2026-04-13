USE LewisRetail;
GO

SELECT v.Category, COUNT(*) AS CountRates
FROM VAT_Rates v
JOIN Orders o ON 1=1
JOIN Products p ON o.ProductID = p.ProductID
WHERE v.IsActive = 1
GROUP BY v.Category
HAVING COUNT(*) > 1;