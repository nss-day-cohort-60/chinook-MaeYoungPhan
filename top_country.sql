SELECT 
Country,
MAX(TotalSales) AS MaxSales
FROM (
    SELECT
    DISTINCT 
    BillingCountry AS Country, 
    ROUND(SUM(Total), 2) AS TotalSales
    FROM Invoice
    GROUP BY Country)