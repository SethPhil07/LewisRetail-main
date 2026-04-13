--The FLOAT and REAL data types are approximate numeric data types, which means they can introduce rounding errors and precision issues when performing calculations. This can lead to inaccurate results, especially when dealing with financial data or pricing information.
--On the other hand, DECIMAL and NUMERIC data types are exact numeric data types, which means they can store exact values without introducing rounding errors.
--In the context of a retail database, it is crucial to maintain accurate pricing information for products. Using FLOAT or REAL data types for price columns can lead to discrepancies in calculations, such as total sales or discounts, which can affect financial reporting and decision-making. Therefore, it is recommended to use DECIMAL or NUMERIC data types for price columns to ensure precision and accuracy in financial data.
--To change the data type of the price column in the products table to DECIMAL, you can use the following SQL query:
--The correct data type would be such as:
--DECIMAL(10,2)
--This means that the price can have up to 10 digits in total, with 2 digits after the decimal point, allowing for accurate representation of prices up to 99999999.99.
--Simulating FLOAT or DECIMAL:
USE LewisRetail;
GO
SELECT 
    SUM(CAST(UnitPrice * Quantity AS FLOAT)) AS Float_Total,
    SUM(CAST(UnitPrice * Quantity AS DECIMAL(10,2))) AS Decimal_Total,
    
    -- Difference (financial loss/gain)
    SUM(CAST(UnitPrice * Quantity AS FLOAT)) 
    - SUM(CAST(UnitPrice * Quantity AS DECIMAL(10,2))) AS Difference

FROM Orders;
-- In this example, we are calculating the total sales using both FLOAT and DECIMAL data types. The Difference column will show the discrepancy between the two calculations, which can highlight the potential financial loss or gain due to rounding errors when using FLOAT.

--The FLOAT data type can cause rounding errors because it stores approximate values rather than exact decimals. In high-volume retail systems, these small inaccuracies accumulate over many transactions, leading to financial discrepancies. Using DECIMAL ensures precise monetary calculations and prevents such errors.