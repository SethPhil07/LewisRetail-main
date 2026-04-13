USE LewisRetail;
GO

SELECT Category, COUNT(*) AS CountRates
FROM VAT_Rates
WHERE IsActive = 1
GROUP BY Category
HAVING COUNT(*) > 1;