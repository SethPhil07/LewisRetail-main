USE LewisRetail;
GO

SELECT *
FROM Customers
WHERE LEN(Phone) < 10 
   OR Phone LIKE '%[^0-9]%';