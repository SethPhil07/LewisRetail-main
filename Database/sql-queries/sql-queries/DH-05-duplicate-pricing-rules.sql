USE LewisRetail;
GO

SELECT ProductID, CustomerTier, COUNT(*) AS CountRules
FROM PricingRules
GROUP BY ProductID, CustomerTier
HAVING COUNT(*) > 1;