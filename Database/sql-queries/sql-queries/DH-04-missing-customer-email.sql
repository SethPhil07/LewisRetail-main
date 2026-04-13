USE LewisRetail;
GO

SELECT *
FROM Customers
WHERE Email IS NULL OR Email = '';